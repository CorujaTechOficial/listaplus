import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/domain/entities/chat_message.dart';
import 'package:shopping_list/theme/page_transitions.dart';
import 'package:shopping_list/app/ai/screens/chat_screen.dart';

class ChatHistoryScreen extends ConsumerStatefulWidget {
  const ChatHistoryScreen({super.key});

  @override
  ConsumerState<ChatHistoryScreen> createState() => _ChatHistoryScreenState();
}

class _ChatHistoryScreenState extends ConsumerState<ChatHistoryScreen> {
  final _searchController = TextEditingController();
  String _searchQuery = '';
  Map<String, List<ChatMessage>> _allMessagesMap = {};
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadAllMessages();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _loadAllMessages() async {
    try {
      final firestoreService = ref.read(firestoreServiceProvider);
      final lists = ref.read(shoppingListsProvider).value ?? [];

      final Map<String, List<ChatMessage>> tempMap = {};

      final globalMessages = await firestoreService.loadChatMessages(null);
      if (globalMessages.isNotEmpty) {
        tempMap[''] = globalMessages;
      }

      for (final list in lists) {
        final msgs = await firestoreService.loadChatMessages(list.id);
        if (msgs.isNotEmpty) {
          tempMap[list.id] = msgs;
        }
      }

      if (mounted) {
        setState(() {
          _allMessagesMap = tempMap;
          _isLoading = false;
        });
      }
    } on Exception catch (e) {
      debugPrint('Error loading chat history: $e');
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  String _formatDate(DateTime dt) {
    return '${dt.day.toString().padLeft(2, '0')}/${dt.month.toString().padLeft(2, '0')}/${dt.year}';
  }

  String _formatTime(DateTime dt) {
    return '${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    final isPt = Localizations.localeOf(context).languageCode == 'pt';
    final theme = Theme.of(context);
    final lists = ref.watch(shoppingListsProvider).value ?? [];

    final listNames = {
      for (final l in lists) l.id: l.name,
    };

    final filteredGroups = <String, List<ChatMessage>>{};
    _allMessagesMap.forEach((listId, messages) {
      final matching = messages.where((msg) {
        if (_searchQuery.isEmpty) {
          return true;
        }
        return msg.content.toLowerCase().contains(_searchQuery.toLowerCase());
      }).toList();

      if (matching.isNotEmpty) {
        filteredGroups[listId] = matching;
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(isPt ? 'Histórico do Assistente' : 'Assistant History'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: isPt ? 'Pesquisar mensagens...' : 'Search messages...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _searchQuery.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          setState(() {
                            _searchController.clear();
                            _searchQuery = '';
                          });
                        },
                      )
                    : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              ),
              onChanged: (val) {
                setState(() {
                  _searchQuery = val;
                });
              },
            ),
          ),
          Expanded(
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : filteredGroups.isEmpty
                    ? Center(
                        child: Text(
                          isPt
                              ? 'Nenhuma mensagem encontrada'
                              : 'No messages found',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant.withAlpha((0.7 * 255).toInt()),
                          ),
                        ),
                      )
                    : ListView.builder(
                        itemCount: filteredGroups.keys.length,
                        itemBuilder: (context, index) {
                          final listId = filteredGroups.keys.elementAt(index);
                          final listName = listId.isEmpty
                              ? (isPt ? 'Assistente Geral' : 'General Assistant')
                              : (listNames[listId] ?? (isPt ? 'Lista Excluída' : 'Deleted List'));
                          final messages = filteredGroups[listId]!;

                          messages.sort((a, b) => b.timestamp.compareTo(a.timestamp));

                          return Card(
                            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            child: ExpansionTile(
                              initiallyExpanded: true,
                              title: Text(
                                listName,
                                style: theme.textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                              subtitle: Text(
                                isPt
                                    ? '${messages.length} mensagens'
                                    : '${messages.length} messages',
                                style: theme.textTheme.bodySmall,
                              ),
                              childrenPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                              children: [
                                OutlinedButton.icon(
                                  icon: const Icon(Icons.chat_bubble_outline, size: 16),
                                  label: Text(
                                    isPt ? 'Abrir conversa' : 'Open conversation',
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      fadeSlideRoute<void>(
                                        ChatScreen(
                                          listId: listId.isEmpty ? null : listId,
                                          listName: listName,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(height: 8),
                                ...messages.map((msg) {
                                  final isUser = msg.role == 'user';
                                  final bubbleColor = isUser
                                      ? theme.colorScheme.primaryContainer.withAlpha((0.3 * 255).toInt())
                                      : theme.colorScheme.surfaceContainerHigh;

                                  return Container(
                                    margin: const EdgeInsets.symmetric(vertical: 4),
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: bubbleColor,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              isUser
                                                  ? (isPt ? 'Você' : 'You')
                                                  : (isPt ? 'Assistente' : 'Assistant'),
                                              style: theme.textTheme.labelSmall?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: isUser
                                                    ? theme.colorScheme.primary
                                                    : theme.colorScheme.secondary,
                                              ),
                                            ),
                                            Text(
                                              '${_formatDate(msg.timestamp)} ${_formatTime(msg.timestamp)}',
                                              style: theme.textTheme.labelSmall?.copyWith(
                                                color: theme.colorScheme.onSurfaceVariant.withAlpha((0.6 * 255).toInt()),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 4),
                                        Text(
                                          msg.content,
                                          style: theme.textTheme.bodyMedium,
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                                const SizedBox(height: 8),
                              ],
                            ),
                          );
                        },
                      ),
          ),
        ],
      ),
    );
  }
}
