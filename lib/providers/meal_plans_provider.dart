import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/meal_plan.dart';
import '../services/logger_service.dart';
import 'firestore_service_provider.dart';

part 'meal_plans_provider.g.dart';

@riverpod
class MealPlans extends _$MealPlans {
  StreamSubscription<List<MealPlan>>? _subscription;

  @override
  Future<List<MealPlan>> build({DateTime? start, DateTime? end}) async {
    final service = ref.watch(firestoreServiceProvider);
    
    _subscription?.cancel();
    
    final completer = Completer<List<MealPlan>>();
    
    _subscription = service.watchMealPlans(start: start, end: end)
        .map((list) => list.map(MealPlan.fromJson).toList())
        .listen(
      (data) {
        if (!completer.isCompleted) {
          completer.complete(data);
        } else {
          state = AsyncValue.data(data);
        }
      },
      onError: (Object e, StackTrace s) {
        LoggerService.error(e, stackTrace: s, message: 'MealPlansProvider: erro na stream');
        if (!completer.isCompleted) {
          completer.completeError(e, s);
        } else {
          state = AsyncValue.error(e, s);
        }
      },
    );

    ref.onDispose(() => _subscription?.cancel());

    return completer.future.timeout(
      const Duration(seconds: 15),
      onTimeout: () {
        LoggerService.log('MealPlansProvider: timeout no carregamento inicial', tag: 'MealPlans');
        throw TimeoutException('O servidor demorou muito para responder. Verifique sua conexão.');
      },
    );
  }

  Future<void> saveMealPlan(MealPlan mealPlan) async {
    final service = ref.read(firestoreServiceProvider);
    await service.saveMealPlan(mealPlan.toJson());
  }

  Future<void> deleteMealPlan(String id) async {
    final service = ref.read(firestoreServiceProvider);
    await service.deleteMealPlan(id);
  }
}
