import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shopping_list/app/ai/widgets/ai_chat_panel.dart';
import 'package:shopping_list/theme/colors.dart';
import 'package:shopping_list/utils/test_utils.dart';

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
      onPressed: () => showModalBottomSheet<void>(
        context: context,
        isScrollControlled: true,
        useSafeArea: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        builder: (_) => SizedBox(
          height: MediaQuery.of(context).size.height * 0.85,
          child: const AiChatPanel(
            listId: null,
            compact: false,
          ),
        ),
      ),
      child: const Icon(Icons.auto_awesome, size: 18)
          .animate(
            onPlay: (controller) => isTestMode ? null : controller.repeat(reverse: true),
          )
          .scale(
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.1, 1.1),
            duration: 1200.ms,
            curve: Curves.easeInOut,
          ),
    );
  }
}
