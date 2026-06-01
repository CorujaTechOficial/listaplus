class UserPreferences {
  const UserPreferences({
    this.displayName = '',
    this.favoriteFood = '',
  });

  final String displayName;
  final String favoriteFood;

  UserPreferences copyWith({
    String? displayName,
    String? favoriteFood,
  }) {
    return UserPreferences(
      displayName: displayName ?? this.displayName,
      favoriteFood: favoriteFood ?? this.favoriteFood,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'displayName': displayName,
      'favoriteFood': favoriteFood,
    };
  }
}
