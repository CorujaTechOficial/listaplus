import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shopping_list/app/recipes/screens/recipe_detail_screen.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/core/utils/formatters.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/recipe.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/services/storage_backend.dart';
import 'package:shopping_list/theme/app_theme.dart';

class _MockStorageBackend extends Mock implements StorageBackend {}

void main() {
  late _MockStorageBackend storage;

  setUp(() {
    storage = _MockStorageBackend();

    when(() => storage.watchRecipes()).thenAnswer(
      (_) => Stream.value([
        Recipe(
          id: 'r1',
          name: 'Soup',
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
          manualTotalCost: 40,
        ).toJson(),
      ]),
    );
    when(() => storage.loadPantryItems()).thenAnswer((_) async => []);
    when(() => storage.getUserData()).thenAnswer(
      (_) async => <String, dynamic>{'currencyCode': 'BRL'},
    );
  });

  Widget _buildSubject() {
    return ProviderScope(
      overrides: [
        firestoreServiceProvider.overrideWithValue(storage),
      ],
      child: MaterialApp(
        theme: AppTheme.light(Color(0xFF4CAF50)),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const RecipeDetailScreen(recipeId: 'r1'),
      ),
    );
  }

  testWidgets('RecipeDetailScreen shows yield and estimated costs', (
    tester,
  ) async {
    await tester.pumpWidget(_buildSubject());
    await tester.pumpAndSettle();

    final l10n = AppLocalizations.of(
      tester.element(find.byType(RecipeDetailScreen)),
    )!;

    expect(find.text(l10n.recipeServesCount(4)), findsOneWidget);
    expect(find.text(l10n.recipeEstimatedTotalCost), findsOneWidget);
    expect(find.text(formatCurrency(40, 'BRL')), findsOneWidget);
    expect(
      find.text(
        l10n.recipeEstimatedCostPerServing(formatCurrency(10, 'BRL')),
      ),
      findsOneWidget,
    );
    expect(find.text(l10n.recipeEstimatePartial), findsOneWidget);
  });
}
