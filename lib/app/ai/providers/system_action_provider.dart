import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'system_action_provider.g.dart';

enum SystemActionType {
  openPaywall,
  requestReview,
  promptUpdate,
  shareReferral,
}

@riverpod
class SystemAction extends _$SystemAction {
  @override
  SystemActionType? build() => null;

  void trigger(SystemActionType action) {
    state = action;
    // Reset state after a short delay so listeners can react and then it returns to null
    // We use a small delay instead of microtask to ensure UI has time to catch the state change if needed,
    // though ref.listen handles it immediately.
    Future.delayed(const Duration(milliseconds: 100), () {
      if (state == action) {
        state = null;
      }
    });
  }
}
