import 'dart:async';
import 'package:flutter/foundation.dart';

/// Utilitários para o assistente de IA
class AiUtils {
  /// Aguarda uma Future com timeout e valor padrão em caso de erro ou demora.
  static Future<T> awaitFuture<T>(
    Future<T> future, {
    required T defaultValue,
    Duration timeout = const Duration(seconds: 30),
    String? label,
  }) async {
    final stopwatch = Stopwatch()..start();
    try {
      final result = await future.timeout(timeout);
      stopwatch.stop();
      debugPrint('[AiUtils] [Performance] ${label ?? "future"} concluído em ${stopwatch.elapsedMilliseconds}ms');
      return result;
    } on Object catch (e) {
      stopwatch.stop();
      debugPrint('[AiUtils] [Performance] ${label ?? "future"} falhou/timeout após ${stopwatch.elapsedMilliseconds}ms: $e');
      return defaultValue;
    }
  }
}
