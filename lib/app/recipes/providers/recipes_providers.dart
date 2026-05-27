import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/models/recipe.dart';
import 'package:shopping_list/services/logger_service.dart';

part 'recipes_providers.g.dart';

@riverpod
class Recipes extends _$Recipes {
  StreamSubscription<List<Recipe>>? _subscription;

  @override
  Future<List<Recipe>> build() async {
    final service = ref.watch(firestoreServiceProvider);

    unawaited(_subscription?.cancel());

    final completer = Completer<List<Recipe>>();

    _subscription = service.watchRecipes()
        .map((list) => list.map(Recipe.fromJson).toList())
        .listen(
      (data) {
        if (!completer.isCompleted) {
          completer.complete(data);
        } else {
          state = AsyncValue.data(data);
        }
      },
      onError: (Object e, StackTrace s) {
        LoggerService.error(e, stackTrace: s, message: 'RecipesProvider: erro na stream');
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
        LoggerService.log('RecipesProvider: timeout no carregamento inicial', tag: 'Recipes');
        throw TimeoutException('O servidor demorou muito para responder. Verifique sua conexão.');
      },
    );
  }

  Future<void> saveRecipe(Recipe recipe) async {
    final service = ref.read(firestoreServiceProvider);
    await service.saveRecipe(recipe.toJson());
  }

  Future<void> deleteRecipe(String id) async {
    final service = ref.read(firestoreServiceProvider);
    await service.deleteRecipe(id);
  }

  Future<void> updateRecipe(Recipe recipe) async {
    final service = ref.read(firestoreServiceProvider);
    await service.saveRecipe(recipe.toJson());
  }

  Future<String?> uploadRecipeImage(String recipeId, String filePath) async {
    final service = ref.read(firestoreServiceProvider);
    return service.uploadRecipeImage(recipeId, filePath);
  }
}
