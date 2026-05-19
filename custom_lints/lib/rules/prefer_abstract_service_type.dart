import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

class PreferAbstractServiceType extends DartLintRule {
  const PreferAbstractServiceType() : super(code: _code);

  static const _code = LintCode(
    name: 'prefer_abstract_service_type',
    problemMessage:
        'Service providers devem usar o tipo abstrato (ex: StorageBackend), '
        'não a implementação concreta (ex: FirestoreService).',
  );

  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    context.registry.addVariableDeclaration((node) {
      final element = node.declaredFragment?.element;
      if (element == null) {
        return;
      }

      final typeName = element.type.getDisplayString();
      if (typeName.contains('Provider<') && typeName.endsWith('Impl>')) {
        reporter.atNode(node, code);
      }
    });
  }
}
