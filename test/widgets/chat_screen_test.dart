import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/models/chat_message.dart';
import 'package:shopping_list/screens/chat_screen.dart';
import 'package:shopping_list/widgets/premium_gate.dart';
import '../helpers/test_widgets.dart';
import '../helpers/fake_storage_backend.dart';
import '../helpers/fake_revenuecat_service.dart';

void main() {
  late FakeStorageBackend fakeStorage;
  late FakeRevenueCatService fakeRevenueCat;

  setUp(() {
    fakeStorage = FakeStorageBackend();
    fakeRevenueCat = FakeRevenueCatService();
  });

  group('ChatScreen', () {
    testWidgets('shows PremiumGate when user is not premium', (tester) async {
      fakeRevenueCat.setIsPremium(false);
      
      await tester.pumpWidget(wrapWithProviders(
        const ChatScreen(),
        backend: fakeStorage,
        revenueCat: fakeRevenueCat,
      ));
      await tester.pumpAndSettle();

      expect(find.byType(PremiumGate), findsOneWidget);
      expect(find.text('Assistente de IA'), findsOneWidget);
    });

    testWidgets('renders chat interface when user is premium', (tester) async {
      fakeRevenueCat.setIsPremium(true);
      
      await tester.pumpWidget(wrapWithProviders(
        const ChatScreen(listName: 'My List'),
        backend: fakeStorage,
        revenueCat: fakeRevenueCat,
      ));
      await tester.pumpAndSettle();

      expect(find.byType(PremiumGate), findsNothing);
      expect(find.text('My List'), findsOneWidget);
      expect(find.byType(TextField), findsOneWidget);
      expect(find.byIcon(Icons.send), findsOneWidget);
    });

    testWidgets('displays messages and allows sending', (tester) async {
      fakeRevenueCat.setIsPremium(true);
      await fakeStorage.saveChatMessage(null, ChatMessage(role: 'assistant', content: 'How can I help?'));
      
      await tester.pumpWidget(wrapWithProviders(
        const ChatScreen(),
        backend: fakeStorage,
        revenueCat: fakeRevenueCat,
      ));
      await tester.pumpAndSettle();

      expect(find.text('How can I help?'), findsOneWidget);

      await tester.enterText(find.byType(TextField), 'Suggest some milk');
      await tester.tap(find.byIcon(Icons.send));
      await tester.pumpAndSettle();

      expect(find.text('Suggest some milk'), findsOneWidget);
      expect(find.text('Fake streamed response'), findsOneWidget);
    });

    testWidgets('clear history button works', (tester) async {
      fakeRevenueCat.setIsPremium(true);
      await fakeStorage.saveChatMessage(null, ChatMessage(role: 'user', content: 'Old message'));
      
      await tester.pumpWidget(wrapWithProviders(
        const ChatScreen(),
        backend: fakeStorage,
        revenueCat: fakeRevenueCat,
      ));
      await tester.pumpAndSettle();

      expect(find.text('Old message'), findsOneWidget);

      await tester.tap(find.byIcon(Icons.delete_sweep));
      await tester.pumpAndSettle();

      expect(find.text('Limpar Histórico'), findsOneWidget);
      await tester.tap(find.text('Limpar'));
      await tester.pumpAndSettle();

      expect(find.text('Old message'), findsNothing);
      expect(find.text('Como posso ajudar com suas compras hoje?'), findsOneWidget);
    });
  });
}
