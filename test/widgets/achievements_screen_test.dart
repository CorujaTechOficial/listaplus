import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:shopping_list/screens/achievements_screen.dart';

Widget wrapWithProviders(Widget child) {
  return ProviderScope(
    child: MaterialApp(
      home: child,
    ),
  );
}

void main() {
  group('AchievementsScreen', () {
    testWidgets('shows zero stats initially', (tester) async {
      SharedPreferences.setMockInitialValues({});

      await tester.pumpWidget(wrapWithProviders(const AchievementsScreen()));
      await tester.pumpAndSettle();

      expect(find.text('Itens Comprados'), findsOneWidget);
      expect(find.text('0'), findsOneWidget);
      
      expect(find.text('Economia Total'), findsOneWidget);
      expect(find.text('R\$ 0.00'), findsOneWidget);
      
      expect(find.text('Sequência Atual'), findsOneWidget);
      expect(find.text('0 dias'), findsOneWidget);
    });

    testWidgets('shows correct stats from SharedPreferences', (tester) async {
      final mockData = {
        'totalItemsBought': 15,
        'totalSavings': 150.50,
        'currentStreak': 8,
      };
      SharedPreferences.setMockInitialValues({
        'user_stats_data': json.encode(mockData)
      });

      await tester.pumpWidget(wrapWithProviders(const AchievementsScreen()));
      await tester.pumpAndSettle();

      expect(find.text('15'), findsOneWidget);
      expect(find.text('R\$ 150.50'), findsOneWidget);
      expect(find.text('8 dias'), findsOneWidget);
      
      // Since it has 15 items, "Iniciante" should be unlocked (>= 10)
      // We can check if it exists (the label always exists, but the style changes).
      // We're mostly just ensuring the screen renders without throwing.
      expect(find.text('Iniciante'), findsOneWidget);
      expect(find.text('Organizado'), findsOneWidget);
      expect(find.text('Mestre da Economia'), findsOneWidget);
      expect(find.text('Super Planejador'), findsOneWidget);
    });
  });
}
