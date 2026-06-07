import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/app/meal_planner/providers/meal_planner_providers.dart';
import 'package:shopping_list/app/pantry/providers/pantry_providers.dart';
import 'package:shopping_list/app/recipes/providers/recipes_providers.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/domain/entities/unit.dart';
import 'package:shopping_list/models/meal_plan.dart';
import 'package:shopping_list/models/pantry_item.dart';
import 'package:shopping_list/models/recipe.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/services/storage_backend.dart';
import 'package:riverpod/riverpod.dart';

class MockStorageBackend extends Mock implements StorageBackend {}

void main() {
  setUpAll(() {
    registerFallbackValue(Unit.un);
    registerFallbackValue(MealType.lunch);
    registerFallbackValue(<String, dynamic>{});
    registerFallbackValue(ShoppingItem(name: '', quantity: 0, shoppingListId: '', categoryId: ''));
  });

  late MockStorageBackend mockStorage;
  late ProviderContainer container;

  setUp(() {
    mockStorage = MockStorageBackend();
    
    // Default mocks for common calls to avoid Null errors
    when(() => mockStorage.watchMealPlans(start: any(named: 'start'), end: any(named: 'end')))
        .thenAnswer((_) => Stream.value([]));
    when(() => mockStorage.watchRecipes())
        .thenAnswer((_) => Stream.value([]));
    when(() => mockStorage.loadPantryItems())
        .thenAnswer((_) async => []);
    when(() => mockStorage.getCurrentListId())
        .thenAnswer((_) async => 'list1');
    when(() => mockStorage.watchLists())
        .thenAnswer((_) => Stream.value([]));
    when(() => mockStorage.watchSharedListRefs())
        .thenAnswer((_) => Stream.value({}));
    when(() => mockStorage.watchItems(any()))
        .thenAnswer((_) => Stream.value([]));
    when(() => mockStorage.saveMealPlan(any()))
        .thenAnswer((_) async => {});
    when(() => mockStorage.saveItem(any()))
        .thenAnswer((_) async => {});
    when(() => mockStorage.getUserData())
        .thenAnswer((_) async => {});
    when(() => mockStorage.updateUserData(any()))
        .thenAnswer((_) async => {});

    container = ProviderContainer(
      overrides: [
        firestoreServiceProvider.overrideWithValue(mockStorage),
      ],
    );
  });

  tearDown(() {
    container.dispose();
  });

  group('MealPlans Logic', () {
    test('moveMealPlan updates date and type and saves', () async {
      final date = DateTime(2024, 1, 1);
      final newDate = DateTime(2024, 1, 2);
      final mealPlan = MealPlan(
        id: '1',
        date: date,
        recipeId: 'r1',
        recipeName: 'Recipe 1',
        mealType: MealType.lunch,
      );

      when(() => mockStorage.watchMealPlans(
            start: any(named: 'start'),
            end: any(named: 'end'),
          )).thenAnswer((_) => Stream.value([mealPlan.toJson()]));

      // Wait for build to complete
      await container.read(mealPlansProvider().future);

      // Call moveMealPlan
      await container.read(mealPlansProvider().notifier).moveMealPlan(
            '1',
            newDate,
            MealType.dinner,
          );

      // Verify saveMealPlan was called with updated values
      verify(() => mockStorage.saveMealPlan(
            any(that: predicate<Map<String, dynamic>>((json) {
              return json['id'] == '1' &&
                  json['date'] == newDate.toIso8601String() &&
                  json['mealType'] == 'dinner';
            })),
          )).called(1);
    });

    test('generateShoppingListFromWeek subtracts pantry items', () async {
      final mealPlan = MealPlan(
        date: DateTime.now(),
        recipeId: 'r1',
        recipeName: 'Recipe 1',
        servings: 2,
      );

      final recipe = Recipe(
        id: 'r1',
        name: 'Recipe 1',
        description: 'Test description',
        instructions: ['Test instructions'],
        ingredients: [
          ShoppingItem(name: 'Ingredient 1', quantity: 2, unit: Unit.un, shoppingListId: 'list1', categoryId: 'cat1'), // Total needed: 4
          ShoppingItem(name: 'Ingredient 2', quantity: 500, unit: Unit.g, shoppingListId: 'list1', categoryId: 'cat1'), // Total needed: 1000
        ],
      );

      final pantryItems = [
        PantryItem(name: 'Ingredient 1', currentQuantity: 2, idealQuantity: 5, unit: Unit.un),
        PantryItem(name: 'Ingredient 2', currentQuantity: 1200, idealQuantity: 1000, unit: Unit.g),
      ];

      // Update mocks for this specific test
      when(() => mockStorage.watchMealPlans(
            start: any(named: 'start'),
            end: any(named: 'end'),
          )).thenAnswer((_) => Stream.value([mealPlan.toJson()]));

      when(() => mockStorage.watchRecipes())
          .thenAnswer((_) => Stream.value([recipe.toJson()]));

      when(() => mockStorage.loadPantryItems())
          .thenAnswer((_) async => pantryItems);

      // Keep providers alive during the test
      container.listen(mealPlansProvider(), (_, __) {});
      container.listen(shoppingListsProvider, (_, __) {});
      container.listen(recipesProvider, (_, __) {});
      container.listen(pantryItemsProvider, (_, __) {});

      // Trigger build and wait for it
      await container.read(mealPlansProvider().future);
      await container.read(recipesProvider.future);
      await container.read(pantryItemsProvider.future);

      // Call generateShoppingListFromWeek
      final count = await container.read(mealPlansProvider().notifier).generateShoppingListFromWeek();

      // Ingredient 1: 4 needed - 2 available = 2 added
      // Ingredient 2: 1000 needed - 1200 available = 0 added
      
      expect(count, 1);

      verify(() => mockStorage.saveItem(
            any(that: predicate<ShoppingItem>((item) {
              return item.name == 'Ingredient 1' && item.quantity == 2;
            })),
          )).called(1);

      verifyNever(() => mockStorage.saveItem(
            any(that: predicate<ShoppingItem>((item) {
              return item.name == 'Ingredient 2';
            })),
          ));
    }, timeout: const Timeout(Duration(seconds: 10)));
  });
}
