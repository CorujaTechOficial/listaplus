import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/models/chat_message.dart';
import 'package:shopping_list/theme/page_transitions.dart';
import 'package:shopping_list/app/ai/screens/chat_screen.dart';
import 'package:shopping_list/app/ai/providers/chat_provider.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/chat_session_model.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ChatHistoryScreen extends ConsumerStatefulWidget {
  const ChatHistoryScreen({super.key});

  @override
  ConsumerState<ChatHistoryScreen> createState() => _ChatHistoryScreenState();
}

class _SessionWithMessages {
  _SessionWithMessages(this.session, this.messages);
  final ChatSessionModel session;
  final List<ChatMessage> messages;
}

class _ChatHistoryScreenState extends ConsumerState<ChatHistoryScreen> {
  final _searchController = TextEditingController();
  String _searchQuery = '';
  Map<String, List<_SessionWithMessages>> _allSessionsMap = {};
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
      if (firestoreService == null) {
        if (mounted) {
          setState(() {
            _isLoading = false;
          });
        }
        return;
      }
      final lists = ref.read(shoppingListsProvider).value ?? [];

      final Map<String, List<_SessionWithMessages>> tempMap = {};

      // Helper to load sessions and messages for a list
      Future<void> processList(String? listId, String key) async {
        final sessions = await firestoreService.loadChatSessions(listId);
        if (sessions.isNotEmpty) {
          final listSessions = <_SessionWithMessages>[];
          for (final session in sessions) {
            final msgs = await firestoreService.loadChatMessages(
              listId,
              sessionId: session.id,
            );
            if (msgs.isNotEmpty) {
              listSessions.add(_SessionWithMessages(session, msgs));
            }
          }
          if (listSessions.isNotEmpty) {
            tempMap[key] = listSessions;
          }
        }
      }

      await processList(null, '');
      for (final list in lists) {
        await processList(list.id, list.id);
      }

