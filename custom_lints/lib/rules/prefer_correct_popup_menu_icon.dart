import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

class PreferCorrectPopupMenuIcon extends DartLintRule {
  const PreferCorrectPopupMenuIcon() : super(code: _code);

  static const _code = LintCode(
    name: 'prefer_correct_popup_menu_icon',
    problemMessage:
        'PopupMenuButton deve usar icon: const Icon(Icons.more_vert) '
        '(não Icons.menu nem drawer).',
  );

  @override
  void run(
    CustomLintResolver resolver,
    DiagnosticReporter reporter,
    CustomLintContext context,
  ) {
    context.registry.addInstanceCreationExpression((node) {
      final type = node.staticType;
      if (type == null) {
        return;
      }
      if (type.getDisplayString() != 'PopupMenuButton') {
        return;
      }

      for (final arg in node.argumentList.arguments) {
        if (arg is! NamedExpression) {
          continue;
        }
        if (arg.name.label.name != 'icon') {
          continue;
        }

        final iconName = _extractIconName(arg.expression);
        if (iconName != null && iconName != 'more_vert') {
          reporter.atNode(arg.expression, code);
        }
      }
    });
  }

  String? _extractIconName(Expression expr) {
    if (expr is PrefixedIdentifier && expr.prefix.name == 'Icons') {
      return expr.identifier.name;
    }
    if (expr is InstanceCreationExpression) {
      for (final arg in expr.argumentList.arguments) {
        if (arg is PrefixedIdentifier && arg.prefix.name == 'Icons') {
          return arg.identifier.name;
        }
        if (arg is NamedExpression) {
          final inner = arg.expression;
          if (inner is PrefixedIdentifier && inner.prefix.name == 'Icons') {
            return inner.identifier.name;
          }
        }
      }
    }
    return null;
  }
}
