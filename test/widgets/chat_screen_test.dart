import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/screens/chat_screen.dart';
import 'package:shopping_list/models/chat_message.dart';
import 'package:shopping_list/providers/firestore_service_provider.dart';
import 'package:shopping_list/generated/l10n/app_localizations.dart';
import 'package:shopping_list/providers/revenuecat_service_provider.dart';
import 'package:shopping_list/providers/analytics_service_provider.dart';
import 'package:shopping_list/services/analytics_service.dart';
import '../helpers/fake_storage_backend.dart';
import '../helpers/fake_revenuecat_service.dart';

Widget wrapWithProviders(Widget child, {required FakeStorageBackend backend, bool isPremium = true}) {
  final revenueCat = FakeRevenueCatService();
  revenueCat.setIsPremium(isPremium);

  return ProviderScope(
    overrides: [
      firestoreServiceProvider.overrideWithValue(backend),
      revenueCatServiceProvider.overrideWithValue(revenueCat),
      analyticsServiceProvider.overrideWithValue(AnalyticsService()),
    ],
    child: MaterialApp(
      locale: const Locale('pt', 'BR'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: child,
    ),
  );
}

void main() {
  group('ChatScreen', () {
    late FakeStorageBackend backend;

    setUp(() {
      backend = FakeStorageBackend();
    });

    testWidgets('shows welcome message when empty', (tester) async {
      await tester.pumpWidget(wrapWithProviders(
        const ChatScreen(listId: 'list-1', listName: 'Minha Lista'),
        backend: backend,
      ));

      await tester.pumpAndSettle();

      expect(find.text('Minha Lista'), findsOneWidget);
      expect(find.text('Como posso ajudar com sua lista?'), findsOneWidget);
      expect(find.text('Sugestão de Receitas'), findsOneWidget);
    });

    testWidgets('sends a message', (tester) async {
      await tester.pumpWidget(wrapWithProviders(
        const ChatScreen(listId: 'list-1'),
        backend: backend,
      ));

      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextField), 'Oi Assistente');
      await tester.tap(find.byIcon(Icons.send));
      
      // Need to pump enough to pass through async calls
      await tester.pump(); 
      await tester.pump(const Duration(seconds: 1));
      await tester.pumpAndSettle();

      expect(find.text('Oi Assistente'), findsOneWidget);
    });

    testWidgets('clears history', (tester) async {
      // Pre-populate with a message
      final msg = ChatMessage(role: 'user', content: 'Apagar isso');
      await backend.saveChatMessage('list-1', msg);

      await tester.pumpWidget(wrapWithProviders(
        const ChatScreen(listId: 'list-1'),
        backend: backend,
      ));

      await tester.pumpAndSettle();
      expect(find.text('Apagar isso'), findsOneWidget);

      await tester.tap(find.byIcon(Icons.delete_sweep));
      await tester.pumpAndSettle();

      expect(find.text('Limpar Histórico'), findsOneWidget);
      await tester.tap(find.text('Limpar'));
      await tester.pumpAndSettle();

      expect(find.text('Apagar isso'), findsNothing);
    });

    testWidgets('shortcut chip sends message', (tester) async {
      await tester.pumpWidget(wrapWithProviders(
        const ChatScreen(listId: 'list-1'),
        backend: backend,
      ));

      await tester.pumpAndSettle();

      await tester.tap(find.text('Sugestão de Receitas'));
      await tester.pump();
      await tester.pumpAndSettle();

      expect(find.textContaining('receitas'), findsWidgets);
    });
  });
}
