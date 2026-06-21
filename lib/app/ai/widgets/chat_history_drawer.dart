import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:shopping_list/app/ai/providers/chat_provider.dart';
import 'package:shopping_list/app/ai/screens/chat_history_screen.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/page_transitions.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

/// The single conversation-history surface, shared by the assistant tab and the
/// per-list chat. Both open it as an `endDrawer`, so "where is my history" is
/// one mental model across the feature. Search + date buckets here; the footer
/// links to the full global history screen for deeper search.
class ChatHistoryDrawer extends ConsumerStatefulWidget {
  const ChatHistoryDrawer({super.key, this.listId});

  final String? listId;

  @override
  ConsumerState<ChatHistoryDrawer> createState() => _ChatHistoryDrawerState();
}

class _ChatHistoryDrawerState extends ConsumerState<ChatHistoryDrawer> {
  final _searchController = TextEditingController();
  String _query = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  String? _bucketKey(DateTime date, DateTime now) {
    final day = DateTime(date.year, date.month, date.day);
    final today = DateTime(now.year, now.month, now.day);
    final diff = today.difference(day).inDays;
    if (diff <= 0) {
      return 'today';
    }
    if (diff == 1) {
      return 'yesterday';
    }
    if (diff <= 7) {
      return 'week';
    }
    return 'older';
  }

  String _bucketLabel(String key, AppLocalizations l10n) {
    return switch (key) {
      'today' => l10n.dateGroupToday,
      'yesterday' => l10n.dateGroupYesterday,
      'week' => l10n.dateGroupPrevious7Days,
      _ => l10n.dateGroupOlder,
    };
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final listId = widget.listId;
    final sessionsAsync = ref.watch(chatSessionsProvider(listId));
    final activeSessionId = ref.watch(activeChatSessionIdProvider(listId));
    final locale = Localizations.localeOf(context).toString();
    final dateFormat = DateFormat.yMd(locale).add_jm();

    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(
                Spacing.md,
                Spacing.md,
                Spacing.md,
                Spacing.xs,
              ),
              child: Row(
                children: [
                  Text(
                    l10n.conversationHistoryTitle,
                    style: theme.textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Spacing.sm,
                vertical: Spacing.xxs,
              ),
              child: TextField(
                controller: _searchController,
                onChanged:
                    (value) =>
                        setState(() => _query = value.trim().toLowerCase()),
                decoration: InputDecoration(
                  isDense: true,
                  prefixIcon: const Icon(PhosphorIconsRegular.magnifyingGlass, size: 20),
                  hintText: l10n.searchConversations,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(RadiusTokens.xxl),
                  ),
                  suffixIcon:
                      _query.isEmpty
                          ? null
                          : IconButton(
                            icon: const Icon(PhosphorIconsRegular.x, size: 18),
                            onPressed: () {
                              _searchController.clear();
                              setState(() => _query = '');
                            },
                          ),
                ),
              ),
            ),
            Expanded(
              child: sessionsAsync.when(
                data: (sessions) {
                  final filtered =
                      _query.isEmpty
                          ? sessions
                          : sessions
                              .where(
                                (s) => (s.title ?? l10n.newChat)
                                    .toLowerCase()
                                    .contains(_query),
                              )
                              .toList();
                  if (filtered.isEmpty) {
                    return Center(child: Text(l10n.noConversationsFound));
                  }

                  final now = DateTime.now();
                  final order = ['today', 'yesterday', 'week', 'older'];
                  final tiles = <Widget>[];
                  String? lastBucket;
                  // sessions arrive newest-first; iterate in bucket order.
                  for (final bucket in order) {
                    for (final session in filtered) {
                      if (_bucketKey(session.updatedAt, now) != bucket) {
                        continue;
                      }
                      if (lastBucket != bucket) {
                        lastBucket = bucket;
                        tiles.add(
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                              Spacing.md,
                              Spacing.sm,
                              Spacing.md,
                              Spacing.xxs,
                            ),
                            child: Text(
                              _bucketLabel(bucket, l10n),
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: theme.colorScheme.primary,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        );
                      }
                      final isActive = session.id == activeSessionId;
                      tiles.add(
                        ListTile(
                          title: Text(
                            session.title ?? l10n.newChat,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: Text(dateFormat.format(session.updatedAt)),
                          selected: isActive,
                          onTap: () {
                            ref
                                .read(
                                  activeChatSessionIdProvider(listId).notifier,
                                )
                                .set(session.id);
                            Navigator.pop(context);
                          },
                          trailing: IconButton(
                            icon: const Icon(PhosphorIconsRegular.trash),
                            onPressed: () {
                              _showDeleteConfirm(context, ref, session.id);
                            },
                          ),
                        ),
                      );
                    }
                  }
                  return ListView(children: tiles);
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (e, _) => Center(child: Text(l10n.errorLoadingHistory)),
              ),
            ),
            const Divider(height: 1),
            ListTile(
              leading: Icon(
                PhosphorIconsRegular.magnifyingGlass,
                color: theme.colorScheme.onSurfaceVariant,
              ),
              title: Text(
                l10n.assistantHistory,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  fadeSlideRoute<void>(const ChatHistoryScreen()),
                );
              },
            ),
            const SizedBox(height: Spacing.xs),
          ],
        ),
      ),
    );
  }

  void _showDeleteConfirm(
    BuildContext context,
    WidgetRef ref,
    String sessionId,
  ) {
    final l10n = AppLocalizations.of(context)!;
    showDialog<void>(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text(l10n.deleteConversationTitle),
            content: Text(l10n.deleteConversationConfirm),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(l10n.cancel),
              ),
              TextButton(
                onPressed: () {
                  ref
                      .read(chatSessionsProvider(widget.listId).notifier)
                      .deleteSession(sessionId);
                  Navigator.pop(context);
                },
                child: Text(
                  l10n.deleteConversation,
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              ),
            ],
          ),
    );
  }
}
