import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shopping_list/app/recipes/screens/recipes_screen.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/recipe.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/services/storage_backend.dart';
import 'package:shopping_list/theme/app_theme.dart';

class _MockStorage extends Mock implements StorageBackend {}

void main() {
  late _MockStorage storage;

  setUp(() {
    storage = _MockStorage();
    when(() => storage.watchRecipes()).thenAnswer(
      (_) => Stream.value([
        Recipe(
          id: 'r1',
          name: 'Frango Assado',
          description: 'Delicioso',
          ingredients: [
            ShoppingItem(
              name: 'Frango',
              quantity: 1,
              estimatedPrice: 30,
              shoppingListId: 'l1',
              categoryId: 'c1',
            ),
          ],
          instructions: ['Assar'],
          yieldServings: 4,
          manualTotalCost: 40,
        ).toJson(),
      ]),
    );
    when(() => storage.loadPantryItems()).thenAnswer((_) async => []);
    when(() => storage.getUserData())
        .thenAnswer((_) async => {'currencyCode': 'BRL'});
    when(() => storage.watchLists()).thenAnswer((_) => Stream.value([]));
    when(() => storage.watchSharedListRefs())
        .thenAnswer((_) => Stream.value({}));
  });

  Widget buildSubject() {
    return ProviderScope(
      overrides: [
        firestoreServiceProvider.overrideWithValue(storage),
      ],
      child: MaterialApp(
        theme: AppTheme.light(const Color(0xFF4CAF50)),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const RecipesScreen(),
      ),
    );
  }

  testWidgets('recipe grid card shows yield and cost', (tester) async {
    await tester.pumpWidget(buildSubject());
    await tester.pumpAndSettle();

    // Cost metadata joined in one text widget — use textContaining
    // Cost per serving: R$ 40 / 4 = R$ 10
    expect(
      find.textContaining(formatCurrency(10, 'BRL')),
      findsAtLeastNWidgets(1),
    );
    // Total cost also visible
    expect(
      find.textContaining(formatCurrency(40, 'BRL')),
      findsAtLeastNWidgets(1),
    );
  });

  testWidgets('recipe grid card hides cost row when cost is zero', (
    tester,
  ) async {
    when(() => storage.watchRecipes()).thenAnswer(
      (_) => Stream.value([
        Recipe(
          id: 'r2',
          name: 'Sem Custo',
          description: 'Gratis',
          ingredients: const [],
          instructions: const [],
          yieldServings: 2,
        ).toJson(),
      ]),
    );

    await tester.pumpWidget(buildSubject());
    await tester.pumpAndSettle();

    final l10n = AppLocalizations.of(
      tester.element(find.byType(RecipesScreen)),
    )!;
    expect(
      find.text(
        l10n.recipeEstimatedCostPerServing(formatCurrency(0, 'BRL')),
      ),
      findsNothing,
    );
  });
}
