import 'package:uuid/uuid.dart';
import 'package:shopping_list/core/utils/formatters.dart';

class ChatSessionModel {
  ChatSessionModel({
    String? id,
    this.title,
    DateTime? createdAt,
    DateTime? updatedAt,
    this.listId,
  })  : id = id ?? const Uuid().v4(),
        createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();

  factory ChatSessionModel.fromJson(Map<String, dynamic> json) {
    return ChatSessionModel(
      id: json['id'] as String? ?? '',
      title: json['title'] as String?,
      createdAt: safeParseDate(json['createdAt']),
      updatedAt: safeParseDate(json['updatedAt']),
      listId: json['listId'] as String?,
    );
  }

  final String id;
  final String? title;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String? listId;

  ChatSessionModel copyWith({
    String? id,
    String? title,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? listId,
  }) {
    return ChatSessionModel(
      id: id ?? this.id,
      title: title ?? this.title,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      listId: listId ?? this.listId,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      if (title != null) 'title': title,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      if (listId != null) 'listId': listId,
    };
  }
}
