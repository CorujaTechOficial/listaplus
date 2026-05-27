import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../theme/tokens.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

class CreateListDialog extends ConsumerStatefulWidget {

  const CreateListDialog({super.key, this.initialName, this.onCreate});
  final String? initialName;
  final Future<void> Function(String name)? onCreate;

  @override
  ConsumerState<CreateListDialog> createState() => _CreateListDialogState();
}

class _CreateListDialogState extends ConsumerState<CreateListDialog> {
  late final TextEditingController _controller;
  bool _isCreating = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialName ?? '');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final isRename = widget.initialName != null;
    return AlertDialog(
      title: Text(isRename ? l10n.renameListDialog : l10n.createListDialog),
      content: Padding(
        padding: const EdgeInsets.only(top: Spacing.xs),
        child: TextField(
          controller: _controller,
          decoration: InputDecoration(labelText: l10n.listNameLabel),
          autofocus: true,
          enabled: !_isCreating,
          onSubmitted: (_) => _submit(),
        ),
      ),
      actions: [
        TextButton(
          onPressed: _isCreating ? null : () => Navigator.pop(context),
          child: Text(l10n.cancel),
        ),
        ElevatedButton(
          onPressed: _submit,
          child: _isCreating
              ? const SizedBox(
                  width: 18,
                  height: 18,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : Text(isRename ? l10n.save : l10n.create),
        ),
      ],
    );
  }

  Future<void> _submit() async {
    final name = _controller.text.trim();
    if (name.isEmpty) {
      return;
    }

    final onCreate = widget.onCreate;
    if (onCreate == null) {
      Navigator.pop(context, name);
      return;
    }

    setState(() => _isCreating = true);
    try {
      await onCreate(name);
      if (mounted) {
        Navigator.pop(context);
      }
    } on Exception catch (e) {
      if (mounted) {
        setState(() => _isCreating = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.toString().replaceFirst('Exception: ', ''))),
        );
      }
    }
  }
}
