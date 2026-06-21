import 'package:cloud_firestore/cloud_firestore.dart';
import '../../models/meal_type.dart';
import 'firestore_base.dart';

mixin FirestoreMealPlansMixin on FirestoreBase {
  Future<List<Map<String, dynamic>>> loadMealPlans({
    DateTime? start,
    DateTime? end,
  }) async {
    return FirestoreBase.retry(() async {
      var query =
          db.collection('users').doc(uid).collection('meal_plans')
              as Query<Map<String, dynamic>>;
      if (start != null) {
        query = query.where(
          'date',
          isGreaterThanOrEqualTo: start.toIso8601String(),
        );
      }
      if (end != null) {
        query = query.where('date', isLessThanOrEqualTo: end.toIso8601String());
      }
      final snap = await query.get();
      return snap.docs.map((d) {
        final data = d.data();
        data['id'] = d.id;
        return data;
      }).toList();
    }, label: 'loadMealPlans');
  }

  Stream<List<Map<String, dynamic>>> watchMealPlans({
    DateTime? start,
    DateTime? end,
  }) {
    var query =
        db.collection('users').doc(uid).collection('meal_plans')
            as Query<Map<String, dynamic>>;
    if (start != null) {
      query = query.where(
        'date',
        isGreaterThanOrEqualTo: start.toIso8601String(),
      );
    }
    if (end != null) {
      query = query.where('date', isLessThanOrEqualTo: end.toIso8601String());
    }
    final stream = query.snapshots().map(
      (snap) =>
          snap.docs.map((d) {
            final data = d.data();
            data['id'] = d.id;
            return data;
          }).toList(),
    );
    return wrapStream(stream, label: 'watchMealPlans');
  }

  Future<void> saveMealPlan(Map<String, dynamic> mealPlan) async {
    return FirestoreBase.retry(() async {
      final id = mealPlan['id'] as String;
      await db
          .collection('users')
          .doc(uid)
          .collection('meal_plans')
          .doc(id)
          .set(mealPlan);
    });
  }

  Future<void> deleteMealPlan(String id) async {
    return FirestoreBase.retry(() async {
      await db
          .collection('users')
          .doc(uid)
          .collection('meal_plans')
          .doc(id)
          .delete();
    });
  }

  Future<List<MealType>> loadMealTypes() async {
    return FirestoreBase.retry(() async {
      final snap = await queryGetWithCacheFallback(
        db.collection('users').doc(uid).collection('meal_types'),
      );
      return snap.docs.map((d) {
        final data = d.data();
        data['id'] = d.id;
        return MealType.fromJson(data);
      }).toList();
    });
  }

  Stream<List<MealType>> watchMealTypes() {
    final stream = db
        .collection('users')
        .doc(uid)
        .collection('meal_types')
        .snapshots()
        .map(
          (snap) => snap.docs.map((d) {
            final data = d.data();
            data['id'] = d.id;
            return MealType.fromJson(data);
          }).toList(),
        );
    return wrapStream(stream, label: 'watchMealTypes');
  }

  Future<void> saveMealType(MealType type) async {
    return FirestoreBase.retry(() async {
      await db
          .collection('users')
          .doc(uid)
          .collection('meal_types')
          .doc(type.id)
          .set(type.toJson());
    });
  }

  Future<void> deleteMealType(String id) async {
    return FirestoreBase.retry(() async {
      await db
          .collection('users')
          .doc(uid)
          .collection('meal_types')
          .doc(id)
          .delete();
    });
  }

  Future<void> saveMealTypes(List<MealType> types) async {
    return FirestoreBase.retry(() async {
      final ref = db.collection('users').doc(uid).collection('meal_types');
      const limit = 500;
      for (var i = 0; i < types.length; i += limit) {
        final batch = db.batch();
        final chunk = types.sublist(
          i,
          (i + limit) > types.length ? types.length : i + limit,
        );
        for (final t in chunk) {
          batch.set(ref.doc(t.id), t.toJson());
        }
        await batch.commit();
      }
    });
  }
}
