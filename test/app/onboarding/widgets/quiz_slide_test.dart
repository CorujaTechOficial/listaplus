import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/onboarding/models/quiz_config.dart';
import 'package:shopping_list/app/onboarding/widgets/quiz_slide.dart';

void main() {
  testWidgets('tapping an option fires onSelected with the option id', (tester) async {
    String? selected;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: QuizSlide(
            config: QuizConfig(
              title: 'Question?',
              options: const [
                QuizOption(id: 'a', emoji: '🛒', label: 'Option A'),
                QuizOption(id: 'b', emoji: '🥦', label: 'Option B'),
              ],
              selectedId: '',
              onSelected: (id) => selected = id,
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Option B'));
    await tester.pumpAndSettle();
    expect(selected, 'b');
  });

  testWidgets('selected option shows check icon', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: QuizSlide(
            config: QuizConfig(
              title: 'Question?',
              options: const [
                QuizOption(id: 'a', emoji: '🛒', label: 'Option A'),
                QuizOption(id: 'b', emoji: '🥦', label: 'Option B'),
              ],
              selectedId: 'a',
              onSelected: (_) {},
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byIcon(Icons.check_circle_rounded), findsOneWidget);
  });
}
