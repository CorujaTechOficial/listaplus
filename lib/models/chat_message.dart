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
    return ChatRole.values.firstWhere(
      (r) => r.value == value,
      orElse: () => ChatRole.user,
    );
  }
}

class ChatMessage {
  ChatMessage({
    String? id,
    required this.role,
    required this.content,
    DateTime? timestamp,
    this.senderName,
    this.senderUid,
    this.actions,
  })  : id = id ?? const Uuid().v4(),
        timestamp = timestamp ?? DateTime.now();

  factory ChatMessage.fromJson(Map<String, dynamic> json) {
    return ChatMessage(
      id: json['id'] as String? ?? '',
      role: json['role'] as String? ?? 'user',
      content: json['content'] as String? ?? '',
      timestamp: _parseDate(json['timestamp']),
      senderName: json['senderName'] as String?,
      senderUid: json['senderUid'] as String?,
      actions: json['actions'] as Map<String, dynamic>?,
    );
  }

  static DateTime _parseDate(dynamic value) {
    if (value == null) {
      return DateTime.now();
    }
    if (value is DateTime) {
      return value;
    }
    final parsed = DateTime.tryParse(value.toString());
    return parsed ?? DateTime.now();
  }

  final String id;
  final String role;
  final String content;
  final DateTime timestamp;
  final String? senderName;
  final String? senderUid;
  final Map<String, dynamic>? actions;

  ChatMessage copyWith({
    String? id,
    String? role,
    String? content,
    DateTime? timestamp,
    String? senderName,
    String? senderUid,
    Map<String, dynamic>? actions,
  }) {
    return ChatMessage(
      id: id ?? this.id,
      role: role ?? this.role,
      content: content ?? this.content,
      timestamp: timestamp ?? this.timestamp,
      senderName: senderName ?? this.senderName,
      senderUid: senderUid ?? this.senderUid,
      actions: actions ?? this.actions,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'role': role,
      'content': content,
      'timestamp': timestamp.toIso8601String(),
      if (senderName != null) 'senderName': senderName,
      if (senderUid != null) 'senderUid': senderUid,
      if (actions != null) 'actions': actions,
    };
  }
}
// coverage:ignore-end
