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
    try {
      return await future.timeout(timeout);
    } on Object catch (e) {
      debugPrint('[AiUtils] Erro/Timeout ao aguardar ${label ?? "future"}: $e');
      return defaultValue;
    }
  }
}
