import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/screens/paywall_screen.dart';
import 'package:shopping_list/services/revenuecat_service.dart';
import '../helpers/test_widgets.dart';
import '../helpers/fake_revenuecat_service.dart';

void main() {
  group('PaywallScreen', () {
    late FakeRevenueCatService fakeRevenueCat;

    setUp(() {
      fakeRevenueCat = FakeRevenueCatService();
    });

    testWidgets('renders loading state initially', (tester) async {
      await tester.pumpWidget(wrapWithProviders(const PaywallScreen(), revenueCat: fakeRevenueCat));
      expect(find.byType(CircularProgressIndicator), findsWidgets);
    });

    testWidgets('renders packages after loading', (tester) async {
      await tester.pumpWidget(wrapWithProviders(const PaywallScreen(), revenueCat: fakeRevenueCat));
      await tester.pumpAndSettle();

      expect(find.text('Plano Anual'), findsOneWidget);
      expect(find.text('Plano Mensal'), findsOneWidget);
      expect(find.text('Plano Vitalício'), findsOneWidget);
    });

    testWidgets('can select a package', (tester) async {
      await tester.pumpWidget(wrapWithProviders(const PaywallScreen(), revenueCat: fakeRevenueCat));
      await tester.pumpAndSettle();

      final monthlyTile = find.text('Plano Mensal');
      await tester.ensureVisible(monthlyTile);
      await tester.tap(monthlyTile);
      await tester.pumpAndSettle();

      expect(find.text('Começar 7 dias grátis'), findsOneWidget);
    });

    testWidgets('successful purchase closes screen', (tester) async {
      bool? result;
      await tester.pumpWidget(wrapWithProviders(
        Builder(builder: (context) {
          return ElevatedButton(
            onPressed: () async {
              result = await Navigator.of(context).push<bool>(
                MaterialPageRoute(builder: (_) => const PaywallScreen()),
              );
            },
            child: const Text('Open'),
          );
        }),
        revenueCat: fakeRevenueCat,
      ));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Open'));
      await tester.pumpAndSettle();

      final purchaseButton = find.text('Começar 7 dias grátis');
      await tester.ensureVisible(purchaseButton);
      await tester.tap(purchaseButton);
      
      // We need to pump without settling to catch the loading state
      await tester.pump(); 

      // Check for loading overlay
      expect(find.byType(CircularProgressIndicator), findsWidgets);

      await tester.pumpAndSettle(); // Finish purchase and pop

      expect(find.byType(PaywallScreen), findsNothing);
      expect(result, true);
    });

    testWidgets('restore purchases closes screen', (tester) async {
      bool? result;
      await tester.pumpWidget(wrapWithProviders(
        Builder(builder: (context) {
          return ElevatedButton(
            onPressed: () async {
              result = await Navigator.of(context).push<bool>(
                MaterialPageRoute(builder: (_) => const PaywallScreen()),
              );
            },
            child: const Text('Open'),
          );
        }),
        revenueCat: fakeRevenueCat,
      ));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Open'));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Restaurar'));
      await tester.pumpAndSettle();

      expect(find.byType(PaywallScreen), findsNothing);
      expect(result, true);
    });

    testWidgets('shows error when loading fails', (tester) async {
      final errorFake = ErrorRevenueCatService();
      await tester.pumpWidget(wrapWithProviders(const PaywallScreen(), revenueCat: errorFake));
      await tester.pumpAndSettle();

      expect(find.text('Erro ao carregar ofertas. Tente novamente.'), findsOneWidget);
      expect(find.text('Tentar Novamente'), findsOneWidget);
    });
  });
}

class ErrorRevenueCatService extends FakeRevenueCatService {
  @override
  Future<List<PaywallPackage>> getPaywallPackages() async {
    throw Exception('Failed to load');
  }
}
