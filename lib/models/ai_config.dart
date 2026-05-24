import 'package:flutter/material.dart';

class AiConfig {
  const AiConfig({
    required this.name,
    required this.iconKey,
  });

  final String name;
  final String iconKey;

  IconData get iconData {
    switch (iconKey) {
      case 'smart_toy':
        return Icons.smart_toy;
      case 'psychology':
        return Icons.psychology;
      case 'support_agent':
        return Icons.support_agent;
      case 'face':
        return Icons.face;
      default:
        return Icons.auto_awesome;
    }
  }

  AiConfig copyWith({
    String? name,
    String? iconKey,
  }) {
    return AiConfig(
      name: name ?? this.name,
      iconKey: iconKey ?? this.iconKey,
    );
  }
}
