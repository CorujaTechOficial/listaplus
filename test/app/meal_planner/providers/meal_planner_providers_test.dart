import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shopping_list/app/lists/providers/list_providers.dart';
import 'package:shopping_list/app/meal_planner/providers/meal_plan_cost_models.dart';
import 'package:shopping_list/app/meal_planner/providers/meal_planner_providers.dart';
import 'package:shopping_list/app/pantry/providers/pantry_providers.dart';
import 'package:shopping_list/app/recipes/providers/recipes_providers.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/models/unit.dart';
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
        mealType: 'lunch',
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
            'dinner',
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
      container.listen(mealPlansProvider(), (_, _) {});
      container.listen(shoppingListsProvider, (_, _) {});
      container.listen(recipesProvider, (_, _) {});
      container.listen(pantryItemsProvider, (_, _) {});

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

  group('Meal planner cost providers', () {
    test(
      'recipeCostDetailsProvider returns calculated details for a matching recipe',
      () async {
        final recipe = Recipe(
          id: 'r1',
          name: 'Lunch',
          description: 'Desc',
          ingredients: <ShoppingItem>[
            ShoppingItem(
              name: 'Rice',
              quantity: 1,
              estimatedPrice: 8,
              shoppingListId: 'list1',
              categoryId: 'cat1',
            ),
            ShoppingItem(
              name: 'Beans',
              quantity: 1,
              shoppingListId: 'list1',
              categoryId: 'cat1',
            ),
          ],
          instructions: const <String>['Cook'],
          yieldServings: 4,
          manualTotalCost: 20,
        );

        when(() => mockStorage.watchRecipes()).thenAnswer(
          (_) => Stream.value([recipe.toJson()]),
        );

        final details = await container.read(
          recipeCostDetailsProvider('r1').future,
        );

        expect(details, isNotNull);
        expect(details!.effectiveTotalCost, 20);
        expect(details.costPerServing, 5);
        expect(details.hasPartialPricing, isTrue);
      },
    );

    test('mealPlannerDayCostMapProvider aggregates meal cost per day', () async {
      final start = DateTime(2026, 6, 15);
      final end = DateTime(2026, 6, 21);
      final plans = <MealPlan>[
        MealPlan(
          date: DateTime(2026, 6, 20, 9),
          recipeId: 'r1',
          recipeName: 'Lunch',
          servings: 2,
        ),
        MealPlan(
          date: DateTime(2026, 6, 20, 19),
          recipeId: 'r2',
          recipeName: 'Dinner',
          servings: 1,
        ),
        MealPlan(
          date: DateTime(2026, 6, 21, 12),
          recipeId: 'missing',
          recipeName: 'Missing',
          servings: 3,
        ),
      ];

      final recipes = <Recipe>[
        Recipe(
          id: 'r1',
          name: 'Lunch',
          description: 'Desc',
          ingredients: <ShoppingItem>[],
          instructions: const <String>['Cook'],
          yieldServings: 4,
          manualTotalCost: 40,
        ),
        Recipe(
          id: 'r2',
          name: 'Dinner',
          description: 'Desc',
          ingredients: <ShoppingItem>[
            ShoppingItem(
              name: 'Tomato',
              quantity: 1,
              estimatedPrice: 12,
              shoppingListId: 'list1',
              categoryId: 'cat1',
            ),
            ShoppingItem(
              name: 'Onion',
              quantity: 1,
              shoppingListId: 'list1',
              categoryId: 'cat1',
            ),
          ],
          instructions: const <String>['Cook'],
          yieldServings: 2,
        ),
      ];

      when(
        () => mockStorage.watchMealPlans(
          start: any(named: 'start'),
          end: any(named: 'end'),
        ),
      ).thenAnswer((_) => Stream.value(plans.map((p) => p.toJson()).toList()));
      when(() => mockStorage.watchRecipes()).thenAnswer(
        (_) => Stream.value(recipes.map((recipe) => recipe.toJson()).toList()),
      );

      final dayMap = await container.read(
        mealPlannerDayCostMapProvider(start: start, end: end).future,
      );

      expect(dayMap.keys, {
        DateTime(2026, 6, 20),
        DateTime(2026, 6, 21),
      });

      expect(
        dayMap[DateTime(2026, 6, 20)],
        isA<DayMealCostData>()
            .having((data) => data.totalCost, 'totalCost', 26)
            .having((data) => data.mealCount, 'mealCount', 2)
            .having(
              (data) => data.hasPartialPricing,
              'hasPartialPricing',
              isTrue,
            ),
      );

      expect(
        dayMap[DateTime(2026, 6, 21)],
        isA<DayMealCostData>()
            .having((data) => data.totalCost, 'totalCost', 0)
            .having((data) => data.mealCount, 'mealCount', 1)
            .having(
              (data) => data.hasPartialPricing,
              'hasPartialPricing',
              isTrue,
            ),
      );
    });

    test(
      'mealPlannerSummaryProvider returns exact totals for a fully resolved recipe data set',
      () async {
        final weekStart = DateTime(2026, 6, 15);
        final weekEnd = DateTime(2026, 6, 21);
        final monthStart = DateTime(2026, 6, 1);
        final monthEnd = DateTime(2026, 6, 30);

        final plans = <MealPlan>[
          MealPlan(
            date: DateTime(2026, 6, 20),
            recipeId: 'r1',
            recipeName: 'Lunch',
            servings: 2,
          ),
          MealPlan(
            date: DateTime(2026, 6, 21),
            recipeId: 'r2',
            recipeName: 'Dinner',
            servings: 1,
          ),
        ];

        final recipes = <Recipe>[
          Recipe(
            id: 'r1',
            name: 'Lunch',
            description: 'Desc',
            ingredients: <ShoppingItem>[],
            instructions: const <String>['Cook'],
            yieldServings: 4,
            manualTotalCost: 40,
          ),
          Recipe(
            id: 'r2',
            name: 'Dinner',
            description: 'Desc',
            ingredients: <ShoppingItem>[
              ShoppingItem(
                name: 'Tomato',
                quantity: 1,
                estimatedPrice: 12,
                shoppingListId: 'list1',
                categoryId: 'cat1',
              ),
              ShoppingItem(
                name: 'Onion',
                quantity: 1,
                estimatedPrice: 14,
                shoppingListId: 'list1',
                categoryId: 'cat1',
              ),
            ],
            instructions: const <String>['Cook'],
            yieldServings: 2,
          ),
        ];

        when(
          () => mockStorage.watchMealPlans(
            start: any(named: 'start'),
            end: any(named: 'end'),
          ),
        ).thenAnswer((_) => Stream.value(plans.map((p) => p.toJson()).toList()));
        when(() => mockStorage.watchRecipes()).thenAnswer(
          (_) => Stream.value(
            recipes.map((recipe) => recipe.toJson()).toList(),
          ),
        );

        final summary = await container.read(
          mealPlannerSummaryProvider(
            weekStart: weekStart,
            weekEnd: weekEnd,
            monthStart: monthStart,
            monthEnd: monthEnd,
            focusedDay: DateTime(2026, 6, 20),
          ).future,
        );

        expect(summary.todayCost, 20);
        expect(summary.weekCost, 33);
        expect(summary.plannedMonthCost, 33);
        expect(summary.projectedMonthCost, closeTo(141.43, 0.01));
        expect(summary.weekHasPartialPricing, isFalse);
        expect(summary.monthHasPartialPricing, isFalse);
      },
    );

    test(
      'mealPlannerSummaryProvider marks missing recipe data as a partial estimate',
      () async {
        final weekStart = DateTime(2026, 6, 15);
        final weekEnd = DateTime(2026, 6, 21);
        final monthStart = DateTime(2026, 6, 1);
        final monthEnd = DateTime(2026, 6, 30);

        final plans = <MealPlan>[
          MealPlan(
            date: DateTime(2026, 6, 20),
            recipeId: 'r1',
            recipeName: 'Lunch',
            servings: 2,
          ),
          MealPlan(
            date: DateTime(2026, 6, 21),
            recipeId: 'missing',
            recipeName: 'Missing',
            servings: 3,
          ),
        ];

        final recipes = <Recipe>[
          Recipe(
            id: 'r1',
            name: 'Lunch',
            description: 'Desc',
            ingredients: <ShoppingItem>[],
            instructions: const <String>['Cook'],
            yieldServings: 4,
            manualTotalCost: 40,
          ),
        ];

        when(
          () => mockStorage.watchMealPlans(
            start: any(named: 'start'),
            end: any(named: 'end'),
          ),
        ).thenAnswer((_) => Stream.value(plans.map((p) => p.toJson()).toList()));
        when(() => mockStorage.watchRecipes()).thenAnswer(
          (_) => Stream.value(
            recipes.map((recipe) => recipe.toJson()).toList(),
          ),
        );

        final summary = await container.read(
          mealPlannerSummaryProvider(
            weekStart: weekStart,
            weekEnd: weekEnd,
            monthStart: monthStart,
            monthEnd: monthEnd,
            focusedDay: DateTime(2026, 6, 20),
          ).future,
        );

        expect(summary.todayCost, 20);
        expect(summary.weekCost, 20);
        expect(summary.plannedMonthCost, 20);
        expect(summary.weekHasPartialPricing, isTrue);
        expect(summary.monthHasPartialPricing, isTrue);
        expect(summary.projectedMonthCost, closeTo(85.71, 0.01));
      },
    );
  });
}
