import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/models/interactive_artifact.dart';
import 'package:shopping_list/models/unit.dart';
import 'package:shopping_list/app/ai/providers/artifact_state_provider.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import '../helpers/fake_storage_backend.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late ProviderContainer container;
  late FakeStorageBackend fakeStorage;

  setUp(() {
    fakeStorage = FakeStorageBackend();
    container = ProviderContainer(
      overrides: [
        firestoreServiceProvider.overrideWithValue(fakeStorage),
      ],
    );
  });

  tearDown(() {
    container.dispose();
  });

  group('ArtifactStateNotifier', () {
    final baseArtifact = InteractiveArtifact(
      id: 'art1',
      title: 'Test Artifact',
      baseServings: 2,
      controls: [
        const ArtifactControl(
          id: 'c_slider',
          type: ArtifactControlType.slider,
          label: 'Servings',
          value: 2,
          affectsMultiplier: true,
        ),
        const ArtifactControl(
          id: 'c_toggle',
          type: ArtifactControlType.toggle,
          label: 'Include Drink',
          value: false,
          filtersItems: true,
        ),
        const ArtifactControl(
          id: 'c_select',
          type: ArtifactControlType.select,
          label: 'Tier',
          value: 'Basic',
          options: ['Basic', 'Premium'],
        ),
      ],
      items: [
        const ArtifactItem(
          name: 'Meat',
          baseQuantity: 1.5,
          unit: 'kg',
          category: 'frutas', // matches fruits parser
          estimatedPrice: 40,
        ),
        const ArtifactItem(
          name: 'Beer',
          baseQuantity: 6,
          unit: 'ml', // matches mL parser
          category: 'bebidas', // matches beverages parser
          estimatedPrice: 5,
          isAvailable: false,
          conditions: {'c_toggle': true},
        ),
        const ArtifactItem(
          name: 'Cleaning Agent',
          baseQuantity: 1,
          unit: 'l', // matches L parser
          category: 'limpeza', // matches cleaning parser
          estimatedPrice: 15,
          isAvailable: true, // already available
        ),
        const ArtifactItem(
          name: 'Bread',
          baseQuantity: 2,
          unit: 'pacote', // matches pack parser
          category: 'padaria', // matches bakery parser
          estimatedPrice: 7.5,
          alternatives: [
            ArtifactItemAlternative(name: 'Bread Premium', quantity: 2, unit: 'pacote', estimatedPrice: 12)
          ],
        ),
        const ArtifactItem(
          name: 'Salt',
          baseQuantity: 100,
          unit: 'g', // matches g parser
          category: 'outros',
          estimatedPrice: 2,
        ),
      ],
      commitLabel: 'Adicionar',
      commitMode: ArtifactCommitMode.addAll,
    );

    test('initial state is null', () {
      final state = container.read(artifactStateProvider('art1'));
      expect(state, isNull);
    });

    test('initialize sets up correct state and recalculates values', () {
      container.read(artifactStateProvider('art1').notifier).initialize(baseArtifact);
      final state = container.read(artifactStateProvider('art1'));

      expect(state, isNotNull);
      expect(state!.artifact.id, 'art1');
      expect(state.isCommitted, false);
      expect(state.controlValues['c_slider'], 2);
      expect(state.controlValues['c_toggle'], false);
      expect(state.controlValues['c_select'], 'Basic');

      // 'Meat', 'Cleaning Agent', 'Bread', 'Salt' are visible. 'Beer' is hidden (c_toggle: true is not met)
      expect(state.currentItems.length, 5);

      // Multiplier = 2.0 (c_slider value) / 2.0 (baseServings) = 1.0
      // Estimated visible items:
      // Meat: 1.5 * 1.0 = 1.5 * 40.0 = 60.0
      // Cleaning Agent: 1.0 * 1.0 = 1.0 * 15.0 = 15.0
      // Bread: 2.0 * 1.0 = 2.0 * 7.5 = 15.0
      // Salt: 100.0 * 1.0 = 100.0 * 2.0 = 200.0
      // Total = 60.0 + 15.0 + 15.0 + 200.0 = 290.0
      expect(state.totalCost, 290);
    });

    test('initialize is idempotent', () {
      final notifier = container.read(artifactStateProvider('art1').notifier);
      notifier.initialize(baseArtifact);
      final state1 = container.read(artifactStateProvider('art1'));

      // Re-initializing with modified artifact should not overwrite the active state
      final otherArtifact = baseArtifact.copyWith(title: 'Ignored Title');
      notifier.initialize(otherArtifact);
      final state2 = container.read(artifactStateProvider('art1'));

      expect(state2!.artifact.title, 'Test Artifact');
      expect(state1, state2);
    });

    test('updateControl updates values and multiplier and recalculates total cost', () {
      final notifier = container.read(artifactStateProvider('art1').notifier);
      notifier.initialize(baseArtifact);

      // Change multiplier control
      notifier.updateControl('c_slider', 4);
      var state = container.read(artifactStateProvider('art1'))!;

      expect(state.controlValues['c_slider'], 4);
      // Multiplier = 4.0 / 2.0 = 2.0
      // Meat: 1.5 * 2.0 = 3.0 * 40.0 = 120.0
      // Cleaning Agent: 1.0 * 2.0 = 2.0 * 15.0 = 30.0
      // Bread: 2.0 * 2.0 = 4.0 * 7.5 = 30.0
      // Salt: 100.0 * 2.0 = 200.0 * 2.0 = 400.0
      // Total = 120.0 + 30.0 + 30.0 + 400.0 = 580.0
      expect(state.totalCost, 580);

      // Change filter control to show Beer
      notifier.updateControl('c_toggle', true);
      state = container.read(artifactStateProvider('art1'))!;
      expect(state.controlValues['c_toggle'], true);

      // Beer is now visible: baseQuantity 6.0 * 2.0 = 12.0 * 5.0 = 60.0
      // New total = 580.0 + 60.0 = 640.0
      expect(state.totalCost, 640);
    });

    test('updateControl ignored if state null or committed', () async {
      final notifier = container.read(artifactStateProvider('art1').notifier);
      // Uninitialized
      notifier.updateControl('c_slider', 4);
      expect(container.read(artifactStateProvider('art1')), isNull);

      notifier.initialize(baseArtifact);
      // Not committed yet
      notifier.updateControl('c_slider', 4);
      var state = container.read(artifactStateProvider('art1'))!;
      expect(state.controlValues['c_slider'], 4);

      // Commit to make it committed
      await notifier.commitToList('list_temp');
      state = container.read(artifactStateProvider('art1'))!;
      expect(state.isCommitted, true);

      // Try updateControl after commit
      notifier.updateControl('c_slider', 5);
      state = container.read(artifactStateProvider('art1'))!;
      expect(state.controlValues['c_slider'], 4); // unchanged
    });

    test('swapItem replaces item and recalculates total cost', () {
      final notifier = container.read(artifactStateProvider('art1').notifier);
      notifier.initialize(baseArtifact);

      // Bread is index 3
      final alt = baseArtifact.items[3].alternatives!.first;
      notifier.swapItem(3, alt);

      final state = container.read(artifactStateProvider('art1'))!;
      final swappedItem = state.currentItems[3];

      expect(swappedItem.name, 'Bread Premium');
      expect(swappedItem.isSwapped, true);
      expect(swappedItem.baseQuantity, 2); // alternatives base quantity is 2
      expect(swappedItem.estimatedPrice, 12);

      // Swapped items use base quantity directly without multiplying
      // Total = Meat (1.5 * 1.0 = 1.5 * 40.0 = 60.0)
      // + Cleaning Agent (1.0 * 1.0 = 1.0 * 15.0 = 15.0)
      // + Swapped Bread (2.0 * 12.0 = 24.0)
      // + Salt (100.0 * 1.0 = 100.0 * 2.0 = 200.0)
      // Total = 60.0 + 15.0 + 24.0 + 200.0 = 299.0
      expect(state.totalCost, 299);
    });

    test('swapItem out of bounds index is ignored', () {
      final notifier = container.read(artifactStateProvider('art1').notifier);
      notifier.initialize(baseArtifact);
      final before = container.read(artifactStateProvider('art1'));

      notifier.swapItem(-1, const ArtifactItemAlternative(name: 'X', quantity: 1));
      notifier.swapItem(99, const ArtifactItemAlternative(name: 'Y', quantity: 1));

      final after = container.read(artifactStateProvider('art1'));
      expect(before!.totalCost, after!.totalCost);
    });

    test('commitToList adds items with addAll mode', () async {
      final notifier = container.read(artifactStateProvider('art1').notifier);
      notifier.initialize(baseArtifact);

      await notifier.commitToList('list1');

      final state = container.read(artifactStateProvider('art1'))!;
      expect(state.isCommitted, true);

      // Load items from FakeStorage
      final savedItems = await fakeStorage.loadItems('list1');
      // Visible items: Meat, Cleaning Agent, Bread, Salt. (4 items)
      expect(savedItems.length, 4);

      // Meat category frutas -> Category.fruits, unit kg -> Unit.kg, qty 1.5 rounded to 2
      final meatItem = savedItems.firstWhere((i) => i.name == 'Meat');
      expect(meatItem.categoryId, 'fruits');
      expect(meatItem.unit, Unit.kg);
      expect(meatItem.quantity, 2);

      // Salt category outros -> Category.others, unit g -> Unit.g, qty 100 rounded to 100
      final saltItem = savedItems.firstWhere((i) => i.name == 'Salt');
      expect(saltItem.categoryId, 'others');
      expect(saltItem.unit, Unit.g);
      expect(saltItem.quantity, 100);
    });

    test('commitToList adds only missing items with addMissing mode', () async {
      final missingModeArtifact = baseArtifact.copyWith(
        commitMode: ArtifactCommitMode.addMissing,
      );

      final notifier = container.read(artifactStateProvider('art1').notifier);
      notifier.initialize(missingModeArtifact);

      await notifier.commitToList('list1');

      final state = container.read(artifactStateProvider('art1'))!;
      expect(state.isCommitted, true);

      final savedItems = await fakeStorage.loadItems('list1');
      // Only missing (isAvailable = false) visible items: Meat, Bread, Salt (Cleaning Agent isAvailable = true). (3 items)
      expect(savedItems.length, 3);
      expect(savedItems.any((i) => i.name == 'Cleaning Agent'), isFalse);
    });

    test('committed state ignores further edits', () async {
      final notifier = container.read(artifactStateProvider('art1').notifier);
      notifier.initialize(baseArtifact);

      await notifier.commitToList('list1');

      // Try editing controls or swapping
      notifier.updateControl('c_slider', 5);
      notifier.swapItem(3, baseArtifact.items[3].alternatives!.first);

      final state = container.read(artifactStateProvider('art1'))!;
      expect(state.controlValues['c_slider'], 2); // unchanged
      expect(state.currentItems[3].name, 'Bread'); // unchanged
    });

    test('category and unit parsing edge cases', () async {
      final edgeArtifact = InteractiveArtifact(
        title: 'Edge Case',
        controls: [],
        items: [
          const ArtifactItem(name: 'Veggies', baseQuantity: 1, unit: 'quilo', category: 'vegetal'),
          const ArtifactItem(name: 'Soap', baseQuantity: 1, unit: 'unidade', category: 'higiene'),
          const ArtifactItem(name: 'Cola', baseQuantity: 1, unit: 'pack', category: 'suco'),
          const ArtifactItem(name: 'Unknown', baseQuantity: 1, unit: 'unknown_unit', category: 'unknown_cat'),
        ],
      );

      final notifier = container.read(artifactStateProvider('art_edge').notifier);
      notifier.initialize(edgeArtifact);

      // Commit to verify parsing
      await notifier.commitToList('list_edge');

      // We can directly verify the parsed categories/units during commit via loaded items
      // Veggies: category -> Category.fruits, unit -> Unit.kg
      // Soap: category -> Category.cleaning, unit -> Unit.un
      // Cola: category -> Category.beverages, unit -> Unit.pack
      // Unknown: category -> Category.others, unit -> Unit.un (defaults)
      final savedItems = await fakeStorage.loadItems('list_edge');
      expect(savedItems.length, 4);

      final veggies = savedItems.firstWhere((i) => i.name == 'Veggies');
      expect(veggies.categoryId, 'fruits');
      expect(veggies.unit, Unit.kg);

      final soap = savedItems.firstWhere((i) => i.name == 'Soap');
      expect(soap.categoryId, 'cleaning');
      expect(soap.unit, Unit.un);

      final cola = savedItems.firstWhere((i) => i.name == 'Cola');
      expect(cola.categoryId, 'beverages');
      expect(cola.unit, Unit.pack);

      final unknown = savedItems.firstWhere((i) => i.name == 'Unknown');
      expect(unknown.categoryId, 'others');
      expect(unknown.unit, Unit.un);
    });

    test('boolean control affecting multiplier', () {
      final boolMultArtifact = InteractiveArtifact(
        id: 'art_bool_mult',
        title: 'Boolean Multiplier Test',
        baseServings: 1,
        controls: [
          const ArtifactControl(
            id: 'c_toggle_mult',
            type: ArtifactControlType.toggle,
            label: 'Toggle Servings',
            value: true,
            affectsMultiplier: true,
          ),
        ],
        items: [
          const ArtifactItem(
            name: 'Item A',
            baseQuantity: 5,
            estimatedPrice: 10,
          ),
        ],
      );

      final notifier = container.read(artifactStateProvider('art_bool_mult').notifier);
      notifier.initialize(boolMultArtifact);
      
      var state = container.read(artifactStateProvider('art_bool_mult'))!;
      // Multiplier = 1 (true) / 1 = 1.0. Quantity = 5 * 1.0 = 5. Price = 5 * 10 = 50.
      expect(state.totalCost, 50);

      // Toggle off -> false
      notifier.updateControl('c_toggle_mult', false);
      state = container.read(artifactStateProvider('art_bool_mult'))!;
      // Multiplier = 0 (false) / 1 = 0.0. Quantity = 5 * 0 = 0. Price = 0.
      expect(state.totalCost, 0);
    });
  });
}
