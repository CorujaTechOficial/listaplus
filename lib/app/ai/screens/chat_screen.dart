import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/app/ai/providers/chat_provider.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/app/lists/widgets/app_bar_list_selector.dart';
import 'package:shopping_list/core/widgets/premium_gate.dart';
import 'package:shopping_list/app/ai/widgets/ai_chat_panel.dart';

class ChatScreen extends ConsumerWidget {
  const ChatScreen({super.key, this.listId, this.listName});

  final String? listId;
  final String? listName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final premiumAsync = ref.watch(premiumProvider);

    final activeListId = listId != null ? (ref.watch(currentListIdProvider).value ?? listId) : null;
    final lists = ref.watch(shoppingListsProvider).value ?? [];
    final currentList = lists.where((l) => l.id == activeListId).firstOrNull;
    final activeListName = currentList?.name ?? listName;

    return premiumAsync.when(
      data: (isPremium) {
        if (!isPremium) {
          return PremiumGate(
            title: l10n.aiAssistant,
            description: l10n.aiAssistantDescription,
          );
        }

        return Scaffold(
          endDrawer: _ChatHistoryDrawer(listId: activeListId),
          appBar: AppBar(
            title: activeListId != null
                ? AppBarListSelector(currentListId: activeListId)
                : Text(activeListName ?? l10n.generalAssistant),
            actions: [
              IconButton(
                icon: const Icon(Icons.add_comment),
                tooltip: l10n.newChat,
                onPressed: () {
                  ref.read(chatSessionsProvider(activeListId).notifier).createNewSession();
                },
              ),
              Builder(
                builder: (context) => IconButton(
                  icon: const Icon(Icons.history),
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                ),
              ),
            ],
          ),
          body: AiChatPanel(
            listId: activeListId,
            listName: activeListName,
          ),
        );
      },
      loading: () => Scaffold(
        appBar: AppBar(
          title: activeListId != null
              ? AppBarListSelector(currentListId: activeListId)
              : Text(activeListName ?? l10n.generalAssistant),
        ),
        body: const SafeArea(child: Center(child: CircularProgressIndicator())),
      ),
      error: (e, _) => Scaffold(
        appBar: AppBar(
          title: activeListId != null
              ? AppBarListSelector(currentListId: activeListId)
              : Text(activeListName ?? l10n.generalAssistant),
        ),
        body: SafeArea(child: Center(child: Text(e.toString()))),
      ),
    );
  }
}

class _ChatHistoryDrawer extends ConsumerWidget {
  const _ChatHistoryDrawer({this.listId});
  final String? listId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final sessionsAsync = ref.watch(chatSessionsProvider(listId));
    final activeSessionId = ref.watch(activeChatSessionIdProvider(listId));

    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
            child: Center(
              child: Text(
                l10n.conversationHistoryTitle,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
          Expanded(
            child: sessionsAsync.when(
              data: (sessions) {
                if (sessions.isEmpty) {
                  return Center(child: Text(l10n.noConversationsFound));
                }
                return ListView.builder(
                  itemCount: sessions.length,
                  itemBuilder: (context, index) {
                    final session = sessions[index];
                    final isActive = session.id == activeSessionId;
                    return ListTile(
                      title: Text(
                        session.title ?? l10n.newChat,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Text(DateFormat('dd/MM/yyyy HH:mm').format(session.updatedAt)),
                      selected: isActive,
                      onTap: () {
                        ref.read(activeChatSessionIdProvider(listId).notifier).set(session.id);
                        Navigator.pop(context);
                      },
                      trailing: IconButton(
                        icon: const Icon(Icons.delete_outline),
                        onPressed: () {
                          _showDeleteConfirm(context, ref, session.id);
                        },
                      ),
                    );
                  },
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, _) => Center(child: Text(l10n.errorLoadingHistory)),
            ),
          ),
        ],
      ),
    );
  }

  void _showDeleteConfirm(BuildContext context, WidgetRef ref, String sessionId) {
    final l10n = AppLocalizations.of(context)!;
    showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.deleteConversationTitle),
        content: Text(l10n.deleteConversationConfirm),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          TextButton(
            onPressed: () {
              ref.read(chatSessionsProvider(listId).notifier).deleteSession(sessionId);
              Navigator.pop(context);
            },
            child: Text(l10n.deleteConversation, style: const TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}

