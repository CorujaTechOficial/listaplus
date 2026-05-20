import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'firestore_service_provider.dart';

part 'locale_provider.g.dart';

@riverpod
class LocaleSetting extends _$LocaleSetting {
  @override
  Future<String?> build() async {
    try {
      final service = ref.watch(firestoreServiceProvider);
      return service.getLocale();
    } on FirebaseException {
      return null;
    }
  }

  Future<void> setLocale(String? locale) async {
    final service = ref.read(firestoreServiceProvider);
    await service.setLocale(locale ?? '');
    state = AsyncValue.data(locale);
  }
}
