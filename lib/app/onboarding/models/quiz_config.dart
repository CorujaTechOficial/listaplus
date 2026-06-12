import 'package:flutter/material.dart';

@immutable
class QuizOption {
  const QuizOption({required this.id, required this.emoji, required this.label});

  final String id;
  final String emoji;
  final String label;
}

@immutable
class QuizConfig {
  const QuizConfig({
    required this.title,
    required this.options,
    required this.selectedId,
    required this.onSelected,
  });

  final String title;
  final List<QuizOption> options;
  final String selectedId;
  final ValueChanged<String> onSelected;
}
