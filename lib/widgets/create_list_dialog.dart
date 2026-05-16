import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    final isRename = widget.initialName != null;
    return AlertDialog(
      title: Text(isRename ? 'Renomear Lista' : 'Criar Lista'),
      content: TextField(
        controller: _controller,
        decoration: const InputDecoration(labelText: 'Nome da lista'),
        autofocus: true,
        onSubmitted: (_) => _submit(),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancelar')),
        ElevatedButton(
          onPressed: _submit,
          child: Text(isRename ? 'Salvar' : 'Criar'),
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
