// ignore_for_file: prefer_const_constructors
// coverage:ignore-start

import 'package:flutter/material.dart';
import 'tokens.dart';

TextStyle _nunito({
  double? fontSize,
  FontWeight? fontWeight,
  Color? color,
  double? letterSpacing,
  double? height,
}) {
  return TextStyle(
    fontFamily: 'Nunito',
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    letterSpacing: letterSpacing,
    height: height,
  );
}

TextStyle _inter({
  double? fontSize,
  FontWeight? fontWeight,
  Color? color,
  double? letterSpacing,
  double? height,
}) {
  return TextStyle(
    fontFamily: 'Inter',
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    letterSpacing: letterSpacing,
    height: height,
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

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: isDark
          ? Color(0xFF0F1116)
          : Color(0xFFF8F9FA),
      cardTheme: CardThemeData(
        elevation: isDark ? 0 : 1,
        shadowColor: isDark ? Colors.transparent : colorScheme.shadow.withAlpha((0.08 * 255).toInt()),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(RadiusTokens.md)),
          side: BorderSide(
            color: isDark
                ? colorScheme.outlineVariant.withAlpha((0.15 * 255).toInt())
                : colorScheme.outlineVariant.withAlpha((0.3 * 255).toInt()),
            width: isDark ? 0.5 : 1,
          ),
        ),
        clipBehavior: Clip.antiAlias,
      ),
      appBarTheme: AppBarTheme(
        centerTitle: false,
        scrolledUnderElevation: isDark ? 0 : 2,
        backgroundColor: isDark ? Color(0xFF0F1116) : Color(0xFFF8F9FA),
        surfaceTintColor: Colors.transparent,
        titleTextStyle: _nunito(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: colorScheme.onSurface,
          letterSpacing: -0.3,
        ),
        iconTheme: IconThemeData(
          color: colorScheme.onSurface,
          size: 22,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: isDark
            ? colorScheme.surfaceContainerHighest.withAlpha((0.2 * 255).toInt())
            : colorScheme.surfaceContainerHighest.withAlpha((0.4 * 255).toInt()),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(RadiusTokens.sm)),
          borderSide: BorderSide(color: colorScheme.outline.withAlpha((0.3 * 255).toInt())),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(RadiusTokens.sm)),
          borderSide: BorderSide(color: colorScheme.outline.withAlpha((0.3 * 255).toInt())),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(RadiusTokens.sm)),
          borderSide: BorderSide(color: colorScheme.primary, width: 2),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: Spacing.md,
          vertical: Spacing.sm,
        ),
        labelStyle: TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(RadiusTokens.lg)),
        ),
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
          borderRadius: BorderRadius.all(Radius.circular(RadiusTokens.xl)),
        ),
        elevation: isDark ? 0 : 8,
        backgroundColor: isDark
            ? Color(0xFF1A1D24)
            : colorScheme.surface,
      ),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(RadiusTokens.md)),
        ),
        elevation: 6,
      ),
      navigationBarTheme: NavigationBarThemeData(
        height: 64,
        elevation: 0,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        indicatorShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(RadiusTokens.md)),
        ),
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          final isSelected = states.contains(WidgetState.selected);
          return _nunito(
            fontSize: 12,
            fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
            color: isSelected ? colorScheme.primary : colorScheme.onSurfaceVariant,
          );
        }),
        iconTheme: WidgetStateProperty.resolveWith((states) {
          final isSelected = states.contains(WidgetState.selected);
          return IconThemeData(
            size: 22,
            color: isSelected ? colorScheme.onPrimaryContainer : colorScheme.onSurfaceVariant,
          );
        }),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 0,
        selectedLabelStyle: _nunito(fontWeight: FontWeight.w700),
        unselectedLabelStyle: _nunito(fontWeight: FontWeight.w500),
      ),
      dropdownMenuTheme: DropdownMenuThemeData(
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: isDark
              ? colorScheme.surfaceContainerHighest.withAlpha((0.2 * 255).toInt())
              : colorScheme.surfaceContainerHighest.withAlpha((0.4 * 255).toInt()),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(RadiusTokens.sm)),
          ),
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(RadiusTokens.xxs),
        ),
        side: BorderSide(
          color: colorScheme.outline,
          width: 1.5,
        ),
      ),
      textTheme: TextTheme(
        displayLarge: _nunito(
          fontSize: 32,
          fontWeight: FontWeight.w800,
          color: colorScheme.onSurface,
          letterSpacing: -0.5,
        ),
        displayMedium: _nunito(
          fontSize: 28,
          fontWeight: FontWeight.w800,
          color: colorScheme.onSurface,
          letterSpacing: -0.5,
        ),
        headlineLarge: _nunito(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: colorScheme.onSurface,
          letterSpacing: -0.3,
        ),
        headlineMedium: _nunito(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: colorScheme.onSurface,
          letterSpacing: -0.2,
        ),
        titleLarge: _nunito(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: colorScheme.onSurface,
        ),
        titleMedium: _nunito(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: colorScheme.onSurface,
        ),
        titleSmall: _nunito(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: colorScheme.onSurface,
        ),
        bodyLarge: _inter(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: colorScheme.onSurface,
          height: 1.5,
        ),
        bodyMedium: _inter(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: colorScheme.onSurface,
          height: 1.4,
        ),
        bodySmall: _inter(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: colorScheme.onSurfaceVariant,
        ),
        labelLarge: _inter(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: colorScheme.onSurface,
        ),
        labelMedium: _inter(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: colorScheme.onSurface,
        ),
        labelSmall: _inter(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          color: colorScheme.onSurfaceVariant,
          letterSpacing: 0.2,
        ),
      ),
    );
  }
}
// coverage:ignore-end
