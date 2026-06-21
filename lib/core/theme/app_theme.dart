// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'colors.dart';
import 'tokens.dart';

// =============================================================================
// AppSemanticColors — semantic status colors as ThemeExtension
// Consume via: Theme.of(context).extension<AppSemanticColors>()!
// =============================================================================

@immutable
class AppSemanticColors extends ThemeExtension<AppSemanticColors> {
  const AppSemanticColors({
    required this.success,
    required this.onSuccess,
    required this.successContainer,
    required this.onSuccessContainer,
    required this.warning,
    required this.onWarning,
    required this.warningContainer,
    required this.onWarningContainer,
    required this.info,
    required this.onInfo,
    required this.infoContainer,
    required this.onInfoContainer,
    required this.premium,
    required this.onPremium,
    required this.premiumContainer,
    required this.onPremiumContainer,
  });

  // --- Success (green) ---
  final Color success;
  final Color onSuccess;
  final Color successContainer;
  final Color onSuccessContainer;

  // --- Warning (orange/amber) ---
  final Color warning;
  final Color onWarning;
  final Color warningContainer;
  final Color onWarningContainer;

  // --- Info (blue) ---
  final Color info;
  final Color onInfo;
  final Color infoContainer;
  final Color onInfoContainer;

  // --- Premium (amber gold) ---
  final Color premium;
  final Color onPremium;
  final Color premiumContainer;
  final Color onPremiumContainer;

  /// Shorthand accessor via context.
  static AppSemanticColors of(BuildContext context) {
    return Theme.of(context).extension<AppSemanticColors>()!;
  }

  @override
  ThemeExtension<AppSemanticColors> copyWith({
    Color? success,
    Color? onSuccess,
    Color? successContainer,
    Color? onSuccessContainer,
    Color? warning,
    Color? onWarning,
    Color? warningContainer,
    Color? onWarningContainer,
    Color? info,
    Color? onInfo,
    Color? infoContainer,
    Color? onInfoContainer,
    Color? premium,
    Color? onPremium,
    Color? premiumContainer,
    Color? onPremiumContainer,
  }) {
    return AppSemanticColors(
      success: success ?? this.success,
      onSuccess: onSuccess ?? this.onSuccess,
      successContainer: successContainer ?? this.successContainer,
      onSuccessContainer: onSuccessContainer ?? this.onSuccessContainer,
      warning: warning ?? this.warning,
      onWarning: onWarning ?? this.onWarning,
      warningContainer: warningContainer ?? this.warningContainer,
      onWarningContainer: onWarningContainer ?? this.onWarningContainer,
      info: info ?? this.info,
      onInfo: onInfo ?? this.onInfo,
      infoContainer: infoContainer ?? this.infoContainer,
      onInfoContainer: onInfoContainer ?? this.onInfoContainer,
      premium: premium ?? this.premium,
      onPremium: onPremium ?? this.onPremium,
      premiumContainer: premiumContainer ?? this.premiumContainer,
      onPremiumContainer: onPremiumContainer ?? this.onPremiumContainer,
    );
  }

