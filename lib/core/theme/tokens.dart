/// Design Tokens — KipiList
/// Single source of truth for spacing, radius, durations and elevations.
/// All UI code MUST consume these constants. Never use raw numeric literals.
library;

// =============================================================================
// SPACING — 4pt grid
// =============================================================================
class Spacing {
  Spacing._();

  /// 4px — micro gaps, icon padding
  static const double xxs = 4;

  /// 8px — tight gaps, chip inner padding
  static const double xs = 8;

  /// 12px — component inner padding (small)
  static const double sm = 12;

  /// 16px — default component padding
  static const double md = 16;

  /// 24px — section gaps, card padding
  static const double lg = 24;

  /// 32px — large section gaps
  static const double xl = 32;

  /// 48px — hero sections, screen padding
  static const double xxl = 48;

  /// 64px — large decorative gaps
  static const double xxxl = 64;
}

// =============================================================================
// BORDER RADIUS — semantic scale
// =============================================================================
class RadiusTokens {
  RadiusTokens._();

  /// 2px — accent bars, thin separators
  static const double bar = 2;

  /// 4px — micro elements (progress tracks, code blocks)
  static const double xxs = 4;

  /// 6px — small inline elements
  static const double xs = 6;

  /// 8px — icon containers, small chips
  static const double sm = 8;

  /// 12px — inputs, text fields, modal tops
  static const double md = 12;

  /// 16px — cards, list tiles, item containers
  static const double lg = 16;

  /// 20px — bottom sheets, large cards, trial badges
  static const double xl = 20;

  /// 24px — large bubbles, hero containers
  static const double xxl = 24;

  /// 28px — extra large containers
  static const double xxxl = 28;

  /// 32px — chat message bubbles
  static const double bubble = 32;

  /// 999px — fully circular, chips, pills, avatars
  static const double full = 999;
}

// =============================================================================
// DURATIONS — animation timing
// =============================================================================
class DurationTokens {
  DurationTokens._();

  /// 80ms — micro feedback (ripple, color change)
  static const Duration micro = Duration(milliseconds: 80);

  /// 100ms — fastest transitions
  static const Duration fastest = Duration(milliseconds: 100);

  /// 200ms — fast transitions (tooltips, opacity)
  static const Duration fast = Duration(milliseconds: 200);

  /// 350ms — standard transitions (slide, scale)
  static const Duration normal = Duration(milliseconds: 350);

  /// 500ms — medium animations (page transitions)
  static const Duration medium = Duration(milliseconds: 500);

  /// 600ms — slow animations (reveal, expand)
  static const Duration slow = Duration(milliseconds: 600);

  /// 800ms — extra slow (hero animations)
  static const Duration extraSlow = Duration(milliseconds: 800);

  /// 1200ms — very slow (intro animations)
  static const Duration verySlow = Duration(milliseconds: 1200);

  /// 2000ms — ambient animations (floating, pulsing)
  static const Duration ambient = Duration(milliseconds: 2000);
}

// =============================================================================
// ELEVATION — Material 3 tonal elevation levels
// =============================================================================
class ElevationTokens {
  ElevationTokens._();

  static const double none = 0;
  static const double level1 = 1;
  static const double level2 = 3;
  static const double level3 = 6;
  static const double level4 = 8;
  static const double level5 = 12;
}
