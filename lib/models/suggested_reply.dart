class SuggestedReply {
  SuggestedReply({
    required this.label,
    required this.prompt,
    required this.icon,
  });

  factory SuggestedReply.fromJson(Map<String, dynamic> json) {
    return SuggestedReply(
      label: json['label'] as String? ?? '',
      prompt: json['prompt'] as String? ?? '',
      icon: json['icon'] as String? ?? 'chat',
    );
  }

  final String label;
  final String prompt;
  final String icon;

  Map<String, dynamic> toJson() {
    return {
      'label': label,
      'prompt': prompt,
      'icon': icon,
    };
  }
}
