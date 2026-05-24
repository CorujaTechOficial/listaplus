import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/data/models/user_profile_model.dart';
import 'package:shopping_list/domain/entities/user_profile.dart';

void main() {
  group('UserProfileModel', () {
    test('fromJson parses valid JSON', () {
      final json = {
        'uid': 'u1',
        'displayName': 'User',
        'email': 'a@b.com',
        'themeMode': 'dark',
        'locale': 'pt-BR',
        'isPremium': true,
        'currentListId': 'l1',
        'aiCredits': 10,
      };
      final model = UserProfileModel.fromJson(json);
      expect(model.uid, 'u1');
      expect(model.displayName, 'User');
      expect(model.isPremium, true);
    });

    test('toEntity and fromEntity roundtrip', () {
      final entity = UserProfile(uid: 'u1');
      final model = UserProfileModel.fromEntity(entity);
      final roundtrip = model.toEntity();
      expect(roundtrip.uid, 'u1');
    });
  });
}
