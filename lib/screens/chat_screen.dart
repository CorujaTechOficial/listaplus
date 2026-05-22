import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../generated/l10n/app_localizations.dart';
import '../providers/premium_provider.dart';
import '../providers/chat_provider.dart';
import '../widgets/premium_gate.dart';
import '../widgets/ai_chat_panel.dart';
import '../theme/page_transitions.dart';
import 'paywall_screen.dart';

class ChatScreen extends ConsumerWidget {
  const ChatScreen({super.key, this.listId, this.listName});

  final String? listId;
  final String? listName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final premiumAsync = ref.watch(premiumProvider);

    return premiumAsync.when(
      data: (isPremium) {
        if (!isPremium) {
          return PremiumGate(
            title: l10n.aiAssistant,
            description: l10n.aiAssistantDescription,
            onUpgrade: () => Navigator.push(
              context,
              fadeSlideRoute<void>(const PaywallScreen()),
            ),
          );
        }

        return Scaffold(
          appBar: AppBar(
            title: Text(listName ?? l10n.generalAssistant),
            actions: [
              IconButton(
                icon: const Icon(Icons.delete_sweep),
                onPressed: () {
                  showDialog<void>(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text(l10n.clearHistory),
                      content: Text(l10n.clearHistoryConfirm),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text(l10n.cancel),
                        ),
                        TextButton(
                          onPressed: () {
                            ref.read(chatSessionProvider(listId).notifier).clearHistory();
                            Navigator.pop(context);
                          },
                          child: Text(l10n.clear),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
          body: AiChatPanel(
            listId: listId,
            listName: listName,
          ),
        );
      },
      loading: () => Scaffold(
        appBar: AppBar(title: Text(listName ?? l10n.generalAssistant)),
        body: const Center(child: CircularProgressIndicator()),
      ),
      error: (e, _) => Scaffold(
        appBar: AppBar(title: Text(listName ?? l10n.generalAssistant)),
        body: Center(child: Text(e.toString())),
      ),
    );
  }
}
