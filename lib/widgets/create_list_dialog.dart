import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../theme/tokens.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';

class CreateListDialog extends ConsumerStatefulWidget {
  const CreateListDialog({super.key, this.initialName});

  final String? initialName;

  @override
  ConsumerState<CreateListDialog> createState() => _CreateListDialogState();
}

class _CreateListDialogState extends ConsumerState<CreateListDialog> {
  late final TextEditingController _controller;

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
          onSubmitted: (_) => _submit(),
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: Text(l10n.cancel)),
        ElevatedButton(
          onPressed: _submit,
          child: Text(isRename ? l10n.save : l10n.create),
        ),
      ],
    );
  }

  void _submit() {
    final name = _controller.text.trim();
    if (name.isNotEmpty) {
      Navigator.pop(context, name);
    }
  }
}