      if (mounted) {
        setState(() {
          _allSessionsMap = tempMap;
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
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final lists = ref.watch(shoppingListsProvider).value ?? [];

    final listNames = {for (final l in lists) l.id: l.name};

    final filteredGroups = <String, List<_SessionWithMessages>>{};
    _allSessionsMap.forEach((listId, sessions) {
      final matchingSessions = <_SessionWithMessages>[];
      for (final sWithM in sessions) {
        final matchingMsgs =
            sWithM.messages.where((msg) {
              if (_searchQuery.isEmpty) {
                return true;
              }
              return msg.content.toLowerCase().contains(
                _searchQuery.toLowerCase(),
              );
            }).toList();

        if (matchingMsgs.isNotEmpty) {
          matchingSessions.add(
            _SessionWithMessages(sWithM.session, matchingMsgs),
          );
        }
      }

      if (matchingSessions.isNotEmpty) {
        filteredGroups[listId] = matchingSessions;
      }
    });

    return Scaffold(
      appBar: AppBar(title: Text(l10n.assistantHistory)),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(Spacing.sm),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: l10n.searchMessages,
                  prefixIcon: const Icon(PhosphorIconsRegular.magnifyingGlass),
                  suffixIcon:
                      _searchQuery.isNotEmpty
                          ? IconButton(
                            icon: const Icon(PhosphorIconsRegular.x),
                            onPressed: () {
                              setState(() {
                                _searchController.clear();
                                _searchQuery = '';
                              });
                            },
                          )
                          : null,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(RadiusTokens.md),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: Spacing.md,
                    vertical: Spacing.xs,
                  ),
                ),
                onChanged: (val) {
                  setState(() {
                    _searchQuery = val;
                  });
                },
              ),
            ),
            Expanded(
              child:
                  _isLoading
                      ? const Center(child: CircularProgressIndicator())
                      : filteredGroups.isEmpty
                      ? Center(
                        child: Text(
                          l10n.noMessagesFound,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant.withAlpha(
                              (0.7 * 255).toInt(),
                            ),
                          ),
                        ),
                      )
                      : ListView.builder(
                        itemCount: filteredGroups.keys.length,
                        itemBuilder: (context, index) {
                          final listId = filteredGroups.keys.elementAt(index);
                          final listName =
                              listId.isEmpty
                                  ? l10n.generalAssistant
                                  : (listNames[listId] ?? l10n.deletedList);
                          final sessions = filteredGroups[listId]!;

                          return Card(
                            margin: const EdgeInsets.symmetric(
                              horizontal: Spacing.sm,
                              vertical: Spacing.xs,
                            ),
                            child: ExpansionTile(
                              initiallyExpanded: true,
                              title: Text(
                                listName,
                                style: theme.textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                              childrenPadding: const EdgeInsets.symmetric(
                                horizontal: Spacing.sm,
                                vertical: Spacing.xxs,
                              ),
                              children:
                                  sessions.map((sWithM) {
                                    return ExpansionTile(
                                      title: Text(
                                        sWithM.session.title ?? l10n.newChat,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      subtitle: Text(
                                        _formatDate(sWithM.session.updatedAt),
                                      ),
                                      leading: const Icon(
                                        PhosphorIconsRegular.chatCircle,
                                      ),
                                      children: [
                                        OutlinedButton.icon(
                                          icon: const Icon(
                                            PhosphorIconsRegular.chatCircle,
                                            size: 16,
                                          ),
                                          label: Text(l10n.openConversation),
                                          onPressed: () {
                                            ref
                                                .read(
                                                  activeChatSessionIdProvider(
                                                    listId.isEmpty
                                                        ? null
                                                        : listId,
                                                  ).notifier,
                                                )
                                                .set(sWithM.session.id);
                                            Navigator.push(
                                              context,
                                              fadeSlideRoute<void>(
                                                ChatScreen(
                                                  listId:
                                                      listId.isEmpty
                                                          ? null
                                                          : listId,
                                                  listName: listName,
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                        const SizedBox(height: Spacing.xs),
                                        ...sWithM.messages.map((msg) {
                                          final isUser = msg.role == 'user';
                                          final bubbleColor =
                                              isUser
                                                  ? theme
                                                      .colorScheme
                                                      .primaryContainer
                                                      .withAlpha(
                                                        (0.3 * 255).toInt(),
                                                      )
                                                  : theme
                                                      .colorScheme
                                                      .surfaceContainerHigh;

                                          return Container(
                                            margin: const EdgeInsets.symmetric(
                                              vertical: Spacing.xxs,
                                            ),
                                            padding: const EdgeInsets.all(
                                              Spacing.xs,
                                            ),
                                            decoration: BoxDecoration(
                                              color: bubbleColor,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                    RadiusTokens.sm,
                                                  ),
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      isUser
                                                          ? l10n.userRole
                                                          : l10n.assistantRole,
                                                      style: theme
                                                          .textTheme
                                                          .labelSmall
                                                          ?.copyWith(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                isUser
                                                                    ? theme
                                                                        .colorScheme
                                                                        .primary
                                                                    : theme
                                                                        .colorScheme
                                                                        .secondary,
                                                          ),
                                                    ),
                                                    Text(
                                                      '${_formatDate(msg.timestamp)} ${_formatTime(msg.timestamp)}',
                                                      style: theme
                                                          .textTheme
                                                          .labelSmall
                                                          ?.copyWith(
                                                            color: theme
                                                                .colorScheme
                                                                .onSurfaceVariant
                                                                .withAlpha(
                                                                  (0.6 * 255)
                                                                      .toInt(),
                                                                ),
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: Spacing.xxs,
                                                ),
                                                Text(
                                                  msg.content,
                                                  style:
                                                      theme
                                                          .textTheme
                                                          .bodyMedium,
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                        const SizedBox(height: Spacing.xs),
                                      ],
                                    );
                                  }).toList(),
                            ),
                          );
                        },
                      ),
            ),
          ],
        ),
      ),
    );
  }
}
