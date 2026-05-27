import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shopping_list/domain/entities/feedback_item.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/theme/tokens.dart';

class FeedbackScreen extends ConsumerStatefulWidget {
  const FeedbackScreen({super.key});

  @override
  ConsumerState<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends ConsumerState<FeedbackScreen> {
  FeedbackType _selectedType = FeedbackType.suggestion;
  final _messageController = TextEditingController();
  bool _sending = false;
  bool _sent = false;
  String _appVersion = '';
  String _platform = '';

  @override
  void initState() {
    super.initState();
    _loadInfo();
  }

  Future<void> _loadInfo() async {
    try {
      final info = await PackageInfo.fromPlatform();
      if (mounted) {
        setState(() {
          _appVersion = '${info.version}+${info.buildNumber}';
          _platform = Platform.operatingSystem;
        });
      }
    } on Exception {
      if (mounted) {
        setState(() {
          _appVersion = '1.0.55+55';
          _platform = Platform.operatingSystem;
        });
      }
    }
  }

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return PopScope(
      canPop: !_sending,
      child: Scaffold(
        appBar: AppBar(
          title: Text(l10n.feedbackTitle),
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              if (!_sending) {
                Navigator.pop(context);
              }
            },
          ),
        ),
        body: _sent ? _buildThankYou(theme, l10n) : _buildForm(theme, l10n),
      ),
    );
  }

  Widget _buildForm(ThemeData theme, AppLocalizations l10n) {
    final typeOptions = [
      (FeedbackType.bug, Icons.bug_report, l10n.feedbackTypeBug, l10n.feedbackTypeBugHint),
      (FeedbackType.suggestion, Icons.lightbulb_outline, l10n.feedbackTypeSuggestion, l10n.feedbackTypeSuggestionHint),
      (FeedbackType.translationIssue, Icons.translate, l10n.feedbackTypeTranslation, l10n.feedbackTypeTranslationHint),
      (FeedbackType.improvement, Icons.star_outline, l10n.feedbackTypeFeature, l10n.feedbackTypeFeatureHint),
      (FeedbackType.other, Icons.more_horiz, l10n.feedbackTypeOther, l10n.feedbackTypeOtherHint),
    ];

    return SingleChildScrollView(
      padding: const EdgeInsets.all(Spacing.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.feedbackPrompt,
            style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: Spacing.md),
          ...typeOptions.map((opt) {
            final selected = _selectedType == opt.$1;
            return Padding(
              padding: const EdgeInsets.only(bottom: Spacing.xs),
              child: InkWell(
                borderRadius: BorderRadius.circular(RadiusTokens.sm),
                onTap: () => setState(() => _selectedType = opt.$1),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: const EdgeInsets.symmetric(horizontal: Spacing.md, vertical: Spacing.sm),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(RadiusTokens.sm),
                    border: Border.all(
                      color: selected ? theme.colorScheme.primary : theme.colorScheme.outlineVariant,
                      width: selected ? 2 : 1,
                    ),
                    color: selected ? theme.colorScheme.primaryContainer.withAlpha(100) : null,
                  ),
                  child: Row(
                    children: [
                      Icon(opt.$2, size: 22, color: selected ? theme.colorScheme.primary : theme.colorScheme.onSurfaceVariant),
                      const SizedBox(width: Spacing.sm),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              opt.$3,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                fontWeight: selected ? FontWeight.w600 : FontWeight.normal,
                              ),
                            ),
                            Text(
                              opt.$4,
                              style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.onSurfaceVariant),
                            ),
                          ],
                        ),
                      ),
                      if (selected)
                        Icon(Icons.check_circle, color: theme.colorScheme.primary, size: 20),
                    ],
                  ),
                ),
              ),
            );
          }),
          const SizedBox(height: Spacing.md),
          TextField(
            controller: _messageController,
            maxLines: 6,
            minLines: 4,
            maxLength: 2000,
            decoration: InputDecoration(
              hintText: l10n.feedbackHint,
              border: const OutlineInputBorder(),
              filled: true,
              fillColor: theme.colorScheme.surfaceContainerLowest,
            ),
            textCapitalization: TextCapitalization.sentences,
          ),
          const SizedBox(height: Spacing.md),
          SizedBox(
            width: double.infinity,
            height: 48,
            child: FilledButton.icon(
              onPressed: _sending || _messageController.text.trim().isEmpty
                  ? null
                  : _sendFeedback,
              icon: _sending
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                    )
                  : const Icon(Icons.send_rounded),
              label: Text(_sending ? l10n.feedbackSending : l10n.feedbackSend),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildThankYou(ThemeData theme, AppLocalizations l10n) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(Spacing.xl),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle_outline, size: 80, color: theme.colorScheme.primary),
            const SizedBox(height: Spacing.lg),
            Text(
              l10n.feedbackThankYou,
              style: theme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: Spacing.sm),
            Text(
              l10n.feedbackThankYouMessage,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium?.copyWith(color: theme.colorScheme.onSurfaceVariant),
            ),
            const SizedBox(height: Spacing.xl),
            FilledButton(
              onPressed: () => Navigator.pop(context),
              child: Text(l10n.feedbackBack),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _sendFeedback() async {
    final message = _messageController.text.trim();
    if (message.isEmpty) {
      return;
    }

    setState(() => _sending = true);

    try {
      final feedback = FeedbackItem(
        type: _selectedType,
        message: message,
        appVersion: _appVersion,
        platform: _platform,
        deviceLocale: Platform.localeName,
      );

      await ref.read(firestoreServiceProvider).saveFeedback(feedback.toJson());

      if (mounted) {
        await HapticFeedback.mediumImpact();
        setState(() {
          _sending = false;
          _sent = true;
        });
      }
    } on Exception catch (e) {
      if (mounted) {
        setState(() => _sending = false);
        final l10n = AppLocalizations.of(context)!;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.feedbackError(e.toString())),
            action: SnackBarAction(label: l10n.feedbackRetry, onPressed: _sendFeedback),
          ),
        );
      }
    }
  }
}
