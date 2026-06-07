// ignore_for_file: prefer_const_constructors
// coverage:ignore-start

import 'package:flutter/material.dart';
import 'tokens.dart';

@immutable
class AppShadows extends ThemeExtension<AppShadows> {
  const AppShadows({
    required this.soft,
    required this.deep,
  });

  final List<BoxShadow> soft;
  final List<BoxShadow> deep;

  @override
  ThemeExtension<AppShadows> copyWith({
    List<BoxShadow>? soft,
    List<BoxShadow>? deep,
  }) {
    return AppShadows(
      soft: soft ?? this.soft,
      deep: deep ?? this.deep,
    );
  }

  @override
  ThemeExtension<AppShadows> lerp(ThemeExtension<AppShadows>? other, double t) {
    if (other is! AppShadows) {
      return this;
    }
    return AppShadows(
      soft: BoxShadow.lerpList(soft, other.soft, t)!,
      deep: BoxShadow.lerpList(deep, other.deep, t)!,
    );
  }
}

TextStyle _nunito({
  double? fontSize,
  FontWeight? fontWeight,
  Color? color,
  double? letterSpacing,
}) {
  return TextStyle(
    fontFamily: 'Nunito',
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    letterSpacing: letterSpacing,
  );
}

TextStyle _inter({
  double? fontSize,
  FontWeight? fontWeight,
  Color? color,
  double? height,
  double? letterSpacing,
}) {
  return TextStyle(
    fontFamily: 'Inter',
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    height: height,
    letterSpacing: letterSpacing,
  );
}

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
    
    final shadows = AppShadows(
      soft: [
        BoxShadow(
          color: isDark ? Colors.black.withAlpha(80) : colorScheme.shadow.withAlpha(15),
          blurRadius: 12,
          offset: const Offset(0, 4),
        ),
      ],
      deep: [
        BoxShadow(
          color: isDark ? Colors.black.withAlpha(120) : colorScheme.shadow.withAlpha(20),
          blurRadius: 20,
          offset: const Offset(0, 8),
        ),
      ],
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      extensions: [shadows],
      scaffoldBackgroundColor: isDark
          ? Color(0xFF0F1116)
          : Color(0xFFF8F9FA),
      cardTheme: CardThemeData(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(RadiusTokens.lg)),
          side: BorderSide(
            color: isDark
                ? colorScheme.outlineVariant.withAlpha((0.1 * 255).toInt())
                : colorScheme.outlineVariant.withAlpha((0.2 * 255).toInt()),
            width: isDark ? 0.5 : 1,
          ),
        ),
        clipBehavior: Clip.antiAlias,
        surfaceTintColor: Colors.transparent,
        color: isDark ? colorScheme.surfaceContainerLow : Colors.white,
      ),
      appBarTheme: AppBarTheme(
        centerTitle: false,
        scrolledUnderElevation: 0,
        backgroundColor: isDark 
            ? Color(0xFF0F1116).withAlpha((0.85 * 255).toInt()) 
            : Color(0xFFF8F9FA).withAlpha((0.85 * 255).toInt()),
        surfaceTintColor: Colors.transparent,
        titleTextStyle: _nunito(
          fontSize: 20,
          fontWeight: FontWeight.w800,
          color: colorScheme.onSurface,
          letterSpacing: -0.5,
        ),
        elevation: 0,
        iconTheme: IconThemeData(
          color: colorScheme.onSurface,
          size: 22,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: isDark
            ? colorScheme.surfaceContainerHighest.withAlpha((0.15 * 255).toInt())
            : colorScheme.surfaceContainerHighest.withAlpha((0.3 * 255).toInt()),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(RadiusTokens.md)),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(RadiusTokens.md)),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(RadiusTokens.md)),
          borderSide: BorderSide(color: colorScheme.primary, width: 2),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: Spacing.md,
          vertical: Spacing.md,
        ),
        labelStyle: TextStyle(
          fontWeight: FontWeight.w600,
          letterSpacing: 0.1,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        elevation: 6,
        highlightElevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(RadiusTokens.md)),
        ),
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
      ),
      segmentedButtonTheme: SegmentedButtonThemeData(
        style: SegmentedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(RadiusTokens.sm)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: Spacing.xs),
        ),
      ),
      dialogTheme: DialogThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(RadiusTokens.lg)),
        ),
        elevation: 0,
        backgroundColor: isDark
            ? Color(0xFF1A1D24)
            : Colors.white,
      ),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(RadiusTokens.md)),
        ),
      ),
      textTheme: TextTheme(
        displayLarge: _nunito(
          fontSize: 32,
          fontWeight: FontWeight.w900,
          color: colorScheme.onSurface,
          letterSpacing: -1,
        ),
        displayMedium: _nunito(
          fontSize: 28,
          fontWeight: FontWeight.w900,
          color: colorScheme.onSurface,
          letterSpacing: -0.8,
        ),
        headlineLarge: _nunito(
          fontSize: 24,
          fontWeight: FontWeight.w800,
          color: colorScheme.onSurface,
          letterSpacing: -0.5,
        ),
        headlineMedium: _nunito(
          fontSize: 20,
          fontWeight: FontWeight.w800,
          color: colorScheme.onSurface,
          letterSpacing: -0.3,
        ),
        titleLarge: _nunito(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: colorScheme.onSurface,
        ),
        titleMedium: _nunito(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: colorScheme.onSurface,
        ),
        titleSmall: _nunito(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: colorScheme.onSurface,
        ),
        bodyLarge: _inter(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: colorScheme.onSurface,
          height: 1.6,
          letterSpacing: 0.2,
        ),
        bodyMedium: _inter(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: colorScheme.onSurface,
          height: 1.5,
          letterSpacing: 0.1,
        ),
        bodySmall: _inter(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: colorScheme.onSurfaceVariant,
          height: 1.4,
        ),
        labelLarge: _inter(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: colorScheme.onSurface,
          letterSpacing: 0.5,
        ),
        labelMedium: _inter(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: colorScheme.onSurface,
          letterSpacing: 0.3,
        ),
        labelSmall: _inter(
          fontSize: 11,
          fontWeight: FontWeight.w700,
          color: colorScheme.onSurfaceVariant,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}
// coverage:ignore-end
