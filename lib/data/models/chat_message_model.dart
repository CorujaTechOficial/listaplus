class ChatMessageModel {
  ChatMessageModel({
    required this.id,
    this.listId,
    required this.role,
    required this.content,
    DateTime? timestamp,
    this.toolCalls,
  }) : timestamp = timestamp ?? DateTime.now();

  factory ChatMessageModel.fromJson(Map<String, dynamic> json) {
    return ChatMessageModel(
      id: json['id'] as String? ?? '',
      listId: json['listId'] as String?,
      role: json['role'] as String? ?? '',
      content: json['content'] as String? ?? '',
      timestamp: _parseDate(json['timestamp']),
      toolCalls: json['toolCalls'] as Map<String, dynamic>?,
    );
  }

  static DateTime _parseDate(dynamic value) {
    if (value == null) return DateTime.now();
    if (value is DateTime) return value;
    return DateTime.tryParse(value.toString()) ?? DateTime.now();
  }

  final String id;
  final String? listId;
  final String role;
  final String content;
  final DateTime timestamp;
  final Map<String, dynamic>? toolCalls;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'listId': listId,
      'role': role,
      'content': content,
      'timestamp': timestamp.toIso8601String(),
      'toolCalls': toolCalls,
    };
  }
}
