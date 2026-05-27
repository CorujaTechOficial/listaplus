import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopping_list/app/lists/providers/item_providers.dart';
import 'package:shopping_list/domain/entities/interactive_artifact.dart';
import 'package:shopping_list/domain/entities/unit.dart';

part 'artifact_state_provider.g.dart';

class ArtifactState {
  ArtifactState({
    required this.artifact,
    required this.controlValues,
    required this.currentItems,
    required this.totalCost,
    required this.isCommitted,
  });

  final InteractiveArtifact artifact;
  final Map<String, dynamic> controlValues;
  final List<ArtifactItem> currentItems;
  final double totalCost;
  final bool isCommitted;

  ArtifactState copyWith({
    InteractiveArtifact? artifact,
    Map<String, dynamic>? controlValues,
    List<ArtifactItem>? currentItems,
    double? totalCost,
    bool? isCommitted,
  }) {
    return ArtifactState(
      artifact: artifact ?? this.artifact,
      controlValues: controlValues ?? this.controlValues,
      currentItems: currentItems ?? this.currentItems,
      totalCost: totalCost ?? this.totalCost,
      isCommitted: isCommitted ?? this.isCommitted,
    );
  }
}

@riverpod
class ArtifactStateNotifier extends _$ArtifactStateNotifier {
  @override
  ArtifactState? build(String artifactId) {
    return null;
  }

  void initialize(InteractiveArtifact artifact) {
    if (state != null) {
      return;
    }

    final controlValues = <String, dynamic>{};
    for (final ctrl in artifact.controls) {
      controlValues[ctrl.id] = ctrl.value;
    }

    final currentItems = List<ArtifactItem>.from(artifact.items);
    final newState = ArtifactState(
      artifact: artifact,
      controlValues: controlValues,
      currentItems: currentItems,
      totalCost: 0,
      isCommitted: artifact.isCommitted,
    );

    state = _recalculateState(newState);
  }

  void updateControl(String controlId, dynamic value) {
    final currentState = state;
    if (currentState == null || currentState.isCommitted) {
      return;
    }

    final newControlValues = Map<String, dynamic>.from(currentState.controlValues);
    newControlValues[controlId] = value;

    final updatedControls = currentState.artifact.controls.map((c) {
      if (c.id == controlId) {
        return c.copyWith(value: value);
      }
      return c;
    }).toList();

    final updatedArtifact = currentState.artifact.copyWith(
      controls: updatedControls,
    );

    final newState = currentState.copyWith(
      artifact: updatedArtifact,
      controlValues: newControlValues,
    );

    state = _recalculateState(newState);
  }

  void swapItem(int index, ArtifactItemAlternative alternative) {
    final currentState = state;
    if (currentState == null || currentState.isCommitted) {
      return;
    }

    final items = List<ArtifactItem>.from(currentState.currentItems);
    if (index < 0 || index >= items.length) {
      return;
    }

    final original = items[index];
    final swapped = original.copyWith(
      name: alternative.name,
      baseQuantity: alternative.quantity,
      unit: alternative.unit,
      estimatedPrice: alternative.estimatedPrice,
      isSwapped: true,
    );

    items[index] = swapped;

    final newState = currentState.copyWith(currentItems: items);
    state = _recalculateState(newState);
  }

  Future<void> commitToList(String listId) async {
    final currentState = state;
    if (currentState == null || currentState.isCommitted) {
      return;
    }

    final visibleItems = currentState.currentItems.where((item) {
      return _matchesConditions(item, currentState.controlValues);
    }).toList();

    final itemsToCommit = visibleItems.where((item) {
      if (currentState.artifact.commitMode == ArtifactCommitMode.addMissing) {
        return !item.isAvailable;
      }
      return true;
    }).toList();

    final multiplier = _calculateMultiplier(currentState.artifact, currentState.controlValues);

    for (final item in itemsToCommit) {
      final double quantityFloat = item.isSwapped ? item.baseQuantity : (item.baseQuantity * multiplier);
      final int quantity = quantityFloat.round().clamp(1, 999999);

      final categoryId = _parseCategory(item.category);
      final unit = _parseUnit(item.unit);

      await ref.read(shoppingListItemsProvider(listId).notifier).addItem(
        listId: listId,
        name: item.name,
        quantity: quantity,
        categoryId: categoryId,
        unit: unit,
        estimatedPrice: item.estimatedPrice,
      );
    }

    state = currentState.copyWith(isCommitted: true);
  }

  ArtifactState _recalculateState(ArtifactState state) {
    final multiplier = _calculateMultiplier(state.artifact, state.controlValues);

    double totalCost = 0;
    for (final item in state.currentItems) {
      if (_matchesConditions(item, state.controlValues)) {
        final double quantity = item.isSwapped ? item.baseQuantity : (item.baseQuantity * multiplier);
        totalCost += quantity * (item.estimatedPrice ?? 0.0);
      }
    }

    return state.copyWith(totalCost: totalCost);
  }

  double _calculateMultiplier(InteractiveArtifact artifact, Map<String, dynamic> controlValues) {
    final multiplierControls = artifact.controls.where((c) => c.affectsMultiplier);
    if (multiplierControls.isEmpty) {
      return 1;
    }

    double sum = 0;
    for (final ctrl in multiplierControls) {
      final val = controlValues[ctrl.id] ?? ctrl.value;
      if (val is num) {
        sum += val.toDouble();
      } else if (val is bool) {
        sum += val ? 1 : 0;
      }
    }

    if (artifact.baseServings <= 0) {
      return 1;
    }

    return sum / artifact.baseServings;
  }

  bool _matchesConditions(ArtifactItem item, Map<String, dynamic> controlValues) {
    if (item.conditions == null || item.conditions!.isEmpty) {
      return true;
    }

    for (final entry in item.conditions!.entries) {
      final actualVal = controlValues[entry.key];
      final expectedVal = entry.value;
      if (actualVal != expectedVal) {
        return false;
      }
    }
    return true;
  }

  String _parseCategory(String categoryStr) {
    final lower = categoryStr.toLowerCase();
    if (lower.contains('frut') || lower.contains('veget') || lower.contains('verd')) {
      return 'fruits';
    }
    if (lower.contains('limp') || lower.contains('higi') || lower.contains('deterg')) {
      return 'cleaning';
    }
    if (lower.contains('beb') || lower.contains('refr') || lower.contains('suco') || lower.contains('cerv')) {
      return 'beverages';
    }
    if (lower.contains('pad') || lower.contains('pao') || lower.contains('pão') || lower.contains('bolo') || lower.contains('doc')) {
      return 'bakery';
    }
    return 'others';
  }

  Unit _parseUnit(String unitStr) {
    final lower = unitStr.toLowerCase();
    if (lower == 'un' || lower == 'unidade') {
      return Unit.un;
    }
    if (lower == 'kg' || lower == 'quilo') {
      return Unit.kg;
    }
    if (lower == 'g' || lower == 'grama') {
      return Unit.g;
    }
    if (lower == 'l' || lower == 'litro') {
      return Unit.L;
    }
    if (lower == 'ml') {
      return Unit.mL;
    }
    if (lower == 'pacote' || lower == 'pack' || lower.contains('pac')) {
      return Unit.pack;
    }
    return Unit.un;
  }
}
