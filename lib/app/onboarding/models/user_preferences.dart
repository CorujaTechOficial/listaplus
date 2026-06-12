class UserPreferences {
  const UserPreferences({
    this.displayName = '',
    this.favoriteFood = '',
    this.shoppingCategory = '',
    this.householdSize = 'solo',
    this.goals = const [],
    this.currentStep = 0,
    this.selectedPrompt = '',
    this.createdListId,
    this.createdItemCount = 0,
    this.creationSource,
    this.shoppingFrequency = '',
    this.mainPain = '',
    this.savingsGoal = '',
    this.listMethod = '',
  });

  factory UserPreferences.fromJson(Map<String, dynamic> json) {
    final rawGoals = json['goals'];
    return UserPreferences(
      displayName: json['displayName'] as String? ?? '',
      favoriteFood: json['favoriteFood'] as String? ?? '',
      shoppingCategory: json['shoppingCategory'] as String? ?? '',
      householdSize: json['householdSize'] as String? ?? 'solo',
      goals:
          rawGoals is List
              ? rawGoals.whereType<String>().toList(growable: false)
              : const [],
      currentStep: json['currentStep'] as int? ?? 0,
      selectedPrompt: json['selectedPrompt'] as String? ?? '',
      createdListId: json['createdListId'] as String?,
      createdItemCount: json['createdItemCount'] as int? ?? 0,
      creationSource: json['creationSource'] as String?,
      shoppingFrequency: json['shoppingFrequency'] as String? ?? '',
      mainPain: json['mainPain'] as String? ?? '',
      savingsGoal: json['savingsGoal'] as String? ?? '',
      listMethod: json['listMethod'] as String? ?? '',
    );
  }

  final String displayName;
  final String favoriteFood;
  final String shoppingCategory;
  final String householdSize;
  final List<String> goals;
  final int currentStep;
  final String selectedPrompt;
  final String? createdListId;
  final int createdItemCount;
  final String? creationSource;
  final String shoppingFrequency;
  final String mainPain;
  final String savingsGoal;
  final String listMethod;

  UserPreferences copyWith({
    String? displayName,
    String? favoriteFood,
    String? shoppingCategory,
    String? householdSize,
    List<String>? goals,
    int? currentStep,
    String? selectedPrompt,
    String? createdListId,
    int? createdItemCount,
    String? creationSource,
    String? shoppingFrequency,
    String? mainPain,
    String? savingsGoal,
    String? listMethod,
    bool clearCreatedList = false,
  }) {
    return UserPreferences(
      displayName: displayName ?? this.displayName,
      favoriteFood: favoriteFood ?? this.favoriteFood,
      shoppingCategory: shoppingCategory ?? this.shoppingCategory,
      householdSize: householdSize ?? this.householdSize,
      goals: goals ?? this.goals,
      currentStep: currentStep ?? this.currentStep,
      selectedPrompt: selectedPrompt ?? this.selectedPrompt,
      createdListId:
          clearCreatedList ? null : (createdListId ?? this.createdListId),
      createdItemCount: createdItemCount ?? this.createdItemCount,
      creationSource:
          clearCreatedList ? null : (creationSource ?? this.creationSource),
      shoppingFrequency: shoppingFrequency ?? this.shoppingFrequency,
      mainPain: mainPain ?? this.mainPain,
      savingsGoal: savingsGoal ?? this.savingsGoal,
      listMethod: listMethod ?? this.listMethod,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'displayName': displayName,
      'favoriteFood': favoriteFood,
      'shoppingCategory': shoppingCategory,
      'householdSize': householdSize,
      'goals': goals,
      'currentStep': currentStep,
      'selectedPrompt': selectedPrompt,
      'createdListId': createdListId,
      'createdItemCount': createdItemCount,
      'creationSource': creationSource,
      'shoppingFrequency': shoppingFrequency,
      'mainPain': mainPain,
      'savingsGoal': savingsGoal,
      'listMethod': listMethod,
    };
  }
}
