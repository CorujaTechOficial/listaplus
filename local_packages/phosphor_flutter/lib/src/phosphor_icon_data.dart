library phosphor_flutter;

// Flutter 3.27+ made IconData final — cannot extend outside its library.
// Stubs kept for backward compat; all static fields now use IconData directly.
class PhosphorIconData {
  const PhosphorIconData(this.codePoint, this.style);
  final int codePoint;
  final String style;
}

class PhosphorFlatIconData extends PhosphorIconData {
  const PhosphorFlatIconData(int codePoint, String style) : super(codePoint, style);
}

class PhosphorDuotoneIconData extends PhosphorIconData {
  const PhosphorDuotoneIconData(int codePoint, this.secondary) : super(codePoint, 'Duotone');
  final PhosphorIconData secondary;
}