  @override
  ThemeExtension<AppSemanticColors> lerp(
    ThemeExtension<AppSemanticColors>? other,
    double t,
  ) {
    if (other is! AppSemanticColors) {
      return this;
    }
    return AppSemanticColors(
      success: Color.lerp(success, other.success, t)!,
      onSuccess: Color.lerp(onSuccess, other.onSuccess, t)!,
      successContainer:
          Color.lerp(successContainer, other.successContainer, t)!,
      onSuccessContainer:
          Color.lerp(onSuccessContainer, other.onSuccessContainer, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      onWarning: Color.lerp(onWarning, other.onWarning, t)!,
      warningContainer:
          Color.lerp(warningContainer, other.warningContainer, t)!,
      onWarningContainer:
          Color.lerp(onWarningContainer, other.onWarningContainer, t)!,
      info: Color.lerp(info, other.info, t)!,
      onInfo: Color.lerp(onInfo, other.onInfo, t)!,
      infoContainer: Color.lerp(infoContainer, other.infoContainer, t)!,
      onInfoContainer: Color.lerp(onInfoContainer, other.onInfoContainer, t)!,
      premium: Color.lerp(premium, other.premium, t)!,
      onPremium: Color.lerp(onPremium, other.onPremium, t)!,
      premiumContainer:
          Color.lerp(premiumContainer, other.premiumContainer, t)!,
      onPremiumContainer:
          Color.lerp(onPremiumContainer, other.onPremiumContainer, t)!,
    );
  }

  // ---------------------------------------------------------------------------
  // Light theme semantic colors
  // ---------------------------------------------------------------------------
  static const AppSemanticColors light = AppSemanticColors(
    success: Color(0xFF1B5E20),
    onSuccess: Color(0xFFFFFFFF),
    successContainer: Color(0xFFB9F6CA),
    onSuccessContainer: Color(0xFF003300),

    warning: Color(0xFFBF360C),
    onWarning: Color(0xFFFFFFFF),
    warningContainer: Color(0xFFFFCCBC),
    onWarningContainer: Color(0xFF3E0C00),

    info: Color(0xFF0D47A1),
    onInfo: Color(0xFFFFFFFF),
    infoContainer: Color(0xFFBBDEFB),
    onInfoContainer: Color(0xFF001A4D),

    premium: AppColors.premiumAmber,
    onPremium: Color(0xFF000000),
    premiumContainer: Color(0xFFFFF8E1),
    onPremiumContainer: Color(0xFF3E2000),
  );

  // ---------------------------------------------------------------------------
  // Dark theme semantic colors
  // ---------------------------------------------------------------------------
  static const AppSemanticColors dark = AppSemanticColors(
    success: Color(0xFF69F0AE),
    onSuccess: Color(0xFF003300),
    successContainer: Color(0xFF1B5E20),
    onSuccessContainer: Color(0xFFB9F6CA),

    warning: Color(0xFFFFAB91),
    onWarning: Color(0xFF3E0C00),
    warningContainer: Color(0xFFBF360C),
    onWarningContainer: Color(0xFFFFCCBC),

    info: Color(0xFF82B1FF),
    onInfo: Color(0xFF001A4D),
    infoContainer: Color(0xFF0D47A1),
    onInfoContainer: Color(0xFFBBDEFB),

    premium: AppColors.premiumAmber,
    onPremium: Color(0xFF000000),
    premiumContainer: Color(0xFF3E2000),
    onPremiumContainer: Color(0xFFFFE082),
  );
}

// =============================================================================
// Typography helpers
// =============================================================================

TextStyle _plusJakartaSans({
  double? fontSize,
  FontWeight? fontWeight,
  Color? color,
  double? letterSpacing,
  double? height,
}) {
  return TextStyle(
    fontFamily: 'PlusJakartaSans',
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    letterSpacing: letterSpacing,
    height: height,
  );
}

// =============================================================================
// AppTheme — main theme factory
// =============================================================================

class AppTheme {
  AppTheme._();

