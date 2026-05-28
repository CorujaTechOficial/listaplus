import 'package:flutter_riverpod/legacy.dart';

final onboardingSlideIndexProvider = StateProvider<int>((ref) => 0);

final onboardingAiNameProvider = StateProvider<String>((ref) => '');

final onboardingFavoriteFoodProvider = StateProvider<String>((ref) => '');

final onboardingChatMessagesProvider = StateProvider<List<ChatMessage>>((ref) => []);

class ChatMessage {
  const ChatMessage({
    required this.text,
    required this.isUser,
  });

  final String text;
  final bool isUser;
}
