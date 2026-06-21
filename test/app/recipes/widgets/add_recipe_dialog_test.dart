import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shopping_list/app/lists/providers/categories_provider.dart';
import 'package:shopping_list/app/recipes/widgets/add_recipe_dialog.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/models/category_data.dart';
import 'package:shopping_list/services/storage_backend.dart';
import 'package:shopping_list/theme/app_theme.dart';

class _MockStorageBackend extends Mock implements StorageBackend {}

void main() {
  setUpAll(() {
    registerFallbackValue(<String, dynamic>{});
  });

  late _MockStorageBackend storage;

  setUp(() {
    storage = _MockStorageBackend();

    when(() => storage.loadCategories()).thenAnswer(
      (_) async => CategoryData.defaults,
    );
    when(() => storage.watchCategories()).thenAnswer(
      (_) => Stream.value(CategoryData.defaults),
    );
    when(() => storage.saveRecipe(any())).thenAnswer((_) async {});
  });

  Finder _fieldWithLabel(String label) {
    return find.byWidgetPredicate(
      (widget) =>
          widget is TextField && widget.decoration?.labelText == label,
    );
  }

  Widget _buildSubject() {
    return ProviderScope(
      overrides: [
        firestoreServiceProvider.overrideWithValue(storage),
      ],
      child: MaterialApp(
        theme: AppTheme.light(Color(0xFF4CAF50)),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const AddRecipeDialog(),
      ),
    );
  }

  testWidgets(
    'AddRecipeDialog saves yieldServings and manualTotalCost',
    (tester) async {
      await tester.pumpWidget(_buildSubject());
      await tester.pumpAndSettle();

      final l10n = AppLocalizations.of(
        tester.element(find.byType(AddRecipeDialog)),
      )!;

      await tester.enterText(_fieldWithLabel(l10n.recipeName), 'Soup');
      await tester.enterText(_fieldWithLabel(l10n.prepTimeMinutes), '30');
      await tester.enterText(_fieldWithLabel(l10n.recipeYieldServings), '4');
      await tester.enterText(_fieldWithLabel(l10n.recipeManualTotalCost), '42,50');
      await tester.tap(find.text(l10n.saveRecipe));
      await tester.pumpAndSettle();

      verify(
        () => storage.saveRecipe(
          any(
            that: predicate<Map<String, dynamic>>(
              (recipe) =>
                  recipe['name'] == 'Soup' &&
                  recipe['yieldServings'] == 4 &&
                  recipe['manualTotalCost'] == 42.5,
            ),
          ),
        ),
      ).called(1);
    },
  );
}
