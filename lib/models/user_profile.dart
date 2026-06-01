class UserProfile {
  const UserProfile({
    this.preferredStore,
    this.dietaryRestrictions,
    this.avoidedStores,
    this.notes,
  });

  factory UserProfile.fromUserDoc(Map<String, dynamic>? userData) {
    final prefs = (userData?['preferences'] as Map<String, dynamic>?) ?? {};
    return UserProfile(
      preferredStore: prefs['preferred_store'] as String?,
      dietaryRestrictions: prefs['dietary_restrictions'] as String?,
      avoidedStores: prefs['avoided_stores'] as String?,
      notes: prefs['notes'] as String?,
    );
  }

  final String? preferredStore;
  final String? dietaryRestrictions;
  final String? avoidedStores;
  final String? notes;

  Map<String, String> toPreferencesMap() {
    final map = <String, String>{};
    if (preferredStore != null && preferredStore!.isNotEmpty) {
      map['preferred_store'] = preferredStore!;
    }
    if (dietaryRestrictions != null && dietaryRestrictions!.isNotEmpty) {
      map['dietary_restrictions'] = dietaryRestrictions!;
    }
    if (avoidedStores != null && avoidedStores!.isNotEmpty) {
      map['avoided_stores'] = avoidedStores!;
    }
    if (notes != null && notes!.isNotEmpty) {
      map['notes'] = notes!;
    }
    return map;
  }

  bool get isEmpty =>
      (preferredStore == null || preferredStore!.isEmpty) &&
      (dietaryRestrictions == null || dietaryRestrictions!.isEmpty) &&
      (avoidedStores == null || avoidedStores!.isEmpty) &&
      (notes == null || notes!.isEmpty);

  static const _sentinel = Object();

  UserProfile copyWith({
    Object? preferredStore = _sentinel,
    Object? dietaryRestrictions = _sentinel,
    Object? avoidedStores = _sentinel,
    Object? notes = _sentinel,
  }) {
    return UserProfile(
      preferredStore:
          identical(preferredStore, _sentinel) ? this.preferredStore : preferredStore as String?,
      dietaryRestrictions: identical(dietaryRestrictions, _sentinel)
          ? this.dietaryRestrictions
          : dietaryRestrictions as String?,
      avoidedStores:
          identical(avoidedStores, _sentinel) ? this.avoidedStores : avoidedStores as String?,
      notes: identical(notes, _sentinel) ? this.notes : notes as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'preferred_store': preferredStore,
      'dietary_restrictions': dietaryRestrictions,
      'avoided_stores': avoidedStores,
      'notes': notes,
    };
  }

  @override
  String toString() {
    final parts = <String>[];
    if (preferredStore != null && preferredStore!.isNotEmpty) {
      parts.add('Mercado preferido: $preferredStore');
    }
    if (dietaryRestrictions != null && dietaryRestrictions!.isNotEmpty) {
      parts.add('Restrição alimentar: $dietaryRestrictions');
    }
    if (avoidedStores != null && avoidedStores!.isNotEmpty) {
      parts.add('Mercados a evitar: $avoidedStores');
    }
    if (notes != null && notes!.isNotEmpty) {
      parts.add('Observações: $notes');
    }
    return parts.join('\n');
  }
}
