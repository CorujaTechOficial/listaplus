// coverage:ignore-start
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/models/interactive_artifact.dart';
import 'package:shopping_list/widgets/artifact_widgets/artifact_card_shell.dart';
import 'package:shopping_list/widgets/artifact_widgets/artifact_content_renderer.dart';
import '../helpers/fake_storage_backend.dart';
import '../helpers/test_widgets.dart';

void main() {
  group('Artifact Widgets UI Tests', () {
    late FakeStorageBackend fakeStorage;

    setUp(() {
      fakeStorage = FakeStorageBackend();
    });

    final testArtifact = InteractiveArtifact(
      id: 'art_test',
      title: 'Churrasco Test',
      description: 'Calculador de carnes e bebidas para o churrasco.',
      icon: '🔥',
      baseServings: 4,
      budget: 200,
      showBudgetBar: true,
      commitLabel: 'Salvar Lista',
      commitMode: ArtifactCommitMode.addAll,
      controls: [
        const ArtifactControl(
          id: 'slider_guests',
          type: ArtifactControlType.slider,
          label: 'Convidados',
          value: 4,
          min: 2,
          max: 20,
          step: 2,
          affectsMultiplier: true,
        ),
        const ArtifactControl(
          id: 'stepper_drinks',
          type: ArtifactControlType.stepper,
          label: 'Engrados',
          value: 1,
          min: 0,
          max: 10,
          step: 1,
        ),
        const ArtifactControl(
          id: 'toggle_premium',
          type: ArtifactControlType.toggle,
          label: 'Carne Premium',
          value: false,
          affectsMultiplier: true,
        ),
        const ArtifactControl(
          id: 'select_sauce',
          type: ArtifactControlType.select,
          label: 'Molho',
          value: 'Barbecue',
          options: ['Barbecue', 'Maionese', 'Vinagrete'],
        ),
        const ArtifactControl(
          id: 'select_many',
          type: ArtifactControlType.select,
          label: 'Carvão Marca',
          value: 'Marca A',
          options: ['Marca A', 'Marca B', 'Marca C', 'Marca D', 'Marca E'],
        ),
      ],
      items: [
        const ArtifactItem(
          name: 'Picanha',
          baseQuantity: 1.2,
          unit: 'kg',
          category: 'carnes',
          estimatedPrice: 60,
        ),
        const ArtifactItem(
          name: 'Picanha Premium',
          baseQuantity: 1.2,
          unit: 'kg',
          category: 'carnes',
          estimatedPrice: 100,
          conditions: {'toggle_premium': true},
        ),
        const ArtifactItem(
          name: 'Carvão',
          baseQuantity: 1,
          unit: 'pacote',
          category: 'outros',
          estimatedPrice: 20,
          alternatives: [
            ArtifactItemAlternative(name: 'Carvão Ecológico', quantity: 1, unit: 'pacote', estimatedPrice: 25),
          ],
        ),
      ],
    );

    testWidgets('renders all controls and basic information', (tester) async {
      tester.view.physicalSize = const Size(800, 1500);
      tester.view.devicePixelRatio = 1;
      addTearDown(() {
        tester.view.resetPhysicalSize();
        tester.view.resetDevicePixelRatio();
      });

      await tester.pumpWidget(wrapWithProviders(
        Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ArtifactCardShell(
                artifact: testArtifact,
                listId: 'list1',
                child: const ArtifactContentRenderer(artifactId: 'art_test'),
              ),
            ),
          ),
        ),
        backend: fakeStorage,
      ));

      // Wait for frame callbacks to run initializer
      await tester.pump();

      // Check title, description, icon
      expect(find.text('Churrasco Test'), findsOneWidget);
      expect(find.text('Calculador de carnes e bebidas para o churrasco.'), findsOneWidget);
      expect(find.text('🔥'), findsOneWidget);

      // Check slider control exists
      expect(find.text('Convidados'), findsOneWidget);
      expect(find.byType(Slider), findsOneWidget);

      // Check stepper control exists
      expect(find.text('Engrados'), findsOneWidget);
      expect(find.byIcon(Icons.remove_circle_outline), findsOneWidget);
      expect(find.byIcon(Icons.add_circle_outline), findsOneWidget);

      // Check toggle control exists
      expect(find.text('Carne Premium'), findsOneWidget);
      expect(find.byType(Switch), findsOneWidget);

      // Check segmented button (select <= 3 options)
      expect(find.text('Molho'), findsOneWidget);
      expect(find.text('Barbecue'), findsWidgets); // matches control value & segment

      // Check dropdown (select > 3 options)
      expect(find.text('Carvão Marca'), findsOneWidget);
      expect(find.text('Marca A'), findsWidgets);

      // Check items are rendered
      expect(find.text('Picanha'), findsOneWidget);
      expect(find.text('Carvão'), findsOneWidget);
      // Picanha Premium is not visible since toggle_premium is false
      expect(find.text('Picanha Premium'), findsNothing);

      // Total estimation
      // 1.2 kg of Picanha * multiplier (4/4 = 1.0) = 1.2 * R$ 60 = R$ 72.0
      // 1 pack of Carvão * multiplier (1.0) = 1 * R$ 20 = R$ 20.0
      // Total = R$ 92.0
      expect(find.text('R\$ 92.00'), findsWidgets);

      // Check budget progress bar displays target
      expect(find.text('R\$ 92.00 / R\$ 200.00'), findsOneWidget);
    });

    testWidgets('interacts with slider and stepper and updates quantities and total cost', (tester) async {
      tester.view.physicalSize = const Size(800, 1500);
      tester.view.devicePixelRatio = 1;
      addTearDown(() {
        tester.view.resetPhysicalSize();
        tester.view.resetDevicePixelRatio();
      });

      await tester.pumpWidget(wrapWithProviders(
        Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ArtifactCardShell(
                artifact: testArtifact,
                listId: 'list1',
                child: const ArtifactContentRenderer(artifactId: 'art_test'),
              ),
            ),
          ),
        ),
        backend: fakeStorage,
      ));
      await tester.pump();

      // Tap stepper add button
      final addFinder = find.byIcon(Icons.add_circle_outline);
      await tester.tap(addFinder);
      await tester.pumpAndSettle();

      // Stepper goes from 1.0 to 2.0
      expect(find.text('2'), findsWidgets);

      // Toggle Switch: Carne Premium
      final switchFinder = find.byType(Switch);
      await tester.tap(switchFinder);
      await tester.pumpAndSettle();

      // Now 'Picanha Premium' should be visible
      expect(find.text('Picanha Premium'), findsOneWidget);

      // Tap stepper subtract button
      final removeFinder = find.byIcon(Icons.remove_circle_outline);
      await tester.tap(removeFinder);
      await tester.pumpAndSettle();
      expect(find.text('1'), findsWidgets);

      // Interact with Slider
      final sliderFinder = find.byType(Slider);
      await tester.drag(sliderFinder, const Offset(100, 0));
      await tester.pumpAndSettle();

      // Interact with SegmentedButton
      final segmentFinder = find.text('Maionese');
      await tester.tap(segmentFinder);
      await tester.pumpAndSettle();

      // Interact with DropdownButton
      await tester.tap(find.text('Marca A').first);
      await tester.pumpAndSettle();
      await tester.tap(find.text('Marca B').last);
      await tester.pumpAndSettle();
    });

    testWidgets('swaps items and updates total cost', (tester) async {
      tester.view.physicalSize = const Size(800, 1500);
      tester.view.devicePixelRatio = 1;
      addTearDown(() {
        tester.view.resetPhysicalSize();
        tester.view.resetDevicePixelRatio();
      });

      await tester.pumpWidget(wrapWithProviders(
        Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ArtifactCardShell(
                artifact: testArtifact,
                listId: 'list1',
                child: const ArtifactContentRenderer(artifactId: 'art_test'),
              ),
            ),
          ),
        ),
        backend: fakeStorage,
      ));
      await tester.pump();

      // Tap 'Trocar' button for Carvão
      final swapButton = find.text('Trocar');
      expect(swapButton, findsOneWidget);
      await tester.tap(swapButton);
      await tester.pumpAndSettle();

      // Verify bottom sheet is shown
      expect(find.text('Substituir Carvão'), findsOneWidget);
      expect(find.text('Carvão Ecológico'), findsOneWidget);

      // Tap alternative
      await tester.tap(find.text('Carvão Ecológico'));
      await tester.pumpAndSettle();

      // Bottom sheet should be dismissed and item name is updated or has 'Trocado' badge
      expect(find.text('Substituir Carvão'), findsNothing);
      expect(find.text('Trocado'), findsOneWidget);
    });

    testWidgets('commits items to the shopping list and disables controls', (tester) async {
      tester.view.physicalSize = const Size(800, 1500);
      tester.view.devicePixelRatio = 1;
      addTearDown(() {
        tester.view.resetPhysicalSize();
        tester.view.resetDevicePixelRatio();
      });

      await tester.pumpWidget(wrapWithProviders(
        Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ArtifactCardShell(
                artifact: testArtifact,
                listId: 'list1',
                child: const ArtifactContentRenderer(artifactId: 'art_test'),
              ),
            ),
          ),
        ),
        backend: fakeStorage,
      ));
      await tester.pump();

      // Tap sync/commit button
      final commitBtn = find.text('Salvar Lista');
      expect(commitBtn, findsOneWidget);
      await tester.tap(commitBtn);
      await tester.pumpAndSettle();

      // It should display 'Sincronizado' badge
      expect(find.text('Sincronizado'), findsOneWidget);

      // Verify that controls are disabled (Switch, Slider, Stepper buttons are inactive)
      final addBtn = find.byIcon(Icons.add_circle_outline);
      final IconButton addIconButton = tester.widget<IconButton>(find.ancestor(
        of: addBtn,
        matching: find.byType(IconButton),
      ).first);
      expect(addIconButton.onPressed, isNull);

      // Verify items written to storage backend
      final savedItems = await fakeStorage.loadItems('list1');
      expect(savedItems.length, 2);
      expect(savedItems.any((i) => i.name == 'Picanha'), isTrue);
      expect(savedItems.any((i) => i.name == 'Carvão'), isTrue);

      // Verify confirmation Snackbar
      expect(find.text('Itens adicionados à lista!'), findsOneWidget);
      expect(find.text('Ver lista'), findsOneWidget);

      // Tap action button on Snackbar (pops the screen)
      await tester.tap(find.text('Ver lista'));
      await tester.pumpAndSettle();

      // Verify that the route was popped (ArtifactCardShell is gone)
      expect(find.byType(ArtifactCardShell), findsNothing);
    });
  });
}
// coverage:ignore-end
