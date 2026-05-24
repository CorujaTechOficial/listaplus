class UserProfile {
  UserProfile({
    required this.uid,
    this.displayName,
    this.email,
    this.themeMode,
    this.locale,
    this.isPremium = false,
    this.currentListId,
    this.aiCredits = 0,
    DateTime? createdAt,
    DateTime? updatedAt,
  })  : createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();

  final String uid;
  final String? displayName;
  final String? email;
  final String? themeMode;
  final String? locale;
  final bool isPremium;
  final String? currentListId;
  final int aiCredits;
  final DateTime createdAt;
  final DateTime updatedAt;

  static const _sentinel = Object();

  UserProfile copyWith({
    String? uid,
    Object? displayName = _sentinel,
    Object? email = _sentinel,
    Object? themeMode = _sentinel,
    Object? locale = _sentinel,
    bool? isPremium,
    Object? currentListId = _sentinel,
    int? aiCredits,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return UserProfile(
      uid: uid ?? this.uid,
      displayName: identical(displayName, _sentinel) ? this.displayName : displayName as String?,
      email: identical(email, _sentinel) ? this.email : email as String?,
      themeMode: identical(themeMode, _sentinel) ? this.themeMode : themeMode as String?,
      locale: identical(locale, _sentinel) ? this.locale : locale as String?,
      isPremium: isPremium ?? this.isPremium,
      currentListId: identical(currentListId, _sentinel) ? this.currentListId : currentListId as String?,
      aiCredits: aiCredits ?? this.aiCredits,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
