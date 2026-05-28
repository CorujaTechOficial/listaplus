import 'package:uuid/uuid.dart';
import 'interactive_artifact.dart';
import 'suggested_reply.dart';

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
    this.suggestedReplies,
    this.isError = false,
    this.isTeaser = false,
    this.feedback, // null = none, 1 = like, -1 = dislike
    this.executionSteps,
    this.artifact,
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
      suggestedReplies: (json['suggestedReplies'] as List<dynamic>?)?.map((e) {
        if (e is String) {
          return SuggestedReply(label: e, prompt: e, icon: 'chat');
        }
        return SuggestedReply.fromJson(Map<String, dynamic>.from(e as Map));
      }).toList(),
      isError: json['isError'] as bool? ?? false,
      isTeaser: json['isTeaser'] as bool? ?? false,
      feedback: json['feedback'] as int?,
      executionSteps: (json['executionSteps'] as List<dynamic>?)
          ?.map((e) => AgentStep.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      artifact: json['artifact'] != null
          ? InteractiveArtifact.fromJson(
              Map<String, dynamic>.from(json['artifact'] as Map),
            )
          : null,
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
  final List<SuggestedReply>? suggestedReplies;
  final bool isError;
  final bool isTeaser;
  final int? feedback;
  final List<AgentStep>? executionSteps;
  final InteractiveArtifact? artifact;

  ChatMessage copyWith({
    String? id,
    String? role,
    String? content,
    DateTime? timestamp,
    String? senderName,
    String? senderUid,
    Map<String, dynamic>? actions,
    List<SuggestedReply>? suggestedReplies,
    bool? isError,
    bool? isTeaser,
    int? feedback,
    List<AgentStep>? executionSteps,
    InteractiveArtifact? artifact,
  }) {
    return ChatMessage(
      id: id ?? this.id,
      role: role ?? this.role,
      content: content ?? this.content,
      timestamp: timestamp ?? this.timestamp,
      senderName: senderName ?? this.senderName,
      senderUid: senderUid ?? this.senderUid,
      actions: actions ?? this.actions,
      suggestedReplies: suggestedReplies ?? this.suggestedReplies,
      isError: isError ?? this.isError,
      isTeaser: isTeaser ?? this.isTeaser,
      feedback: feedback ?? this.feedback,
      executionSteps: executionSteps ?? this.executionSteps,
      artifact: artifact ?? this.artifact,
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
      if (suggestedReplies != null)
        'suggestedReplies': suggestedReplies!.map((e) => e.toJson()).toList(),
      'isError': isError,
      'isTeaser': isTeaser,
      if (feedback != null) 'feedback': feedback,
      if (executionSteps != null)
        'executionSteps': executionSteps!.map((e) => e.toJson()).toList(),
      if (artifact != null) 'artifact': artifact!.toJson(),
    };
  }
}

enum AgentStepStatus {
  pending,
  running,
  success,
  error,
  undone,
  requiresUnlock;

  String get value {
    switch (this) {
      case AgentStepStatus.pending:
        return 'pending';
      case AgentStepStatus.running:
        return 'running';
      case AgentStepStatus.success:
        return 'success';
      case AgentStepStatus.error:
        return 'error';
      case AgentStepStatus.undone:
        return 'undone';
      case AgentStepStatus.requiresUnlock:
        return 'requiresUnlock';
    }
  }

  static AgentStepStatus fromString(String value) {
    return AgentStepStatus.values.firstWhere(
      (s) {
        return s.value == value;
      },
      orElse: () {
        return AgentStepStatus.pending;
      },
    );
  }
}

class AgentStep {
  AgentStep({
    required this.id,
    required this.description,
    required this.status,
    this.toolName,
    this.resultData,
  });

  factory AgentStep.fromJson(Map<String, dynamic> json) {
    return AgentStep(
      id: json['id'] as String? ?? '',
      description: json['description'] as String? ?? '',
      status: AgentStepStatus.fromString(json['status'] as String? ?? 'pending'),
      toolName: json['toolName'] as String?,
      resultData: json['resultData'] != null ? Map<String, dynamic>.from(json['resultData'] as Map) : null,
    );
  }

  final String id;
  final String description;
  final AgentStepStatus status;
  final String? toolName;
  final Map<String, dynamic>? resultData;

  AgentStep copyWith({
    AgentStepStatus? status,
    Map<String, dynamic>? resultData,
    String? toolName,
  }) {
    return AgentStep(
      id: id,
      description: description,
      status: status ?? this.status,
      toolName: toolName ?? this.toolName,
      resultData: resultData ?? this.resultData,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'status': status.value,
      if (toolName != null) 'toolName': toolName,
      if (resultData != null) 'resultData': resultData,
    };
  }
}
// coverage:ignore-end
