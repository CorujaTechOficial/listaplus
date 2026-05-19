import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

class AvoidRawFirebaseOutsideService extends DartLintRule {
  const AvoidRawFirebaseOutsideService() : super(code: _code);

  static const _code = LintCode(
    name: 'avoid_raw_firebase_outside_service',
    problemMessage:
        'Evite usar FirebaseFirestore ou FirebaseAuth diretamente fora dos serviços. '
        'Use firestoreServiceProvider / authServiceProvider via Riverpod.',
  );

  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    final path = resolver.path;
    if (path.contains('/services/') ||
        path.contains('/test/') ||
        path.endsWith('_test.dart') ||
        path.endsWith('.g.dart')) {
      return;
    }

    context.registry.addPrefixedIdentifier((node) {
      _checkFirebaseAccess(node, reporter);
    });
  }

  void _checkFirebaseAccess(
    PrefixedIdentifier node,
    ErrorReporter reporter,
  ) {
    if (node.prefix.name == 'FirebaseFirestore' &&
        node.identifier.name == 'instance') {
      reporter.atNode(node, code);
    }
    if (node.prefix.name == 'FirebaseAuth' &&
        node.identifier.name == 'instance') {
      reporter.atNode(node, code);
    }
  }
}
