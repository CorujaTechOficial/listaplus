import 'package:flutter/material.dart';

/// App Color Palette — KipiList
///
/// Static colors used ONLY when they cannot be derived from [ColorScheme].
/// For adaptive colors (light/dark), always prefer [AppSemanticColors] via
/// [Theme.of(context).extension<AppSemanticColors>()!]
class AppColors {
  AppColors._();

  // ---------------------------------------------------------------------------
  // Brand
  // ---------------------------------------------------------------------------

  /// KipiList primary brand green (seed for ColorScheme.fromSeed)
  static const Color brandGreen = Color(0xFF2E7D32);

  // ---------------------------------------------------------------------------
  // Premium / Monetization
  // ---------------------------------------------------------------------------

  /// Premium amber used for pro badges, stars, upgrade CTAs
  static const Color premiumAmber = Color(0xFFFFA000);

  /// On-premium (text/icons over premiumAmber)
  static const Color onPremiumAmber = Color(0xFF000000);

  /// Premium amber container (subtle background tint)
  static const Color premiumAmberContainer = Color(0xFFFFF8E1);

  // ---------------------------------------------------------------------------
  // Dark surface overrides (used only in _buildTheme when isDark)
  // ---------------------------------------------------------------------------

  /// Base scaffold background in dark mode
  static const Color scaffoldDark = Color(0xFF0F1116);

  /// Slightly elevated surface in dark mode (dialog, card)
  static const Color surfaceDark = Color(0xFF1E222B);

  /// Dialog/sheet background in dark mode
  static const Color dialogDark = Color(0xFF252A36);

  // ---------------------------------------------------------------------------
  // Light surface overrides
  // ---------------------------------------------------------------------------

  /// Base scaffold background in light mode
  static const Color scaffoldLight = Color(0xFFF8F9FA);

  // ---------------------------------------------------------------------------
  // Semantic — these raw values are fallbacks only.
  // Prefer AppSemanticColors.of(context).success etc.
  // ---------------------------------------------------------------------------

  /// Raw success green (fallback only — use AppSemanticColors in widgets)
  static const Color successRaw = Color(0xFF1B5E20);

  /// Raw warning orange (fallback only — use AppSemanticColors in widgets)
  static const Color warningRaw = Color(0xFFE65100);

  /// Raw info blue (fallback only — use AppSemanticColors in widgets)
  static const Color infoRaw = Color(0xFF0D47A1);

  // ---------------------------------------------------------------------------
  // Decorative category tile tints
  // ---------------------------------------------------------------------------

  /// Light-mode base tints for catalog category tiles. Dark mode is derived on
  /// the fly via HSL (see CategoryGrid). Indexed cyclically by category order.
  static const List<Color> categoryTints = [
    Color(0xFFFFF3E0),
    Color(0xFFE8F5E9),
    Color(0xFFE3F2FD),
    Color(0xFFFCE4EC),
    Color(0xFFF3E5F5),
    Color(0xFFE0F7FA),
    Color(0xFFFFF8E1),
    Color(0xFFE8EAF6),
    Color(0xFFF1F8E9),
    Color(0xFFEDE7F6),
    Color(0xFFE0F2F1),
    Color(0xFFFBE9E7),
  ];
}
