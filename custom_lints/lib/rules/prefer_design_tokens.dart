import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

/// Flags raw numeric literals inside `EdgeInsets.*` and `BorderRadius.circular`
/// when the value EXACTLY matches a design token. Off-grid values (no matching
/// token) are intentionally left alone — only the "should have used the token"
/// cases are reported. Theme definition files are exempt.
class PreferDesignTokens extends DartLintRule {
  const PreferDesignTokens() : super(code: _code);

  static const _code = LintCode(
    name: 'prefer_design_tokens',
    problemMessage:
        'Literal numérico casa com um design token. Use Spacing.* / '
        'RadiusTokens.* em vez do número cru.',
  );

  // value -> token name (only exact grid matches).
  static const _spacing = {
    4: 'Spacing.xxs',
    8: 'Spacing.xs',
    12: 'Spacing.sm',
    16: 'Spacing.md',
    24: 'Spacing.lg',
    32: 'Spacing.xl',
    48: 'Spacing.xxl',
    64: 'Spacing.xxxl',
  };
  static const _radius = {
    2: 'RadiusTokens.bar',
    4: 'RadiusTokens.xxs',
    6: 'RadiusTokens.xs',
    8: 'RadiusTokens.sm',
    12: 'RadiusTokens.md',
    16: 'RadiusTokens.lg',
    20: 'RadiusTokens.xl',
    24: 'RadiusTokens.xxl',
    28: 'RadiusTokens.xxxl',
    999: 'RadiusTokens.full',
  };

  @override
  void run(
    CustomLintResolver resolver,
    DiagnosticReporter reporter,
    CustomLintContext context,
  ) {
    if (resolver.path.contains('/theme/')) {
      return;
    }

    context.registry.addInstanceCreationExpression((node) {
      final ctor = node.constructorName;
      final typeName = ctor.type.name.lexeme;
      final named = ctor.name?.name;

      Map<int, String>? table;
      if (typeName == 'EdgeInsets') {
        table = _spacing;
      } else if (typeName == 'BorderRadius' && named == 'circular') {
        table = _radius;
      } else {
        return;
      }

      for (final arg in node.argumentList.arguments) {
        final expr = arg is NamedExpression ? arg.expression : arg;
        if (expr is IntegerLiteral) {
          final tok = table[expr.value];
          if (tok != null) {
            reporter.atNode(expr, code);
          }
        }
      }
    });
  }
}
