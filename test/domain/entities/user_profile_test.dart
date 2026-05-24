import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/domain/entities/user_profile.dart';

void main() {
  group('UserProfile', () {
    test('constructor sets default values', () {
      final profile = UserProfile(uid: 'uid1');
      expect(profile.uid, 'uid1');
      expect(profile.displayName, isNull);
      expect(profile.email, isNull);
      expect(profile.themeMode, isNull);
      expect(profile.isPremium, false);
      expect(profile.aiCredits, 0);
    });

    test('copyWith updates fields', () {
      final profile = UserProfile(uid: 'uid1');
      final copy = profile.copyWith(displayName: 'User', isPremium: true);
      expect(copy.displayName, 'User');
      expect(copy.isPremium, true);
      expect(copy.uid, 'uid1');
    });

    test('copyWith clears nullable fields', () {
      final profile = UserProfile(uid: 'uid1', displayName: 'User', email: 'a@b.com');
      final copy = profile.copyWith(displayName: null, email: null);
      expect(copy.displayName, isNull);
      expect(copy.email, isNull);
    });
  });
}
