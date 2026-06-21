import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/app/ai/providers/chat_provider.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/app/lists/widgets/app_bar_list_selector.dart';
import 'package:shopping_list/app/ai/widgets/ai_chat_panel.dart';
import 'package:shopping_list/app/ai/widgets/chat_history_drawer.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ChatScreen extends ConsumerWidget {
  const ChatScreen({super.key, this.listId, this.listName});

  final String? listId;
  final String? listName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;

    final activeListId =
        listId != null
            ? (ref.watch(currentListIdProvider).value ?? listId)
            : null;
    final lists = ref.watch(shoppingListsProvider).value ?? [];
    final currentList = lists.where((l) => l.id == activeListId).firstOrNull;
    final activeListName = currentList?.name ?? listName;

    // No hard paywall here: free users get the assistant with the soft usage
    // banner + teaser (AiUsageBanner / teaser bubbles inside AiChatPanel), the
    // same model as the assistant tab. Value is shown before commitment.
    return Scaffold(
      endDrawer: ChatHistoryDrawer(listId: activeListId),
      appBar: AppBar(
        title:
            activeListId != null
                ? AppBarListSelector(currentListId: activeListId)
                : Text(activeListName ?? l10n.generalAssistant),
        actions: [
          IconButton(
            icon: const Icon(PhosphorIconsRegular.plus),
            tooltip: l10n.newChat,
            onPressed: () async {
              final currentSessionId = ref.read(
                activeChatSessionIdProvider(activeListId),
              );
              if (currentSessionId != null) {
                final confirmed = await showDialog<bool>(
                  context: context,
                  builder:
                      (_) => AlertDialog(
                        title: Text(l10n.newChatConfirmTitle),
                        content: Text(l10n.newChatConfirmMessage),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context, false),
                            child: Text(l10n.cancel),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, true),
                            child: Text(l10n.newChat),
                          ),
                        ],
                      ),
                );
                if (confirmed != true) return;
              }
              ref
                  .read(chatSessionsProvider(activeListId).notifier)
                  .createNewSession();
            },
          ),
          Builder(
            builder:
                (context) => IconButton(
                  icon: const Icon(PhosphorIconsRegular.clockCounterClockwise),
                  tooltip: l10n.conversationHistoryTitle,
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                ),
          ),
        ],
      ),
      body: AiChatPanel(listId: activeListId, listName: activeListName),
    );
  }
}
