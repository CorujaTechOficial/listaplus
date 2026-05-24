import '../../domain/entities/user_profile.dart';

class UserProfileModel {
  UserProfileModel({
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

  factory UserProfileModel.fromJson(Map<String, dynamic> json) {
    return UserProfileModel(
      uid: json['uid'] as String? ?? '',
      displayName: json['displayName'] as String?,
      email: json['email'] as String?,
      themeMode: json['themeMode'] as String?,
      locale: json['locale'] as String?,
      isPremium: json['isPremium'] as bool? ?? false,
      currentListId: json['currentListId'] as String?,
      aiCredits: (json['aiCredits'] as num?)?.toInt() ?? 0,
      createdAt: _parseDate(json['createdAt']),
      updatedAt: _parseDate(json['updatedAt']),
    );
  }

  factory UserProfileModel.fromEntity(UserProfile entity) {
    return UserProfileModel(
      uid: entity.uid,
      displayName: entity.displayName,
      email: entity.email,
      themeMode: entity.themeMode,
      locale: entity.locale,
      isPremium: entity.isPremium,
      currentListId: entity.currentListId,
      aiCredits: entity.aiCredits,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  static DateTime _parseDate(dynamic value) {
    if (value == null) return DateTime.now();
    if (value is DateTime) return value;
    return DateTime.tryParse(value.toString()) ?? DateTime.now();
  }

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

  UserProfile toEntity() {
    return UserProfile(
      uid: uid,
      displayName: displayName,
      email: email,
      themeMode: themeMode,
      locale: locale,
      isPremium: isPremium,
      currentListId: currentListId,
      aiCredits: aiCredits,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'displayName': displayName,
      'email': email,
      'themeMode': themeMode,
      'locale': locale,
      'isPremium': isPremium,
      'currentListId': currentListId,
      'aiCredits': aiCredits,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}
