import 'dart:convert';
import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/user_preferences.dart';

part 'onboarding_data_provider.g.dart';

@Riverpod(keepAlive: true)
class OnboardingData extends _$OnboardingData {
  static const _draftKey = 'onboarding_draft_v2';
  Future<void> _pendingWrite = Future<void>.value();

  @override
  UserPreferences build() {
    return const UserPreferences();
  }

  Future<void> hydrate() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_draftKey);
    if (raw == null || raw.isEmpty) {
      return;
    }
    final decoded = jsonDecode(raw);
    if (decoded is Map<String, dynamic>) {
      state = UserPreferences.fromJson(decoded);
    }
  }

  void updateCurrentStep(int step) {
    state = state.copyWith(currentStep: step);
    _persist();
  }

  void updateDisplayName(String name) {
    state = state.copyWith(displayName: name);
    _persist();
  }

  void updateFavoriteFood(String food) {
    state = state.copyWith(favoriteFood: food);
    _persist();
  }

  void updateShoppingCategory(String category) {
    state = state.copyWith(shoppingCategory: category);
    _persist();
  }

  void updateHouseholdSize(String size) {
    state = state.copyWith(householdSize: size);
    _persist();
  }

  void updateGoals(List<String> goals) {
    state = state.copyWith(goals: goals);
    _persist();
  }

  void updateSelectedPrompt(String prompt) {
    state = state.copyWith(selectedPrompt: prompt);
    _persist();
  }

  void updateShoppingFrequency(String value) {
    state = state.copyWith(shoppingFrequency: value);
    _persist();
  }

  void updateMainPain(String value) {
    state = state.copyWith(mainPain: value);
    _persist();
  }

  void updateSavingsGoal(String value) {
    state = state.copyWith(savingsGoal: value);
    _persist();
  }

  void updateListMethod(String value) {
    state = state.copyWith(listMethod: value);
    _persist();
  }

  void recordCreatedList({
    required String listId,
    required int itemCount,
    required String source,
  }) {
    state = state.copyWith(
      createdListId: listId,
      createdItemCount: itemCount,
      creationSource: source,
    );
    _persist();
  }

  void clearCreatedList() {
    state = state.copyWith(createdItemCount: 0, clearCreatedList: true);
    _persist();
  }

  Future<void> clearDraft() async {
    await flush();
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_draftKey);
  }

  Future<void> flush() => _pendingWrite;

  void _persist() {
    final snapshot = state;
    _pendingWrite = _pendingWrite.then((_) => _persistState(snapshot));
    unawaited(_pendingWrite);
  }

  Future<void> _persistState(UserPreferences value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_draftKey, jsonEncode(value.toJson()));
  }
}
