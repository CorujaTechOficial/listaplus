import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class AiConfig {
  const AiConfig({required this.name, required this.iconKey});

  final String name;
  final String iconKey;

  IconData get iconData {
    switch (iconKey) {
      case 'smart_toy':
        return PhosphorIconsRegular.robot;
      case 'psychology':
        return PhosphorIconsRegular.brain;
      case 'support_agent':
        return PhosphorIconsRegular.headset;
      case 'face':
        return PhosphorIconsRegular.user;
      default:
        return PhosphorIconsRegular.robot;
    }
  }

  AiConfig copyWith({String? name, String? iconKey}) {
    return AiConfig(name: name ?? this.name, iconKey: iconKey ?? this.iconKey);
  }
}
