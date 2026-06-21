import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

/// Flags raw Material palette colors (`Colors.red`, `Colors.grey[300]`, ...)
/// used in widget code. Status and brand colors must come from
/// `AppSemanticColors` / `AppColors` / `ColorScheme` so they adapt to dark mode
/// and the brand. `Colors.white`, `Colors.black` and `Colors.transparent`
/// (overlay / mask staples) are allowed. Theme definition files are exempt.
class AvoidRawMaterialColors extends DartLintRule {
  const AvoidRawMaterialColors() : super(code: _code);

  static const _code = LintCode(
    name: 'avoid_raw_material_colors',
    problemMessage:
        'Cor material crua. Use AppSemanticColors / AppColors / ColorScheme '
        '(adapta a dark mode e à marca). Permitido só white/black/transparent.',
  );

  // Overlay / mask staples that are theme-independent by nature.
  static bool _isAllowed(String name) =>
      name.startsWith('white') ||
      name.startsWith('black') ||
      name == 'transparent';

  @override
  void run(
    CustomLintResolver resolver,
    DiagnosticReporter reporter,
    CustomLintContext context,
  ) {
    // Exempt the theme layer itself (token / palette definitions).
    if (resolver.path.contains('/theme/')) {
      return;
    }

    context.registry.addPrefixedIdentifier((node) {
      if (node.prefix.name != 'Colors') {
        return;
      }
      if (_isAllowed(node.identifier.name)) {
        return;
      }
      reporter.atNode(node, code);
    });
  }
}
