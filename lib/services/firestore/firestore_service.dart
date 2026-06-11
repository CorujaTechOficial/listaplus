import '../storage_backend.dart';
import 'firestore_base.dart';
import 'firestore_lists_mixin.dart';
import 'firestore_items_mixin.dart';
import 'firestore_user_mixin.dart';
import 'firestore_sharing_mixin.dart';
import 'firestore_pantry_mixin.dart';
import 'firestore_chat_mixin.dart';
import 'firestore_categories_mixin.dart';
import 'firestore_recipes_mixin.dart';
import 'firestore_meal_plans_mixin.dart';
import 'firestore_feedback_mixin.dart';

class FirestoreService extends FirestoreBase
    with
        FirestoreListsMixin,
        FirestoreItemsMixin,
        FirestoreUserMixin,
        FirestoreSharingMixin,
        FirestorePantryMixin,
        FirestoreChatMixin,
        FirestoreCategoriesMixin,
        FirestoreRecipesMixin,
        FirestoreMealPlansMixin,
        FirestoreFeedbackMixin
    implements StorageBackend {
  FirestoreService({
    super.firestore,
    required super.uid,
  });
}
