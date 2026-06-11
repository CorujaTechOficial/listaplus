import 'package:cloud_firestore/cloud_firestore.dart';
import 'firestore_base.dart';

mixin FirestoreMealPlansMixin on FirestoreBase {
  Future<List<Map<String, dynamic>>> loadMealPlans({DateTime? start, DateTime? end}) async {
    return FirestoreBase.retry(() async {
      var query = db.collection('users').doc(uid).collection('meal_plans') as Query<Map<String, dynamic>>;
      if (start != null) {
        query = query.where('date', isGreaterThanOrEqualTo: start.toIso8601String());
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

  Stream<List<Map<String, dynamic>>> watchMealPlans({DateTime? start, DateTime? end}) {
    var query = db.collection('users').doc(uid).collection('meal_plans') as Query<Map<String, dynamic>>;
    if (start != null) {
      query = query.where('date', isGreaterThanOrEqualTo: start.toIso8601String());
    }
    if (end != null) {
      query = query.where('date', isLessThanOrEqualTo: end.toIso8601String());
    }
    final stream = query.snapshots().map((snap) => snap.docs.map((d) {
          final data = d.data();
          data['id'] = d.id;
          return data;
        }).toList());
    return wrapStream(stream, label: 'watchMealPlans');
  }

  Future<void> saveMealPlan(Map<String, dynamic> mealPlan) async {
    return FirestoreBase.retry(() async {
      final id = mealPlan['id'] as String;
      await db
          .collection('users').doc(uid).collection('meal_plans').doc(id)
          .set(mealPlan);
    });
  }

  Future<void> deleteMealPlan(String id) async {
    return FirestoreBase.retry(() async {
      await db
          .collection('users').doc(uid).collection('meal_plans').doc(id)
          .delete();
    });
  }
}
