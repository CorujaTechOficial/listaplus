import 'package:flutter/material.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/theme/tokens.dart';

class OnboardingSlideCreateList extends StatefulWidget {
  const OnboardingSlideCreateList({super.key, required this.onCreate});

  final Future<void> Function(String name) onCreate;

  @override
  State<OnboardingSlideCreateList> createState() =>
      _OnboardingSlideCreateListState();
}

class _OnboardingSlideCreateListState extends State<OnboardingSlideCreateList> {
  final _controller = TextEditingController();
  bool _isCreating = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_handleNameChanged);
  }

  @override
  void dispose() {
    _controller
      ..removeListener(_handleNameChanged)
      ..dispose();
    super.dispose();
  }

  void _handleNameChanged() {
    setState(() {});
  }

  Future<void> _submit() async {
    final name = _controller.text.trim();
    if (name.isEmpty || _isCreating) {
      return;
    }

    setState(() => _isCreating = true);
    try {
      await widget.onCreate(name);
    } on Exception {
      if (!mounted) {
        return;
      }
      setState(() => _isCreating = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context)!.somethingWentWrong),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final canCreate = _controller.text.trim().isNotEmpty && !_isCreating;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Spacing.xl),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.playlist_add_rounded,
                size: 56,
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
            const SizedBox(height: Spacing.xl),
            Text(
              l10n.createListDialog,
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: Spacing.lg),
            TextField(
              controller: _controller,
              autofocus: true,
              enabled: !_isCreating,
              textCapitalization: TextCapitalization.sentences,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                labelText: l10n.listNameLabel,
                prefixIcon: const Icon(Icons.shopping_cart_outlined),
              ),
              onSubmitted: (_) => _submit(),
            ),
            const SizedBox(height: Spacing.lg),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: canCreate ? _submit : null,
                style: FilledButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: Spacing.md),
                ),
                child:
                    _isCreating
                        ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        )
                        : Text(l10n.create),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
