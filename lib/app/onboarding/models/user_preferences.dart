class UserPreferences {
  const UserPreferences({
    this.displayName = '',
    this.favoriteFood = '',
    this.shoppingCategory = '',
    this.householdSize = '',
    this.goals = const [],
  });

  final String displayName;
  final String favoriteFood;
  final String shoppingCategory;
  final String householdSize;
  final List<String> goals;

  UserPreferences copyWith({
    String? displayName,
    String? favoriteFood,
    String? shoppingCategory,
    String? householdSize,
    List<String>? goals,
  }) {
    return UserPreferences(
      displayName: displayName ?? this.displayName,
      favoriteFood: favoriteFood ?? this.favoriteFood,
      shoppingCategory: shoppingCategory ?? this.shoppingCategory,
      householdSize: householdSize ?? this.householdSize,
      goals: goals ?? this.goals,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'displayName': displayName,
      'favoriteFood': favoriteFood,
      'shoppingCategory': shoppingCategory,
      'householdSize': householdSize,
      'goals': goals,
    };
  }
}
