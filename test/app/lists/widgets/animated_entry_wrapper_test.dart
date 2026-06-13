import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/lists/widgets/shopping_item_tile.dart';

void main() {
  testWidgets('AnimatedEntryWrapper starts at opacity 0 and settles at 1',
      (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: AnimatedEntryWrapper(child: Text('hello')),
        ),
      ),
    );

    // Immediately after mount: animation at t=0, opacity = 0
    final fade = tester.widget<FadeTransition>(
      find.byKey(const ValueKey('_animated_entry_fade')),
    );
    expect(fade.opacity.value, 0.0);

    // After animation completes: opacity = 1
    await tester.pumpAndSettle();
    final fadeAfter = tester.widget<FadeTransition>(
      find.byKey(const ValueKey('_animated_entry_fade')),
    );
    expect(fadeAfter.opacity.value, 1.0);
  });

  testWidgets('AnimatedEntryWrapper child is present in the tree', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: AnimatedEntryWrapper(child: Text('target')),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('target'), findsOneWidget);
  });
}
