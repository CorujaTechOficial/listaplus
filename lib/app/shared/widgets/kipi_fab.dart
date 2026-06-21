import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/app/ai/widgets/ai_chat_panel.dart';
import 'package:shopping_list/theme/colors.dart';
import 'package:shopping_list/theme/tokens.dart';
import 'package:shopping_list/utils/test_utils.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

enum KipiContext { pantry, mealPlanner, recipes }

class KipiFab extends StatelessWidget {
  const KipiFab({super.key, required this.kipiContext});

  final KipiContext kipiContext;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      heroTag: 'kipi_fab_${kipiContext.name}',
      backgroundColor: AppColors.premiumAmber,
      foregroundColor: Colors.black,
      onPressed:
          () => showModalBottomSheet<void>(
            context: context,
            isScrollControlled: true,
            useSafeArea: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            builder:
                (_) => SizedBox(
                  height: MediaQuery.of(context).size.height * 0.85,
                  child: const AiChatPanel(listId: null, compact: false),
                ),
          ),
      child: const Icon(PhosphorIconsRegular.sparkle, size: 18)
          .animate(
            onPlay: (controller) {
              if (isTestMode) {
                return;
              }
              var ticks = 0;
              controller.addStatusListener((status) {
                if (status == AnimationStatus.completed) {
                  ticks++;
                  if (ticks < 4) {
                    controller.reverse();
                  }
                } else if (status == AnimationStatus.dismissed) {
                  ticks++;
                  if (ticks < 4) {
                    controller.forward();
                  }
                }
              });
              controller.forward();
            },
          )
          .scale(
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.1, 1.1),
            duration: DurationTokens.verySlow,
            curve: Curves.easeInOut,
          ),
    );
  }
}
