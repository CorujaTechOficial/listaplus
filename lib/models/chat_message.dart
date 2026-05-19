import 'package:uuid/uuid.dart';

// coverage:ignore-start
enum ChatRole {
  user,
  assistant,
  system;

  String get value {
    switch (this) {
      case ChatRole.user:
        return 'user';
      case ChatRole.assistant:
        return 'assistant';
      case ChatRole.system:
        return 'system';
    }
  }

  static ChatRole fromString(String value) {
    return ChatRole.values.firstWhere((r) => r.value == value);
  }
}

class ChatMessage {
  ChatMessage({
    String? id,
    required this.role,
    required this.content,
    DateTime? timestamp,
  })  : id = id ?? const Uuid().v4(),
        timestamp = timestamp ?? DateTime.now();

  factory ChatMessage.fromJson(Map<String, dynamic> json) {
    return ChatMessage(
      id: json['id'] as String,
      role: json['role'] as String,
      content: json['content'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );
  }

  final String id;
  final String role;
  final String content;
  final DateTime timestamp;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'role': role,
      'content': content,
      'timestamp': timestamp.toIso8601String(),
    };
  }
}
// coverage:ignore-end
