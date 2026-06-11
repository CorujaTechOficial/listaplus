import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/core/theme/colors.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/app/lists/providers/share_provider.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/theme/page_transitions.dart';
import 'package:shopping_list/app/settings/screens/paywall_screen.dart';

class ShareListSheet extends ConsumerWidget {
  const ShareListSheet({
    super.key,
    required this.listId,
    required this.items,
    this.listName,
  });

  final String listId;
  final List<ShoppingItem> items;
  final String? listName;

  static Future<void> show(
    BuildContext context, {
    required String listId,
    required List<ShoppingItem> items,
    String? listName,
  }) {
    return showModalBottomSheet<void>(
      context: context,
      builder: (_) => ShareListSheet(
        listId: listId,
        items: items,
        listName: listName,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l10n.shareListTitle,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 16),
            ListTile(
              leading: const Icon(Icons.text_fields),
              title: Text(l10n.share),
              subtitle: Text(l10n.shareAsText),
              onTap: () {
                Navigator.pop(context);
                unawaited(shareList(context, ref, items, listName));
              },
            ),
            ListTile(
              leading: const Icon(Icons.cloud_sync, color: AppColors.premiumAmber),
              title: Text(l10n.shareViaCode),
              subtitle: Text(l10n.shareRealtime),
              onTap: () {
                Navigator.pop(context);
                unawaited(shareViaCode(context, ref, listId));
              },
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> shareList(
  BuildContext context,
  WidgetRef ref,
  List<ShoppingItem> items,
  String? listName,
) async {
  final l10n = AppLocalizations.of(context)!;
  if (items.isEmpty) {
    return;
  }
  final text = items.asMap().entries.map((e) {
    final i = e.value;
    return '${e.key + 1}. ${i.name} — ${i.quantity}${i.unit.label}';
  }).join('\n');
  await SharePlus.instance.share(
    ShareParams(text: text, subject: listName ?? l10n.shareSubject),
  );
}

Future<void> shareViaCode(
  BuildContext context,
  WidgetRef ref,
  String listId,
) async {
  final isPremium = await ref.read(premiumProvider.future);
  if (!isPremium) {
    if (!context.mounted) {
      return;
    }
    await Navigator.push(
      context,
      fadeSlideRoute<void>(const PaywallScreen()),
    );
    return;
  }
  try {
    final code = await ref.read(shareServiceProvider).createShareCode(listId);
    if (!context.mounted) {
      return;
    }
    await showDialog<void>(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.shareListTitle),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(AppLocalizations.of(context)!.shareThisCode),
            const SizedBox(height: 16),
            SelectableText(
              code,
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    letterSpacing: 4,
                    fontWeight: FontWeight.w800,
                  ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.close),
          ),
        ],
      ),
    );
  } on Object catch (e) {
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    }
  }
}

void shareReferral(BuildContext context) {
  final l10n = AppLocalizations.of(context)!;
  SharePlus.instance.share(
    ShareParams(
      text: l10n.shareReferralText('https://kipilist.com/invite'),
      subject: l10n.shareReferralSubject,
    ),
  );
}
