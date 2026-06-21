import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/app/ai/providers/artifact_state_provider.dart';
import 'package:shopping_list/models/interactive_artifact.dart';

void main() {
  group('artifact bulk optimization', () {
    test('suggests the cheapest visible alternatives ordered by savings', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      const artifactId = 'budget-artifact';
      final subscription = container.listen(
        artifactStateProvider(artifactId),
        (_, _) {},
      );
      addTearDown(subscription.close);

      final notifier = container.read(
        artifactStateProvider(artifactId).notifier,
      );
      notifier.initialize(
        InteractiveArtifact(
          id: artifactId,
          title: 'Budget',
          baseServings: 2,
          controls: const [
            ArtifactControl(
              id: 'people',
              type: ArtifactControlType.stepper,
              label: 'People',
              value: 4.0,
              affectsMultiplier: true,
            ),
            ArtifactControl(
              id: 'vegan',
              type: ArtifactControlType.toggle,
              label: 'Vegan',
              value: false,
            ),
          ],
          items: const [
            ArtifactItem(
              name: 'Premium rice',
              baseQuantity: 2,
              estimatedPrice: 10,
              alternatives: [
                ArtifactItemAlternative(
                  name: 'Regular rice',
                  quantity: 2,
                  estimatedPrice: 8,
                ),
                ArtifactItemAlternative(
                  name: 'Value rice',
                  quantity: 2,
                  estimatedPrice: 6,
                ),
              ],
            ),
            ArtifactItem(
              name: 'Visible staple',
              baseQuantity: 1,
              estimatedPrice: 5,
            ),
            ArtifactItem(
              name: 'Hidden tofu',
              baseQuantity: 1,
              estimatedPrice: 20,
              conditions: {'vegan': true},
              alternatives: [
                ArtifactItemAlternative(
                  name: 'Hidden beans',
                  quantity: 1,
                  estimatedPrice: 2,
                ),
              ],
            ),
            ArtifactItem(
              name: 'Already swapped',
              baseQuantity: 1,
              estimatedPrice: 9,
              isSwapped: true,
              alternatives: [
                ArtifactItemAlternative(
                  name: 'Another item',
                  quantity: 1,
                  estimatedPrice: 1,
                ),
              ],
            ),
          ],
        ),
      );

      final suggestions = notifier.optimizationSuggestions();

      expect(suggestions, hasLength(1));
      expect(suggestions.single.itemIndex, 0);
      expect(suggestions.single.alternative.name, 'Value rice');
      expect(suggestions.single.currentCost, 40);
      expect(suggestions.single.optimizedCost, 12);
      expect(suggestions.single.savings, 28);
    });

    test('applies all suggestions and recalculates total cost once', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      const artifactId = 'apply-budget-artifact';
      final subscription = container.listen(
        artifactStateProvider(artifactId),
        (_, _) {},
      );
      addTearDown(subscription.close);

      final notifier = container.read(
        artifactStateProvider(artifactId).notifier,
      );
      notifier.initialize(
        InteractiveArtifact(
          id: artifactId,
          title: 'Budget',
          controls: const [],
          items: const [
            ArtifactItem(
              name: 'Brand A',
              baseQuantity: 2,
              estimatedPrice: 10,
              alternatives: [
                ArtifactItemAlternative(
                  name: 'Brand B',
                  quantity: 2,
                  estimatedPrice: 6,
                ),
              ],
            ),
            ArtifactItem(name: 'Keep item', baseQuantity: 1, estimatedPrice: 5),
          ],
        ),
      );

      expect(container.read(artifactStateProvider(artifactId))!.totalCost, 25);

      notifier.applyOptimizations(notifier.optimizationSuggestions());

      final state = container.read(artifactStateProvider(artifactId))!;
      expect(state.currentItems.first.name, 'Brand B');
      expect(state.currentItems.first.isSwapped, isTrue);
      expect(state.totalCost, 17);
      expect(notifier.optimizationSuggestions(), isEmpty);
    });
  });
}
