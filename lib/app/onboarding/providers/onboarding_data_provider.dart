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

  void updateShoppingCategory(String category) {
    state = state.copyWith(shoppingCategory: category);
  }

  void updateHouseholdSize(String size) {
    state = state.copyWith(householdSize: size);
  }

  void updateGoals(List<String> goals) {
    state = state.copyWith(goals: goals);
  }
}
