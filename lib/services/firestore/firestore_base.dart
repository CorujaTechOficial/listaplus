import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import '../../models/shopping_item.dart';
import '../logger_service.dart';

class FirestoreBase {
  FirestoreBase({
    FirebaseFirestore? firestore,
    required String uid,
  })  : _db = firestore ?? FirebaseFirestore.instance,
        _uid = uid {
    debugPrint('FirestoreService initialized for UID: $_uid');
    try {
      _db.settings = const Settings(persistenceEnabled: true, cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED);
    } on Object catch (_) {
      // Ignored — FakeFirebaseFirestore (test) doesn't expose a settings setter.
    }
  }

  final FirebaseFirestore _db;
  final String _uid;

  FirebaseFirestore get db => _db;
  String get uid => _uid;

  Future<DocumentSnapshot<Map<String, dynamic>>> docGetWithCacheFallback(DocumentReference<Map<String, dynamic>> ref) async {
    try {
      final doc = await ref.get().timeout(const Duration(seconds: 3));
      return doc;
    } on Object catch (_) {
      final doc = await ref.get(const GetOptions(source: Source.cache));
      return doc;
    }
  }

  Future<QuerySnapshot<Map<String, dynamic>>> queryGetWithCacheFallback(Query<Map<String, dynamic>> query) async {
    try {
      final snap = await query.get().timeout(const Duration(seconds: 3));
      return snap;
    } on Object catch (_) {
      final snap = await query.get(const GetOptions(source: Source.cache));
      return snap;
    }
  }

  static const _maxRetries = 3;
  static const _baseDelay = Duration(milliseconds: 300);
  static const _operationTimeout = Duration(seconds: 30);
  static const _streamTimeout = Duration(seconds: 30);

  static bool isTransientError(Object error) {
    if (error is FirebaseException) {
      return error.code == 'unavailable' ||
          error.code == 'deadline-exceeded' ||
          error.code == 'resource-exhausted' ||
          error.code == 'aborted' ||
          error.code == 'internal';
    }
    if (error is SocketException || error is HttpException || error is TimeoutException) {
      return true;
    }
    return false;
  }

  static Future<T> retry<T>(Future<T> Function() fn, {String? label}) async {
    var attempt = 0;
    while (true) {
      try {
        return await fn().timeout(_operationTimeout);
      } on Object catch (e) {
        attempt++;
        if (attempt >= _maxRetries || !isTransientError(e)) {
          LoggerService.error(e, message: 'Firestore._retry falhou após $attempt tentativas${label != null ? " [$label]" : ""}');
          rethrow;
        }
        LoggerService.log('Firestore._retry: tentativa $attempt/$_maxRetries falhou - $e${label != null ? " [$label]" : ""}', tag: 'FirestoreService');
        final delay = _baseDelay * pow(2, attempt - 1).toInt();
        final jitter = Random().nextInt(100);
        await Future<void>.delayed(delay + Duration(milliseconds: jitter));
      }
    }
  }

  Stream<T> wrapStream<T>(Stream<T> stream, {String? label}) {
    bool hasEmitted = false;
    late StreamController<T> controller;
    StreamSubscription<T>? sub;

    final Timer timeoutTimer = Timer(_streamTimeout, () {
      if (!hasEmitted && !controller.isClosed) {
        LoggerService.log('Firestore Stream Timeout ($label) para UID: $_uid', tag: 'FirestoreService');
        debugPrint('[FirestoreService] Timeout na stream: $label');
        controller.addError(TimeoutException('Tempo esgotado ao conectar com o servidor ($label). Verifique sua conexão.'));
      }
    });

    controller = StreamController<T>(
      onListen: () {
        debugPrint('[FirestoreService] Iniciando stream: $label para UID: $_uid');
        sub = stream.listen(
          (data) {
            if (!hasEmitted) {
              debugPrint('[FirestoreService] Primeiro evento recebido: $label');
            }
            hasEmitted = true;
            timeoutTimer.cancel();
            if (!controller.isClosed) {
              controller.add(data);
            }
          },
          onError: (Object e) {
            timeoutTimer.cancel();
            LoggerService.error(e, message: 'Firestore Stream Error ($label)');
            if (!controller.isClosed) {
              controller.addError(e);
            }
          },
          onDone: () {
            timeoutTimer.cancel();
            if (!controller.isClosed) {
              controller.close();
            }
          },
          cancelOnError: false,
        );
      },
      onCancel: () {
        timeoutTimer.cancel();
        sub?.cancel();
      },
    );

    return controller.stream;
  }

  Future<void> commitBatchInChunks(
    CollectionReference itemsRef,
    List<QueryDocumentSnapshot<Map<String, dynamic>>> existingDocs,
    List<ShoppingItem> items,
  ) async {
    final newItemIds = items.map((i) => i.id).toSet();
    final docsToDelete = existingDocs.where((doc) => !newItemIds.contains(doc.id)).toList();
    const limit = 500;
    final totalOps = docsToDelete.length + items.length;
    if (totalOps <= limit) {
      final batch = _db.batch();
      for (final doc in docsToDelete) {
        batch.delete(doc.reference);
      }
      for (final item in items) {
        batch.set(itemsRef.doc(item.id), item.toJson());
      }
      await batch.commit();
      return;
    }
    final allDeleteRefs = docsToDelete.map((d) => d.reference).toList();
    for (var i = 0; i < allDeleteRefs.length; i += limit) {
      final batch = _db.batch();
      final chunk = allDeleteRefs.sublist(i, (i + limit) > allDeleteRefs.length ? allDeleteRefs.length : i + limit);
      for (final ref in chunk) {
        batch.delete(ref);
      }
      await batch.commit();
    }
    for (var i = 0; i < items.length; i += limit) {
      final batch = _db.batch();
      final chunk = items.sublist(i, (i + limit) > items.length ? items.length : i + limit);
      for (final item in chunk) {
        batch.set(itemsRef.doc(item.id), item.toJson());
      }
      await batch.commit();
    }
  }
}
