import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/pantry/widgets/add_pantry_item_dialog.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/core/providers/monetization_providers.dart';
import 'package:shopping_list/core/providers/analytics_provider.dart';
import 'package:shopping_list/services/analytics_service.dart';
import 'package:shopping_list/models/unit.dart';
import '../helpers/fake_storage_backend.dart';
import '../helpers/fake_revenuecat_service.dart';

Widget wrapWithProviders(Widget child, {required FakeStorageBackend backend}) {
  return ProviderScope(
    overrides: [
      firestoreServiceProvider.overrideWithValue(backend),
      revenueCatServiceProvider.overrideWithValue(FakeRevenueCatService()),
      analyticsServiceProvider.overrideWithValue(AnalyticsService()),
    ],
    child: MaterialApp(
      locale: const Locale('pt', 'BR'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: Scaffold(body: child),
    ),
  );
}

void main() {
  group('AddPantryItemDialog', () {
    late FakeStorageBackend backend;

    setUp(() {
      backend = FakeStorageBackend();
    });

    testWidgets('renders all fields', (tester) async {
      await tester.pumpWidget(wrapWithProviders(
        const AddPantryItemDialog(),
        backend: backend,
      ));

      expect(find.text('Adicionar à Dispensa'), findsOneWidget);
      expect(find.byType(TextFormField), findsNWidgets(4)); // Name, Ideal, Current, Price
      expect(find.byType(DropdownButtonFormField<Unit>), findsOneWidget); // Unit
      expect(find.byType(DropdownButtonFormField<String>), findsOneWidget); // Category
      expect(find.byType(SwitchListTile), findsOneWidget);
    });

    testWidgets('shows error when name is empty', (tester) async {
      await tester.pumpWidget(wrapWithProviders(
        const AddPantryItemDialog(),
        backend: backend,
      ));

      await tester.tap(find.text('Adicionar'));
      await tester.pump();

      expect(find.text('Campo obrigatório'), findsWidgets); // Name and maybe others if empty
    });

    testWidgets('adds item successfully', (tester) async {
      await tester.pumpWidget(wrapWithProviders(
        const AddPantryItemDialog(),
        backend: backend,
      ));

      await tester.enterText(find.byType(TextFormField).at(0), 'Arroz');
      await tester.enterText(find.byType(TextFormField).at(1), '5');
      await tester.enterText(find.byType(TextFormField).at(2), '2');
      await tester.enterText(find.byType(TextFormField).at(3), '20.50');

      await tester.tap(find.text('Adicionar'));
      await tester.pumpAndSettle();

      final items = await backend.loadPantryItems();
      expect(items.length, 1);
      expect(items.first.name, 'Arroz');
      expect(items.first.idealQuantity, 5);
      expect(items.first.currentQuantity, 2);
      expect(items.first.estimatedPrice, 20.50);
      expect(items.first.trackStock, true);
    });

    testWidgets('can toggle track stock', (tester) async {
      await tester.pumpWidget(wrapWithProviders(
        const AddPantryItemDialog(),
        backend: backend,
      ));

      await tester.tap(find.byType(SwitchListTile));
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextFormField).at(0), 'Feijão');
      await tester.enterText(find.byType(TextFormField).at(1), '2');
      await tester.enterText(find.byType(TextFormField).at(2), '0');

      await tester.tap(find.text('Adicionar'));
      await tester.pumpAndSettle();

      final items = await backend.loadPantryItems();
      expect(items.length, 1);
      expect(items.first.name, 'Feijão');
      expect(items.first.trackStock, false);
    });
  });
}
