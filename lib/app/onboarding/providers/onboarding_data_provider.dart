import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/user_preferences.dart';

part 'onboarding_data_provider.g.dart';

@Riverpod(keepAlive: true)
class OnboardingData extends _$OnboardingData {
  @override
  UserPreferences build() {
    return const UserPreferences();
  }

  void updateDisplayName(String name) {
    state = state.copyWith(displayName: name);
  }

  void updateFavoriteFood(String food) {
    state = state.copyWith(favoriteFood: food);
  }
}
