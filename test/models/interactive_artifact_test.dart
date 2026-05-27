import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/domain/entities/interactive_artifact.dart';

void main() {
  group('ArtifactControlType', () {
    test('value getter returns correct string', () {
      expect(ArtifactControlType.slider.value, 'slider');
      expect(ArtifactControlType.stepper.value, 'stepper');
      expect(ArtifactControlType.toggle.value, 'toggle');
      expect(ArtifactControlType.select.value, 'select');
    });

    test('fromString parses correctly or returns default', () {
      expect(ArtifactControlType.fromString('slider'), ArtifactControlType.slider);
      expect(ArtifactControlType.fromString('stepper'), ArtifactControlType.stepper);
      expect(ArtifactControlType.fromString('toggle'), ArtifactControlType.toggle);
      expect(ArtifactControlType.fromString('select'), ArtifactControlType.select);
      expect(ArtifactControlType.fromString('unknown'), ArtifactControlType.slider);
    });
  });

  group('ArtifactControl', () {
    test('fromJson and toJson roundtrip', () {
      const control = ArtifactControl(
        id: 'c1',
        type: ArtifactControlType.slider,
        label: 'Slider Control',
        value: 10,
        min: 1,
        max: 20,
        step: 1,
        options: ['a', 'b'],
        affectsMultiplier: true,
        filtersItems: true,
      );

      final json = control.toJson();
      expect(json['id'], 'c1');
      expect(json['type'], 'slider');
      expect(json['label'], 'Slider Control');
      expect(json['value'], 10);
      expect(json['min'], 1);
      expect(json['max'], 20);
      expect(json['step'], 1);
      expect(json['options'], const ['a', 'b']);
      expect(json['affectsMultiplier'], true);
      expect(json['filtersItems'], true);

      final parsed = ArtifactControl.fromJson(json);
      expect(parsed.id, control.id);
      expect(parsed.type, control.type);
      expect(parsed.label, control.label);
      expect(parsed.value, control.value);
      expect(parsed.min, control.min);
      expect(parsed.max, control.max);
      expect(parsed.step, control.step);
      expect(parsed.options, control.options);
      expect(parsed.affectsMultiplier, control.affectsMultiplier);
      expect(parsed.filtersItems, control.filtersItems);
    });

    test('copyWith works', () {
      const control = ArtifactControl(
        id: 'c1',
        type: ArtifactControlType.slider,
        label: 'Slider Control',
        value: 10,
      );

      final updated = control.copyWith(
        id: 'c2',
        type: ArtifactControlType.toggle,
        label: 'Toggle Control',
        value: true,
        min: 0,
        max: 5,
        step: 0.5,
        options: ['x'],
        affectsMultiplier: true,
        filtersItems: true,
      );

      expect(updated.id, 'c2');
      expect(updated.type, ArtifactControlType.toggle);
      expect(updated.label, 'Toggle Control');
      expect(updated.value, true);
      expect(updated.min, 0);
      expect(updated.max, 5);
      expect(updated.step, 0.5);
      expect(updated.options, const ['x']);
      expect(updated.affectsMultiplier, true);
      expect(updated.filtersItems, true);
    });

    test('fromJson handles defaults for null fields', () {
      final parsed = ArtifactControl.fromJson(const {});
      expect(parsed.id, '');
      expect(parsed.type, ArtifactControlType.slider);
      expect(parsed.label, '');
      expect(parsed.value, isNull);
      expect(parsed.min, isNull);
      expect(parsed.max, isNull);
      expect(parsed.step, isNull);
      expect(parsed.options, isNull);
      expect(parsed.affectsMultiplier, false);
      expect(parsed.filtersItems, false);
    });
  });

  group('ArtifactItemAlternative', () {
    test('fromJson and toJson roundtrip', () {
      const alt = ArtifactItemAlternative(
        name: 'Alcatra',
        quantity: 1.5,
        unit: 'kg',
        estimatedPrice: 45,
      );

      final json = alt.toJson();
      expect(json['name'], 'Alcatra');
      expect(json['quantity'], 1.5);
      expect(json['unit'], 'kg');
      expect(json['estimatedPrice'], 45);

      final parsed = ArtifactItemAlternative.fromJson(json);
      expect(parsed.name, alt.name);
      expect(parsed.quantity, alt.quantity);
      expect(parsed.unit, alt.unit);
      expect(parsed.estimatedPrice, alt.estimatedPrice);
    });

    test('fromJson handles defaults', () {
      final parsed = ArtifactItemAlternative.fromJson(const {});
      expect(parsed.name, '');
      expect(parsed.quantity, 1.0);
      expect(parsed.unit, 'un');
      expect(parsed.estimatedPrice, isNull);
    });
  });

  group('ArtifactItem', () {
    test('fromJson and toJson roundtrip', () {
      const item = ArtifactItem(
        name: 'Picanha',
        baseQuantity: 2,
        unit: 'kg',
        category: 'Carnes',
        estimatedPrice: 65,
        isAvailable: true,
        conditions: {'alcohol': false},
        alternatives: [
          ArtifactItemAlternative(name: 'Alcatra', quantity: 2, unit: 'kg', estimatedPrice: 45)
        ],
        isSwapped: true,
      );

      final json = item.toJson();
      expect(json['name'], 'Picanha');
      expect(json['baseQuantity'], 2);
      expect(json['unit'], 'kg');
      expect(json['category'], 'Carnes');
      expect(json['estimatedPrice'], 65);
      expect(json['isAvailable'], true);
      expect(json['conditions'], const {'alcohol': false});
      expect(json['alternatives'], isList);
      expect(json['isSwapped'], true);

      final parsed = ArtifactItem.fromJson(json);
      expect(parsed.name, item.name);
      expect(parsed.baseQuantity, item.baseQuantity);
      expect(parsed.unit, item.unit);
      expect(parsed.category, item.category);
      expect(parsed.estimatedPrice, item.estimatedPrice);
      expect(parsed.isAvailable, item.isAvailable);
      expect(parsed.conditions, item.conditions);
      expect(parsed.alternatives!.first.name, 'Alcatra');
      expect(parsed.isSwapped, item.isSwapped);
    });

    test('copyWith works', () {
      const item = ArtifactItem(
        name: 'Bread',
        baseQuantity: 1,
      );

      final updated = item.copyWith(
        name: 'Pão de Forma',
        baseQuantity: 2,
        unit: 'pacote',
        category: 'Padaria',
        estimatedPrice: 8.5,
        isAvailable: true,
        conditions: const {'x': 1},
        alternatives: const [
          ArtifactItemAlternative(name: 'Pão Caseiro', quantity: 1)
        ],
        isSwapped: true,
      );

      expect(updated.name, 'Pão de Forma');
      expect(updated.baseQuantity, 2.0);
      expect(updated.unit, 'pacote');
      expect(updated.category, 'Padaria');
      expect(updated.estimatedPrice, 8.5);
      expect(updated.isAvailable, true);
      expect(updated.conditions, const {'x': 1});
      expect(updated.alternatives!.first.name, 'Pão Caseiro');
      expect(updated.isSwapped, true);
    });

    test('fromJson handles defaults', () {
      final parsed = ArtifactItem.fromJson(const {});
      expect(parsed.name, '');
      expect(parsed.baseQuantity, 1.0);
      expect(parsed.unit, 'un');
      expect(parsed.category, 'Outros');
      expect(parsed.estimatedPrice, isNull);
      expect(parsed.isAvailable, false);
      expect(parsed.conditions, isNull);
      expect(parsed.alternatives, isNull);
      expect(parsed.isSwapped, false);
    });
  });

  group('ArtifactCommitMode', () {
    test('value getter returns correct string', () {
      expect(ArtifactCommitMode.addAll.value, 'addAll');
      expect(ArtifactCommitMode.addMissing.value, 'addMissing');
    });

    test('fromString parses correctly or returns default', () {
      expect(ArtifactCommitMode.fromString('addAll'), ArtifactCommitMode.addAll);
      expect(ArtifactCommitMode.fromString('addMissing'), ArtifactCommitMode.addMissing);
      expect(ArtifactCommitMode.fromString('unknown'), ArtifactCommitMode.addAll);
    });
  });

  group('InteractiveArtifact', () {
    test('fromJson and toJson roundtrip', () {
      final artifact = InteractiveArtifact(
        id: 'art1',
        title: 'Churrasco',
        icon: '🍖',
        description: 'Churrasco de fim de ano',
        controls: const [
          ArtifactControl(id: 'c1', type: ArtifactControlType.slider, label: 'Pessoas', value: 10)
        ],
        items: const [
          ArtifactItem(name: 'Carne', baseQuantity: 3, unit: 'kg')
        ],
        baseServings: 10,
        budget: 200,
        showBudgetBar: true,
        commitLabel: 'Importar',
        commitMode: ArtifactCommitMode.addMissing,
        isCommitted: true,
      );

      final json = artifact.toJson();
      expect(json['id'], 'art1');
      expect(json['title'], 'Churrasco');
      expect(json['icon'], '🍖');
      expect(json['description'], 'Churrasco de fim de ano');
      expect(json['controls'], isList);
      expect(json['items'], isList);
      expect(json['baseServings'], 10);
      expect(json['budget'], 200);
      expect(json['showBudgetBar'], true);
      expect(json['commitLabel'], 'Importar');
      expect(json['commitMode'], 'addMissing');
      expect(json['isCommitted'], true);

      final parsed = InteractiveArtifact.fromJson(json);
      expect(parsed.id, artifact.id);
      expect(parsed.title, artifact.title);
      expect(parsed.icon, artifact.icon);
      expect(parsed.description, artifact.description);
      expect(parsed.controls.first.id, 'c1');
      expect(parsed.items.first.name, 'Carne');
      expect(parsed.baseServings, artifact.baseServings);
      expect(parsed.budget, artifact.budget);
      expect(parsed.showBudgetBar, artifact.showBudgetBar);
      expect(parsed.commitLabel, artifact.commitLabel);
      expect(parsed.commitMode, artifact.commitMode);
      expect(parsed.isCommitted, artifact.isCommitted);
    });

    test('copyWith works', () {
      final artifact = InteractiveArtifact(
        title: 'Dinner',
        controls: const [],
        items: const [],
      );

      final updated = artifact.copyWith(
        id: 'new-id',
        title: 'New Dinner',
        icon: '🍕',
        description: 'Pizza party',
        controls: const [
          ArtifactControl(id: 'c2', type: ArtifactControlType.toggle, label: 'Vegetarian', value: true)
        ],
        items: const [
          ArtifactItem(name: 'Pizza Margherita', baseQuantity: 2)
        ],
        baseServings: 4,
        budget: 50,
        showBudgetBar: true,
        commitLabel: 'Save',
        commitMode: ArtifactCommitMode.addAll,
        isCommitted: true,
      );

      expect(updated.id, 'new-id');
      expect(updated.title, 'New Dinner');
      expect(updated.icon, '🍕');
      expect(updated.description, 'Pizza party');
      expect(updated.controls.first.id, 'c2');
      expect(updated.items.first.name, 'Pizza Margherita');
      expect(updated.baseServings, 4);
      expect(updated.budget, 50);
      expect(updated.showBudgetBar, true);
      expect(updated.commitLabel, 'Save');
      expect(updated.commitMode, ArtifactCommitMode.addAll);
      expect(updated.isCommitted, true);
    });

    test('fromJson handles defaults', () {
      final parsed = InteractiveArtifact.fromJson(const {});
      expect(parsed.id, isNotEmpty); // generated UUID
      expect(parsed.title, '');
      expect(parsed.icon, '✨');
      expect(parsed.description, isNull);
      expect(parsed.controls, isEmpty);
      expect(parsed.items, isEmpty);
      expect(parsed.baseServings, 1.0);
      expect(parsed.budget, isNull);
      expect(parsed.showBudgetBar, false);
      expect(parsed.commitLabel, 'Adicionar à Lista');
      expect(parsed.commitMode, ArtifactCommitMode.addAll);
      expect(parsed.isCommitted, false);
    });
  });
}
