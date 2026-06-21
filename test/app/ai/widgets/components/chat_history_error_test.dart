import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/app/ai/widgets/components/chat_history_error.dart';

void main() {
  group('classifyChatHistoryError', () {
    test('Firestore unavailable reads as offline', () {
      final error = Exception(
        '[cloud_firestore/unavailable] The service is currently unavailable.',
      );
      expect(
        classifyChatHistoryError(error),
        ChatHistoryErrorKind.offline,
      );
    });

    test('Firestore deadline-exceeded reads as offline', () {
      final error = Exception(
        '[cloud_firestore/deadline-exceeded] Deadline exceeded.',
      );
      expect(
        classifyChatHistoryError(error),
        ChatHistoryErrorKind.offline,
      );
    });

    test('dart:io socket failure reads as offline', () {
      const error = SocketException('Failed host lookup: firestore.googleapis.com');
      expect(
        classifyChatHistoryError(error),
        ChatHistoryErrorKind.offline,
      );
    });

    test('permission-denied reads as generic, not offline', () {
      final error = Exception(
        '[cloud_firestore/permission-denied] Missing or insufficient permissions.',
      );
      expect(
        classifyChatHistoryError(error),
        ChatHistoryErrorKind.generic,
      );
    });

    test('an unexpected internal error reads as generic', () {
      final error = Exception('Something unexpected blew up');
      expect(
        classifyChatHistoryError(error),
        ChatHistoryErrorKind.generic,
      );
    });
  });
}
