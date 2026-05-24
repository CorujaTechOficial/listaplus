import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/core/utils/logger.dart';

void main() {
  group('Logger', () {
    test('log does not throw', () {
      expect(() => Logger.log('test message'), returnsNormally);
    });

    test('error does not throw without error/stack', () {
      expect(() => Logger.error('test error'), returnsNormally);
    });

    test('error does not throw with error and stack', () {
      expect(
        () => Logger.error('test error', Exception('fail'), StackTrace.current),
        returnsNormally,
      );
    });
  });
}