  static ThemeData light(Color seed) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: seed,
      brightness: Brightness.light,
    );
    return _buildTheme(colorScheme);
  }

  static ThemeData dark(Color seed) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: seed,
      brightness: Brightness.dark,
    );
    return _buildTheme(colorScheme);
  }

  static ThemeData fromColorScheme(ColorScheme colorScheme) {
    return _buildTheme(colorScheme);
  }

  static ThemeData _buildTheme(ColorScheme colorScheme) {
    final isDark = colorScheme.brightness == Brightness.dark;

    // --- Semantic colors ---
    final semanticColors =
        isDark ? AppSemanticColors.dark : AppSemanticColors.light;

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      extensions: [semanticColors],

      // Backgrounds
      scaffoldBackgroundColor:
          isDark ? AppColors.scaffoldDark : AppColors.scaffoldLight,

      // -----------------------------------------------------------------------
      // Card
      // -----------------------------------------------------------------------
      cardTheme: CardThemeData(
        elevation: ElevationTokens.none,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(RadiusTokens.lg)),
          side: BorderSide(
            color:
                isDark
                    ? colorScheme.outlineVariant.withAlpha(26)
                    : colorScheme.outlineVariant.withAlpha(51),
            width: isDark ? 0.5 : 1,
          ),
        ),
        clipBehavior: Clip.antiAlias,
        surfaceTintColor: colorScheme.surfaceTint,
        color:
            isDark
                ? colorScheme.surfaceContainerLow
                : colorScheme.surfaceContainerLowest,
      ),

      // -----------------------------------------------------------------------
      // AppBar
      // -----------------------------------------------------------------------
      appBarTheme: AppBarTheme(
        centerTitle: false,
        scrolledUnderElevation: 3,
        backgroundColor:
            isDark ? AppColors.scaffoldDark : AppColors.scaffoldLight,
        surfaceTintColor: colorScheme.surfaceTint,
        titleTextStyle: _plusJakartaSans(
          fontSize: 20,
          fontWeight: FontWeight.w800,
          color: colorScheme.onSurface,
          letterSpacing: -0.5,
        ),
        elevation: ElevationTokens.none,
        iconTheme: IconThemeData(color: colorScheme.onSurface, size: 22),
      ),

      // -----------------------------------------------------------------------
      // Input
      // -----------------------------------------------------------------------
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor:
            isDark
                ? colorScheme.surfaceContainerHighest.withAlpha(38)
                : colorScheme.surfaceContainerHighest.withAlpha(77),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(RadiusTokens.lg)),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(RadiusTokens.lg)),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(RadiusTokens.lg)),
          borderSide: BorderSide(color: colorScheme.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(RadiusTokens.lg)),
          borderSide: BorderSide(color: colorScheme.error, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(RadiusTokens.lg)),
          borderSide: BorderSide(color: colorScheme.error, width: 2),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: Spacing.md,
          vertical: Spacing.md,
        ),
        labelStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          letterSpacing: 0.1,
        ),
      ),

      // -----------------------------------------------------------------------
      // FAB
      // -----------------------------------------------------------------------
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        elevation: ElevationTokens.level3,
        highlightElevation: ElevationTokens.level2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(RadiusTokens.lg)),
        ),
        backgroundColor: colorScheme.primaryContainer,
        foregroundColor: colorScheme.onPrimaryContainer,
      ),

      // -----------------------------------------------------------------------
      // Segmented Button
      // -----------------------------------------------------------------------
      segmentedButtonTheme: SegmentedButtonThemeData(
        style: SegmentedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(RadiusTokens.lg)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: Spacing.xs),
        ),
      ),

      // -----------------------------------------------------------------------
      // Dialog
      // -----------------------------------------------------------------------
      dialogTheme: DialogThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(RadiusTokens.xxxl)),
        ),
        elevation: 3,
        backgroundColor: colorScheme.surfaceContainerHigh,
        surfaceTintColor: colorScheme.surfaceTint,
      ),

      // -----------------------------------------------------------------------
      // BottomSheet
      // -----------------------------------------------------------------------
      bottomSheetTheme: BottomSheetThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(RadiusTokens.xxxl),
          ),
        ),
        clipBehavior: Clip.antiAlias,
        backgroundColor: colorScheme.surfaceContainerHigh,
        surfaceTintColor: colorScheme.surfaceTint,
        dragHandleColor: colorScheme.outlineVariant,
        showDragHandle: true,
      ),

      // -----------------------------------------------------------------------
      // SnackBar
      // -----------------------------------------------------------------------
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(RadiusTokens.md)),
        ),
        elevation: ElevationTokens.level3,
      ),

      // -----------------------------------------------------------------------
      // Chip
      // -----------------------------------------------------------------------
      chipTheme: ChipThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(RadiusTokens.full)),
        ),
        side: BorderSide.none,
      ),

      // -----------------------------------------------------------------------
      // ListTile
      // -----------------------------------------------------------------------
      listTileTheme: const ListTileThemeData(
        contentPadding: EdgeInsets.symmetric(
          horizontal: Spacing.md,
          vertical: Spacing.xxs,
        ),
      ),

      // -----------------------------------------------------------------------
      // Divider
      // -----------------------------------------------------------------------
      dividerTheme: DividerThemeData(
        space: 1,
        thickness: 1,
        color: colorScheme.outlineVariant.withAlpha(80),
      ),

      // -----------------------------------------------------------------------
      // Typography — Plus Jakarta Sans
      // -----------------------------------------------------------------------
      textTheme: TextTheme(
        // --- Display ---
        displayLarge: _plusJakartaSans(
          fontSize: 32,
          fontWeight: FontWeight.w800,
          color: colorScheme.onSurface,
          letterSpacing: -1,
        ),
        displayMedium: _plusJakartaSans(
          fontSize: 28,
          fontWeight: FontWeight.w800,
          color: colorScheme.onSurface,
          letterSpacing: -0.8,
        ),
        displaySmall: _plusJakartaSans(
          fontSize: 24,
          fontWeight: FontWeight.w800,
          color: colorScheme.onSurface,
          letterSpacing: -0.5,
        ),

        // --- Headline ---
        headlineLarge: _plusJakartaSans(
          fontSize: 24,
          fontWeight: FontWeight.w800,
          color: colorScheme.onSurface,
          letterSpacing: -0.5,
        ),
        headlineMedium: _plusJakartaSans(
          fontSize: 20,
          fontWeight: FontWeight.w800,
          color: colorScheme.onSurface,
          letterSpacing: -0.3,
        ),
        headlineSmall: _plusJakartaSans(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: colorScheme.onSurface,
          letterSpacing: -0.2,
        ),

        // --- Title ---
        titleLarge: _plusJakartaSans(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: colorScheme.onSurface,
        ),
        titleMedium: _plusJakartaSans(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: colorScheme.onSurface,
        ),
        titleSmall: _plusJakartaSans(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: colorScheme.onSurface,
        ),

        // --- Body ---
        bodyLarge: _plusJakartaSans(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: colorScheme.onSurface,
          height: 1.6,
          letterSpacing: 0.2,
        ),
        bodyMedium: _plusJakartaSans(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: colorScheme.onSurface,
          height: 1.5,
          letterSpacing: 0.1,
        ),
        bodySmall: _plusJakartaSans(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: colorScheme.onSurfaceVariant,
          height: 1.4,
        ),

        // --- Label ---
        labelLarge: _plusJakartaSans(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: colorScheme.onSurface,
          letterSpacing: 0.5,
        ),
        labelMedium: _plusJakartaSans(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: colorScheme.onSurface,
          letterSpacing: 0.3,
        ),
        labelSmall: _plusJakartaSans(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          color: colorScheme.onSurfaceVariant,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}
