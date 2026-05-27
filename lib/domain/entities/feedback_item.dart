import 'package:uuid/uuid.dart';

enum FeedbackType { bug, suggestion, translationIssue, improvement, other }

class FeedbackItem {
  FeedbackItem({
    String? id,
    required this.type,
    required this.message,
    required this.appVersion,
    required this.platform,
    required this.deviceLocale,
    DateTime? timestamp,
    this.userId,
  })  : id = id ?? const Uuid().v4(),
        timestamp = timestamp ?? DateTime.now();

  factory FeedbackItem.fromJson(Map<String, dynamic> json) => FeedbackItem(
        id: json['id'] as String?,
        type: FeedbackType.values.firstWhere(
          (e) => e.name == json['type'],
          orElse: () => FeedbackType.other,
        ),
        message: json['message'] as String,
        appVersion: json['appVersion'] as String? ?? '',
        platform: json['platform'] as String? ?? '',
        deviceLocale: json['deviceLocale'] as String? ?? '',
        timestamp: json['timestamp'] != null
            ? DateTime.parse(json['timestamp'] as String)
            : null,
        userId: json['userId'] as String?,
      );

  final String id;
  final FeedbackType type;
  final String message;
  final String appVersion;
  final String platform;
  final String deviceLocale;
  final DateTime timestamp;
  final String? userId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'type': type.name,
        'message': message,
        'appVersion': appVersion,
        'platform': platform,
        'deviceLocale': deviceLocale,
        'timestamp': timestamp.toIso8601String(),
        'userId': userId,
      };
}
