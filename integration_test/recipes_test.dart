import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:integration_test/integration_test.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:shopping_list/main.dart' as app;
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/core/providers/auth_provider.dart';
import 'package:shopping_list/services/auth_service.dart';
import 'package:shopping_list/app/recipes/widgets/add_recipe_dialog.dart';
import 'helpers/fake_storage_backend.dart';
import 'helpers/fake_revenuecat_service.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Recipes Integration Test', () {
    testWidgets('Full Recipes Flow: View empty, Add Recipe, Delete Recipe', (tester) async {
      final backend = FakeStorageBackend();
      final revenueCat = FakeRevenueCatService();
      revenueCat.setIsPremium(true);
      
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            firestoreServiceProvider.overrideWithValue(backend),
            revenueCatServiceProvider.overrideWithValue(revenueCat),
            authServiceProvider.overrideWithValue(AuthService(auth: MockFirebaseAuth(signedIn: true))),
          ],
          child: const app.MyApp(),
        ),
      );

      await tester.pumpAndSettle();

      // Navigate to Recipes tab (index 1)
      final recipesTab = find.byIcon(Icons.restaurant_menu_outlined);
      expect(recipesTab, findsOneWidget);
      await tester.tap(recipesTab);
      await tester.pumpAndSettle();

      // 1. Verify Empty State
      expect(find.text('Minhas Receitas'), findsOneWidget);
      expect(find.text('Nenhuma receita salva'), findsOneWidget);

      // 2. Open Add Recipe Dialog
      final addBtn = find.text('Nova Receita');
      await tester.tap(addBtn);
      await tester.pumpAndSettle();

      expect(find.byType(AddRecipeDialog), findsOneWidget);
      expect(find.text('Nome da Receita'), findsOneWidget);

      // 3. Fill Form
      await tester.enterText(find.widgetWithText(TextFormField, 'Nome da Receita'), 'Bolo de Chocolate');
      await tester.enterText(find.widgetWithText(TextFormField, 'Descrição Curta'), 'Bolo fofinho e rápido');
      await tester.enterText(find.widgetWithText(TextFormField, 'Ingrediente 1'), 'Chocolate em pó');
      
      // Add another ingredient
      await tester.tap(find.text('Adicionar Ingrediente'));
      await tester.pumpAndSettle();
      await tester.enterText(find.widgetWithText(TextFormField, 'Ingrediente 2'), 'Farinha de trigo');

      await tester.enterText(find.byType(TextFormField).last, 'Misture tudo e asse por 40 min'); // Instructions

      // 4. Save
      await tester.tap(find.text('SALVAR'));
      await tester.pumpAndSettle();

      // 5. Verify Recipe in List
      expect(find.text('Bolo de Chocolate'), findsOneWidget);
      expect(find.text('Bolo fofinho e rápido'), findsOneWidget);
      expect(find.textContaining('2 itens'), findsOneWidget);

      // 6. Delete Recipe
      await tester.tap(find.byIcon(Icons.delete_outline));
      await tester.pumpAndSettle();

      // Should be empty again
      expect(find.text('Bolo de Chocolate'), findsNothing);
      expect(find.text('Nenhuma receita salva'), findsOneWidget);
    });
  });
}
