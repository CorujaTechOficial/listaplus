import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shopping_list/app/meal_planner/widgets/meal_day_card.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/meal_plan.dart';
import 'package:shopping_list/services/storage_backend.dart';
import 'package:shopping_list/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _MockStorage extends Mock implements StorageBackend {}

void main() {
  late _MockStorage storage;
  final date = DateTime(2026, 6, 20); // a Saturday

  setUpAll(() {
    registerFallbackValue(DateTime.now());
  });

  setUp(() {
    storage = _MockStorage();
    SharedPreferences.setMockInitialValues({});

    when(() => storage.watchMealPlans(
          start: any(named: 'start'),
          end: any(named: 'end'),
        )).thenAnswer((_) => Stream.value([]));
    when(() => storage.watchRecipes()).thenAnswer((_) => Stream.value([]));
    when(() => storage.loadPantryItems()).thenAnswer((_) async => []);
    when(() => storage.watchMealTypes()).thenAnswer((_) => Stream.value([]));
    when(() => storage.saveMealPlan(any())).thenAnswer((_) async => {});
  });

  Widget buildSubject({
    required List<MealPlan> plans,
    required void Function(MealPlan plan) onDelete,
  }) {
    return ProviderScope(
      overrides: [
        firestoreServiceProvider.overrideWithValue(storage),
      ],
      child: MaterialApp(
        theme: AppTheme.light(const Color(0xFF4CAF50)),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(
          body: MealDayCard(
            date: date,
            plans: plans,
            isToday: false,
            onTap: () {},
            onDeleteMeal: onDelete,
          ),
        ),
      ),
    );
  }

  testWidgets('renders EmptyDaySlot when no plans present', (tester) async {
    await tester.pumpWidget(buildSubject(plans: [], onDelete: (_) {}));
    await tester.pumpAndSettle();

    final l10n = AppLocalizations.of(
      tester.element(find.byType(MealDayCard)),
    )!;
    expect(find.text(l10n.mealPlannerNoMealsHint), findsOneWidget);
  });

  testWidgets('renders MealEntryTile and clicking Duplicate opens Sheet', (tester) async {
    final plan = MealPlan(
      id: 'meal_1',
      date: date,
      recipeId: 'recipe_1',
      recipeName: 'Pancakes',
      servings: 2,
      mealType: 'breakfast',
    );

    await tester.pumpWidget(buildSubject(
      plans: [plan],
      onDelete: (_) {},
    ));
    await tester.pumpAndSettle();

    // Verify recipe name is rendered
    expect(find.text('Pancakes'), findsOneWidget);

    // Find PopupMenuButton
    final popupMenu = find.byIcon(Icons.more_vert);
    expect(popupMenu, findsOneWidget);

    // Open PopupMenu
    await tester.tap(popupMenu);
    await tester.pumpAndSettle();

    final l10n = AppLocalizations.of(
      tester.element(find.byType(MealDayCard)),
    )!;

    // Verify Duplicate & Delete options are visible
    expect(find.text(l10n.mealPlannerDuplicate), findsOneWidget);
    expect(find.text(l10n.delete), findsOneWidget);

    // Tap Duplicate option
    await tester.tap(find.text(l10n.mealPlannerDuplicate));
    await tester.pumpAndSettle();

    // Check that duplication bottom sheet is open
    expect(find.text(l10n.mealPlannerSelectDestinationDay), findsOneWidget);

    // Check that current day label is visible on the current day row
    expect(find.text(l10n.mealPlannerCurrentDayLabel), findsOneWidget);
  });

  testWidgets('renders MealEntryTile and clicking Edit opens AddMealPlanSheet', (tester) async {
    final plan = MealPlan(
      id: 'meal_1',
      date: date,
      recipeId: 'recipe_1',
      recipeName: 'Pancakes',
      servings: 2,
      mealType: 'breakfast',
    );

    await tester.pumpWidget(buildSubject(
      plans: [plan],
      onDelete: (_) {},
    ));
    await tester.pumpAndSettle();

    // Find PopupMenuButton
    final popupMenu = find.byIcon(Icons.more_vert);
    expect(popupMenu, findsOneWidget);

    // Open PopupMenu
    await tester.tap(popupMenu);
    await tester.pumpAndSettle();

    final l10n = AppLocalizations.of(
      tester.element(find.byType(MealDayCard)),
    )!;

    // Verify Edit option is visible
    expect(find.text(l10n.edit), findsOneWidget);

    // Tap Edit option
    await tester.tap(find.text(l10n.edit));
    await tester.pumpAndSettle();

    // Check that edit bottom sheet is open
    expect(find.text(l10n.mealPlannerEditMeal), findsOneWidget);
  });
}
