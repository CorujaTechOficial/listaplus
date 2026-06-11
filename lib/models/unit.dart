enum Unit {
  un('un'),
  kg('kg'),
  g('g'),
  L('L'),
  mL('mL'),
  pack('pacote');

  const Unit(this.label);
  final String label;

  static Unit byName(String name) {
    return Unit.values.firstWhere(
      (u) => u.name == name,
      orElse: () => Unit.un,
    );
  }
}