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
    } on Exception {
      return null;
    }
  }

  Future<void> setLocale(String? locale) async {
    final service = ref.read(firestoreServiceProvider);
    final previous = state.value;
    state = AsyncValue.data(locale);
    try {
      await service.setLocale(locale);
    } on Exception {
      state = AsyncValue.data(previous);
      rethrow;
    }
  }
}
