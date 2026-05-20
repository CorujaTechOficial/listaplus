import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'firestore_service_provider.dart';

part 'price_history_provider.g.dart';

@riverpod
class PriceHistory extends _$PriceHistory {
  @override
  Map<String, double> build() {
    _loadHistory();
    return {};
  }

  Future<void> _loadHistory() async {
    final service = ref.read(firestoreServiceProvider);
    final data = await service.getUserData();
    if (data != null && data['priceHistory'] != null) {
      final history = data['priceHistory'] as Map<String, dynamic>;
      state = history.map((key, value) => MapEntry(key, (value as num).toDouble()));
    }
  }

  Future<void> updatePrice(String name, double price) async {
    final nameNormalized = name.trim().toLowerCase();
    if (nameNormalized.isEmpty) {
      return;
    }

    final current = Map<String, double>.from(state);
    current[nameNormalized] = price;
    
    state = current;
    
    final service = ref.read(firestoreServiceProvider);
    await service.updateUserData({'priceHistory': state});
  }

  double? getPreviousPrice(String name) {
    return state[name.trim().toLowerCase()];
  }
}
