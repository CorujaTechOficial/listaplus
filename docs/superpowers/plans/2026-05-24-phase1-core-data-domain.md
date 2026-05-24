# Fase 1 — Core + Data + Domain Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Criar a nova estrutura de diretórios (`core/`, `domain/`, `data/`) com entidades puras, DTOs, interfaces de repositório, e utilitários. Tudo feito em TDD (Red → Green → Refactor). Arquivos originais mantidos como redirects.

**Architecture:** Clean Architecture simplificada com 4 camadas: `core/` (utilidades compartilhadas), `domain/` (entidades puras + interfaces), `data/` (DTOs + datasources + repositórios), `app/` (telas + providers + widgets). Cada entidade/model segue TDD: teste primeiro, código depois.

**Tech Stack:** Flutter 3.29+, Riverpod 3.x, Firebase Firestore, `fake_cloud_firestore` para testes, `freezed_annotation` + `json_annotation`.

---

## Task 1: Criar estrutura de diretórios vazia

- [ ] **Step 1: Criar diretórios**

Run:
```bash
cd /Users/absondutragalvao/corujatech\ projetos/shopping_list
mkdir -p lib/core/{theme,constants,utils,widgets,providers}
mkdir -p lib/domain/{entities,repositories}
mkdir -p lib/data/{models,datasources/firestore,repositories}
mkdir -p lib/app/{lists/{providers,screens,widgets},ai/{providers,screens,widgets,agent/{tools,executors}},pantry/{providers,screens,widgets},recipes/{providers,screens,widgets},meal_planner/{providers,screens,widgets},settings/{providers,screens,widgets},auth/{providers,screens,widgets},onboarding/{providers,screens,widgets}}
mkdir -p test/{core/{theme,constants,utils},domain/entities,data/{models,datasources/firestore,repositories},app/{lists/{providers,screens,widgets},ai/{providers,screens,widgets,agent/{tools,executors}},pantry/{providers,screens,widgets},recipes/{providers,screens,widgets},meal_planner/{providers,screens,widgets},settings/{providers,screens,widgets},auth/{providers,screens,widgets},onboarding/{providers,screens,widgets}},golden/widgets,integration_test,helpers}
```

Expected: All directories created without errors.

- [ ] **Step 2: Commit**

```bash
git add .
git commit -m "chore: create new directory structure for architectural rewrite"
```

---

## Task 2: [TDD] Criar entidade `Category` (pura) em `domain/entities/`

- [ ] **Step 1: Escrever test que falha**

Create `test/domain/entities/category_test.dart`:

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/domain/entities/category.dart';

void main() {
  group('Category', () {
    test('has correct enum values', () {
      expect(Category.values.length, 6);
      expect(Category.fruits.name, 'fruits');
      expect(Category.cleaning.name, 'cleaning');
      expect(Category.beverages.name, 'beverages');
      expect(Category.bakery.name, 'bakery');
      expect(Category.others.name, 'others');
    });

    test('localizedLabel returns correct string', () {
      expect(Category.fruits.label, 'Frutas');
      expect(Category.cleaning.label, 'Limpeza');
      expect(Category.beverages.label, 'Bebidas');
      expect(Category.bakery.label, 'Padaria');
      expect(Category.others.label, 'Outros');
    });

    test('defaultCategories contains all values', () {
      expect(Category.defaultCategories.length, Category.values.length);
    });

    test('byId returns correct category', () {
      expect(Category.byId('fruits'), Category.fruits);
      expect(Category.byId('others'), Category.others);
      expect(Category.byId('unknown'), Category.others);
    });
  });
}
```

- [ ] **Step 2: Run test to verify it fails**

Run: `flutter test test/domain/entities/category_test.dart`
Expected: FAIL — "Target not found" or import errors

- [ ] **Step 3: Criar entidade mínima**

Create `lib/domain/entities/category.dart`:

```dart
enum Category {
  fruits('Frutas'),
  cleaning('Limpeza'),
  beverages('Bebidas'),
  bakery('Padaria'),
  others('Outros');

  const Category(this.label);
  final String label;

  static List<Category> get defaultCategories => Category.values;

  static Category byId(String id) {
    return Category.values.firstWhere(
      (c) => c.name == id,
      orElse: () => Category.others,
    );
  }
}
```

- [ ] **Step 4: Run test to verify it passes**

Run: `flutter test test/domain/entities/category_test.dart`
Expected: PASS

- [ ] **Step 5: Commit**

```bash
git add lib/domain/entities/category.dart test/domain/entities/category_test.dart
git commit -m "feat(domain): add Category entity with TDD"
```

---

## Task 3: [TDD] Criar entidade `Unit` (pura) em `domain/entities/`

- [ ] **Step 1: Escrever test que falha**

Create `test/domain/entities/unit_test.dart`:

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/domain/entities/unit.dart';

void main() {
  group('Unit', () {
    test('has correct enum values and labels', () {
      expect(Unit.un.label, 'un');
      expect(Unit.kg.label, 'kg');
      expect(Unit.g.label, 'g');
      expect(Unit.L.label, 'L');
      expect(Unit.mL.label, 'mL');
      expect(Unit.pack.label, 'pacote');
    });

    test('byName returns correct unit', () {
      expect(Unit.byName('kg'), Unit.kg);
      expect(Unit.byName('unknown'), Unit.un);
    });
  });
}
```

- [ ] **Step 2: Run test to verify it fails**

Run: `flutter test test/domain/entities/unit_test.dart`
Expected: FAIL

- [ ] **Step 3: Criar entidade mínima**

Create `lib/domain/entities/unit.dart`:

```dart
enum Unit {
  un('un'),
  kg('kg'),
  g('g'),
  L('L'),
  mL('mL'),
  pack('pacote');

  const Unit(this.label);
  final String label;

  static Unit byName(String name) {
    return Unit.values.firstWhere(
      (u) => u.name == name,
      orElse: () => Unit.un,
    );
  }
}
```

- [ ] **Step 4: Run test to verify it passes**

Run: `flutter test test/domain/entities/unit_test.dart`
Expected: PASS

- [ ] **Step 5: Commit**

```bash
git add lib/domain/entities/unit.dart test/domain/entities/unit_test.dart
git commit -m "feat(domain): add Unit entity with TDD"
```

---

## Task 4: [TDD] Criar entidade `ShoppingList` (pura) em `domain/entities/`

A entidade pura NÃO tem `fromJson`/`toJson` nem `uuid`. IDs são `String` simples.

- [ ] **Step 1: Escrever test que falha**

Create `test/domain/entities/shopping_list_test.dart`:

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/domain/entities/shopping_list.dart';

void main() {
  group('ShoppingList', () {
    test('constructor sets default values', () {
      final list = ShoppingList(id: '1', name: 'Test');
      expect(list.id, '1');
      expect(list.name, 'Test');
      expect(list.budget, isNull);
      expect(list.ownerUid, isNull);
      expect(list.isArchived, false);
      expect(list.createdAt, isA<DateTime>());
      expect(list.updatedAt, isA<DateTime>());
    });

    test('isShared returns true when ownerUid is not null', () {
      final shared = ShoppingList(id: '1', name: 'Shared', ownerUid: 'uid1');
      expect(shared.isShared, true);
    });

    test('isShared returns false when ownerUid is null', () {
      final own = ShoppingList(id: '1', name: 'Own');
      expect(own.isShared, false);
    });

    test('copyWith updates only specified fields', () {
      final list = ShoppingList(id: '1', name: 'Original');
      final copy = list.copyWith(name: 'Updated', budget: 100.0);
      expect(copy.name, 'Updated');
      expect(copy.budget, 100.0);
      expect(copy.id, '1');
      expect(copy.isArchived, false);
    });

    test('copyWith clears nullable fields with null', () {
      final list = ShoppingList(id: '1', name: 'Test', budget: 50.0);
      final copy = list.copyWith(budget: null);
      expect(copy.budget, isNull);
    });
  });
}
```

- [ ] **Step 2: Run test to verify it fails**

Run: `flutter test test/domain/entities/shopping_list_test.dart`
Expected: FAIL

- [ ] **Step 3: Criar entidade mínima**

Create `lib/domain/entities/shopping_list.dart`:

```dart
class ShoppingList {
  ShoppingList({
    required this.id,
    required this.name,
    this.budget,
    this.ownerUid,
    this.isArchived = false,
    this.archivedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  })  : createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();

  final String id;
  final String name;
  final double? budget;
  final String? ownerUid;
  final bool isArchived;
  final DateTime? archivedAt;
  final DateTime createdAt;
  final DateTime updatedAt;

  bool get isShared => ownerUid != null;

  static const _sentinel = Object();

  ShoppingList copyWith({
    String? id,
    String? name,
    Object? budget = _sentinel,
    Object? ownerUid = _sentinel,
    bool? isArchived,
    Object? archivedAt = _sentinel,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return ShoppingList(
      id: id ?? this.id,
      name: name ?? this.name,
      budget: identical(budget, _sentinel) ? this.budget : budget as double?,
      ownerUid: identical(ownerUid, _sentinel) ? this.ownerUid : ownerUid as String?,
      isArchived: isArchived ?? this.isArchived,
      archivedAt: identical(archivedAt, _sentinel) ? this.archivedAt : archivedAt as DateTime?,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
```

- [ ] **Step 4: Run test to verify it passes**

Run: `flutter test test/domain/entities/shopping_list_test.dart`
Expected: PASS

- [ ] **Step 5: Commit**

```bash
git add lib/domain/entities/shopping_list.dart test/domain/entities/shopping_list_test.dart
git commit -m "feat(domain): add ShoppingList entity with TDD"
```

---

## Task 5: [TDD] Criar entidade `ShoppingItem` (pura) em `domain/entities/`

- [ ] **Step 1: Escrever test que falha**

Create `test/domain/entities/shopping_item_test.dart`:

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/domain/entities/shopping_item.dart';
import 'package:shopping_list/domain/entities/unit.dart';
import 'package:shopping_list/domain/entities/category.dart';

void main() {
  group('ShoppingItem', () {
    test('constructor sets default values', () {
      final item = ShoppingItem(id: '1', shoppingListId: 'list1', name: 'Test');
      expect(item.id, '1');
      expect(item.shoppingListId, 'list1');
      expect(item.name, 'Test');
      expect(item.quantity, 1);
      expect(item.category, Category.others);
      expect(item.unit, Unit.un);
      expect(item.estimatedPrice, isNull);
      expect(item.isPurchased, false);
    });

    test('copyWith updates only specified fields', () {
      final item = ShoppingItem(id: '1', shoppingListId: 'list1', name: 'Item');
      final copy = item.copyWith(name: 'Updated', isPurchased: true);
      expect(copy.name, 'Updated');
      expect(copy.isPurchased, true);
      expect(copy.id, '1');
      expect(copy.shoppingListId, 'list1');
    });
  });
}
```

- [ ] **Step 2: Run test to verify it fails**

Run: `flutter test test/domain/entities/shopping_item_test.dart`
Expected: FAIL

- [ ] **Step 3: Criar entidade mínima**

Create `lib/domain/entities/shopping_item.dart`:

```dart
import 'category.dart';
import 'unit.dart';

class ShoppingItem {
  ShoppingItem({
    required this.id,
    required this.shoppingListId,
    required this.name,
    this.quantity = 1,
    this.category = Category.others,
    this.unit = Unit.un,
    this.estimatedPrice,
    this.isPurchased = false,
    DateTime? createdAt,
    DateTime? updatedAt,
  })  : createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();

  final String id;
  final String shoppingListId;
  final String name;
  final int quantity;
  final Category category;
  final Unit unit;
  final double? estimatedPrice;
  final bool isPurchased;
  final DateTime createdAt;
  final DateTime updatedAt;

  static const _sentinel = Object();

  ShoppingItem copyWith({
    String? id,
    String? shoppingListId,
    String? name,
    int? quantity,
    Category? category,
    Unit? unit,
    Object? estimatedPrice = _sentinel,
    bool? isPurchased,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return ShoppingItem(
      id: id ?? this.id,
      shoppingListId: shoppingListId ?? this.shoppingListId,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      category: category ?? this.category,
      unit: unit ?? this.unit,
      estimatedPrice: identical(estimatedPrice, _sentinel) ? this.estimatedPrice : estimatedPrice as double?,
      isPurchased: isPurchased ?? this.isPurchased,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
```

- [ ] **Step 4: Run test to verify it passes**

Run: `flutter test test/domain/entities/shopping_item_test.dart`
Expected: PASS

- [ ] **Step 5: Commit**

```bash
git add lib/domain/entities/shopping_item.dart test/domain/entities/shopping_item_test.dart
git commit -m "feat(domain): add ShoppingItem entity with TDD"
```

---

## Task 6: [TDD] Criar entidades restantes (pantry_item, recipe, meal_plan, user_profile)

- [ ] **Step 1: Criar `PantryItem` entidade** — test → implement → verify → commit

Create `test/domain/entities/pantry_item_test.dart`:
```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/domain/entities/pantry_item.dart';
import 'package:shopping_list/domain/entities/unit.dart';

void main() {
  group('PantryItem', () {
    test('constructor sets default values', () {
      final item = PantryItem(id: '1', name: 'Arroz');
      expect(item.id, '1');
      expect(item.name, 'Arroz');
      expect(item.quantity, 1);
      expect(item.unit, Unit.un);
    });

    test('copyWith updates fields', () {
      final item = PantryItem(id: '1', name: 'Arroz', quantity: 1);
      final copy = item.copyWith(quantity: 5);
      expect(copy.quantity, 5);
      expect(copy.name, 'Arroz');
    });
  });
}
```

Create `lib/domain/entities/pantry_item.dart`:
```dart
import 'unit.dart';

class PantryItem {
  PantryItem({
    required this.id,
    required this.name,
    this.quantity = 1,
    this.unit = Unit.un,
    this.categoryId = 'others',
    this.minQuantity = 0,
    this.expiryDate,
    DateTime? createdAt,
    DateTime? updatedAt,
  })  : createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();

  final String id;
  final String name;
  final int quantity;
  final Unit unit;
  final String categoryId;
  final int minQuantity;
  final DateTime? expiryDate;
  final DateTime createdAt;
  final DateTime updatedAt;

  static const _sentinel = Object();

  bool get isLow => quantity <= minQuantity;

  PantryItem copyWith({
    String? id,
    String? name,
    int? quantity,
    Unit? unit,
    String? categoryId,
    int? minQuantity,
    Object? expiryDate = _sentinel,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return PantryItem(
      id: id ?? this.id,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
      categoryId: categoryId ?? this.categoryId,
      minQuantity: minQuantity ?? this.minQuantity,
      expiryDate: identical(expiryDate, _sentinel) ? this.expiryDate : expiryDate as DateTime?,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
```

Run: `flutter test test/domain/entities/pantry_item_test.dart`
Expected: PASS
Commit:
```bash
git add lib/domain/entities/pantry_item.dart test/domain/entities/pantry_item_test.dart
git commit -m "feat(domain): add PantryItem entity with TDD"
```

- [ ] **Step 2: Criar `UserProfile` entidade** — test → implement → verify → commit

Create `test/domain/entities/user_profile_test.dart`:
```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/domain/entities/user_profile.dart';

void main() {
  group('UserProfile', () {
    test('constructor sets default values', () {
      final profile = UserProfile(uid: 'uid1');
      expect(profile.uid, 'uid1');
      expect(profile.displayName, isNull);
      expect(profile.themeMode, isNull);
      expect(profile.isPremium, false);
    });

    test('copyWith updates fields', () {
      final profile = UserProfile(uid: 'uid1');
      final copy = profile.copyWith(displayName: 'User', isPremium: true);
      expect(copy.displayName, 'User');
      expect(copy.isPremium, true);
      expect(copy.uid, 'uid1');
    });
  });
}
```

Create `lib/domain/entities/user_profile.dart`:
```dart
class UserProfile {
  UserProfile({
    required this.uid,
    this.displayName,
    this.email,
    this.themeMode,
    this.locale,
    this.isPremium = false,
    this.currentListId,
    this.aiCredits = 0,
    DateTime? createdAt,
    DateTime? updatedAt,
  })  : createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();

  final String uid;
  final String? displayName;
  final String? email;
  final String? themeMode;
  final String? locale;
  final bool isPremium;
  final String? currentListId;
  final int aiCredits;
  final DateTime createdAt;
  final DateTime updatedAt;

  static const _sentinel = Object();

  UserProfile copyWith({
    String? uid,
    Object? displayName = _sentinel,
    Object? email = _sentinel,
    Object? themeMode = _sentinel,
    Object? locale = _sentinel,
    bool? isPremium,
    Object? currentListId = _sentinel,
    int? aiCredits,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return UserProfile(
      uid: uid ?? this.uid,
      displayName: identical(displayName, _sentinel) ? this.displayName : displayName as String?,
      email: identical(email, _sentinel) ? this.email : email as String?,
      themeMode: identical(themeMode, _sentinel) ? this.themeMode : themeMode as String?,
      locale: identical(locale, _sentinel) ? this.locale : locale as String?,
      isPremium: isPremium ?? this.isPremium,
      currentListId: identical(currentListId, _sentinel) ? this.currentListId : currentListId as String?,
      aiCredits: aiCredits ?? this.aiCredits,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
```

Run: `flutter test test/domain/entities/user_profile_test.dart`
Expected: PASS
Commit:
```bash
git add lib/domain/entities/user_profile.dart test/domain/entities/user_profile_test.dart
git commit -m "feat(domain): add UserProfile entity with TDD"
```

- [ ] **Step 3: Criar `Recipe` entidade** — test → implement → verify

Create `test/domain/entities/recipe_test.dart` com testes de construção, `copyWith`.

Create `lib/domain/entities/recipe.dart` com `String id, String name, String? description, List<String> ingredients, List<String> steps, int? prepTime`.

Run: `flutter test test/domain/entities/recipe_test.dart`
Expected: PASS
Commit:
```bash
git add lib/domain/entities/recipe.dart test/domain/entities/recipe_test.dart
git commit -m "feat(domain): add Recipe entity with TDD"
```

- [ ] **Step 4: Criar `MealPlan` entidade** — test → implement → verify

Create `test/domain/entities/meal_plan_test.dart` com testes de construção, `copyWith`.

Create `lib/domain/entities/meal_plan.dart` com `String id, String recipeId, DateTime date, String? mealType`.

Run: `flutter test test/domain/entities/meal_plan_test.dart`
Expected: PASS
Commit:
```bash
git add lib/domain/entities/meal_plan.dart test/domain/entities/meal_plan_test.dart
git commit -m "feat(domain): add MealPlan entity with TDD"
```

---

## Task 7: [TDD] Criar DTOs em `data/models/`

Para cada entidade, criar um DTO com `fromJson`/`toJson` para Firestore.

- [ ] **Step 1: Criar `ShoppingListModel`** — test → implement → verify

Create `test/data/models/shopping_list_model_test.dart`:

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/data/models/shopping_list_model.dart';
import 'package:shopping_list/domain/entities/shopping_list.dart';

void main() {
  group('ShoppingListModel', () {
    test('fromJson parses valid JSON', () {
      final json = {
        'id': '1',
        'name': 'Compras',
        'budget': 100.0,
        'ownerUid': null,
        'isArchived': false,
        'archivedAt': null,
        'createdAt': DateTime.now().toIso8601String(),
        'updatedAt': DateTime.now().toIso8601String(),
      };
      final model = ShoppingListModel.fromJson(json);
      expect(model.id, '1');
      expect(model.name, 'Compras');
      expect(model.budget, 100.0);
    });

    test('fromJson handles null dates', () {
      final json = {
        'id': '1',
        'name': 'Test',
        'createdAt': null,
        'updatedAt': null,
      };
      final model = ShoppingListModel.fromJson(json);
      expect(model.createdAt, isA<DateTime>());
    });

    test('toJson produces correct map', () {
      final model = ShoppingListModel(id: '1', name: 'Test', budget: 50.0);
      final json = model.toJson();
      expect(json['id'], '1');
      expect(json['name'], 'Test');
      expect(json['budget'], 50.0);
      expect(json['isArchived'], false);
    });

    test('toEntity returns correct domain entity', () {
      final model = ShoppingListModel(id: '1', name: 'Test');
      final entity = model.toEntity();
      expect(entity.id, '1');
      expect(entity.name, 'Test');
    });

    test('fromEntity creates model from domain entity', () {
      final entity = ShoppingList(id: '1', name: 'Test', budget: 50.0);
      final model = ShoppingListModel.fromEntity(entity);
      expect(model.id, '1');
      expect(model.name, 'Test');
      expect(model.budget, 50.0);
    });
  });
}
```

Create `lib/data/models/shopping_list_model.dart`:

```dart
import '../../domain/entities/shopping_list.dart';

class ShoppingListModel {
  ShoppingListModel({
    required this.id,
    required this.name,
    this.budget,
    this.ownerUid,
    this.isArchived = false,
    this.archivedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  })  : createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();

  factory ShoppingListModel.fromJson(Map<String, dynamic> json) {
    return ShoppingListModel(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      budget: (json['budget'] as num?)?.toDouble(),
      ownerUid: json['ownerUid'] as String?,
      isArchived: json['isArchived'] as bool? ?? false,
      archivedAt: _parseDate(json['archivedAt']),
      createdAt: _parseDate(json['createdAt']),
      updatedAt: _parseDate(json['updatedAt']),
    );
  }

  factory ShoppingListModel.fromEntity(ShoppingList entity) {
    return ShoppingListModel(
      id: entity.id,
      name: entity.name,
      budget: entity.budget,
      ownerUid: entity.ownerUid,
      isArchived: entity.isArchived,
      archivedAt: entity.archivedAt,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  static DateTime _parseDate(dynamic value) {
    if (value == null) return DateTime.now();
    if (value is DateTime) return value;
    return DateTime.tryParse(value.toString()) ?? DateTime.now();
  }

  final String id;
  final String name;
  final double? budget;
  final String? ownerUid;
  final bool isArchived;
  final DateTime? archivedAt;
  final DateTime createdAt;
  final DateTime updatedAt;

  ShoppingList toEntity() {
    return ShoppingList(
      id: id,
      name: name,
      budget: budget,
      ownerUid: ownerUid,
      isArchived: isArchived,
      archivedAt: archivedAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'budget': budget,
      'ownerUid': ownerUid,
      'isArchived': isArchived,
      'archivedAt': archivedAt?.toIso8601String(),
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}
```

Run: `flutter test test/data/models/shopping_list_model_test.dart`
Expected: PASS
Commit:
```bash
git add lib/data/models/shopping_list_model.dart test/data/models/shopping_list_model_test.dart
git commit -m "feat(data): add ShoppingListModel DTO with TDD"
```

- [ ] **Step 2: Criar `ShoppingItemModel`** — test → implement → verify

Create `test/data/models/shopping_item_model_test.dart` com testes de:
- `fromJson` com todos os campos
- `fromJson` com category como string antiga
- `toJson` com saída correta
- `toEntity` / `fromEntity`

Create `lib/data/models/shopping_item_model.dart` com `fromJson`/`toJson` + `toEntity`/`fromEntity` (mapeando `Category` enum ↔ string e `Unit` enum ↔ string).

Commit:
```bash
git add lib/data/models/shopping_item_model.dart test/data/models/shopping_item_model_test.dart
git commit -m "feat(data): add ShoppingItemModel DTO with TDD"
```

- [ ] **Step 3: Criar `PantryItemModel`** — test → implement → verify → commit

Same pattern: `fromJson`/`toJson`/`toEntity`/`fromEntity`.

- [ ] **Step 4: Criar `RecipeModel`** — test → implement → verify → commit

- [ ] **Step 5: Criar `MealPlanModel`** — test → implement → verify → commit

- [ ] **Step 6: Criar `UserProfileModel`** — test → implement → verify → commit

- [ ] **Step 7: Criar `ChatMessageModel`** — test → implement → verify → commit

Note: ChatMessageModel lives in `data/models/` and has `String id, String? listId, String role, String content, DateTime timestamp, Map<String,dynamic>? toolCalls`.

---

## Task 8: [TDD] Criar `core/utils/` — utilitários

- [ ] **Step 1: Criar `core/utils/extensions.dart`** — test → implement → verify

Create `test/core/utils/extensions_test.dart`:
```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/core/utils/extensions.dart';

void main() {
  group('DateTimeExtensions', () {
    test('toISODate returns correct format', () {
      final date = DateTime(2026, 5, 24);
      expect(date.toISODate(), '2026-05-24');
    });
  });

  group('StringExtensions', () {
    test('capitalize capitalizes first letter', () {
      expect('hello'.capitalize(), 'Hello');
    });

    test('capitalize returns empty for empty string', () {
      expect(''.capitalize(), '');
    });
  });
}
```

Create `lib/core/utils/extensions.dart`:
```dart
extension DateTimeExtensions on DateTime {
  String toISODate() => '${year.toString().padLeft(4, '0')}-${month.toString().padLeft(2, '0')}-${day.toString().padLeft(2, '0')}';
}

extension StringExtensions on String {
  String capitalize() {
    if (isEmpty) return this;
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}
```

Run: `flutter test test/core/utils/extensions_test.dart`
Expected: PASS
Commit:
```bash
git add lib/core/utils/extensions.dart test/core/utils/extensions_test.dart
git commit -m "feat(core): add extensions utilities with TDD"
```

- [ ] **Step 2: Criar `core/utils/formatters.dart`** — test → implement → verify

Create `test/core/utils/formatters_test.dart`:
```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/core/utils/formatters.dart';

void main() {
  group('currency', () {
    test('formats double to BRL currency', () {
      expect(formatCurrency(10.5), 'R\$ 10,50');
    });

    test('formats zero', () {
      expect(formatCurrency(0), 'R\$ 0,00');
    });
  });

  group('pluralize', () {
    test('returns singular for 1', () {
      expect(pluralize(1, 'item', 'itens'), '1 item');
    });

    test('returns plural for >1', () {
      expect(pluralize(3, 'item', 'itens'), '3 itens');
    });
  });
}
```

Create `lib/core/utils/formatters.dart`:
```dart
String formatCurrency(double value) {
  return 'R\$ ${value.toStringAsFixed(2).replaceAll('.', ',')}';
}

String pluralize(int count, String singular, String plural) {
  return '$count ${count == 1 ? singular : plural}';
}
```

Run + commit:
```bash
flutter test test/core/utils/formatters_test.dart
git add lib/core/utils/formatters.dart test/core/utils/formatters_test.dart
git commit -m "feat(core): add formatters with TDD"
```

- [ ] **Step 3: Criar `core/utils/logger.dart`** — test → implement → verify

Create `test/core/utils/logger_test.dart`:
```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/core/utils/logger.dart';

void main() {
  group('Logger', () {
    test('log does not throw', () {
      expect(() => Logger.log('test'), returnsNormally);
    });
  });
}
```

Create `lib/core/utils/logger.dart`:
```dart
import 'package:flutter/foundation.dart';

class Logger {
  static void log(String message) {
    debugPrint('[ListaPlus] $message');
  }

  static void error(String message, [Object? error, StackTrace? stack]) {
    debugPrint('[ListaPlus ERROR] $message');
    if (error != null) debugPrint('Error: $error');
    if (stack != null) debugPrint('Stack: $stack');
  }
}
```

Run + commit:
```bash
flutter test test/core/utils/logger_test.dart
git add lib/core/utils/logger.dart test/core/utils/logger_test.dart
git commit -m "feat(core): add Logger utility with TDD"
```

---

## Task 9: Mover `theme/` e `constants/` para `core/` (movimentação pura, sem TDD)

Estes são arquivos de tema e constantes — movimentação pura sem mudança de lógica.

- [ ] **Step 1: Copiar `lib/theme/` → `lib/core/theme/`**

```bash
cp -R lib/theme/ lib/core/theme/
```

- [ ] **Step 2: Copiar `lib/constants/` → `lib/core/constants/`**

```bash
cp -R lib/constants/ lib/core/constants/
```

- [ ] **Step 3: Atualizar imports nos arquivos copiados para usar caminhos relativos corretos**

Verificar que todos os imports relativos nos arquivos de `lib/core/theme/` e `lib/core/constants/` estão corretos. Como são movimentações, os imports originais (ex: `import '../tokens.dart'`) precisam ser ajustados se os arquivos referenciam entre si.

Exemplo: `lib/core/theme/app_theme.dart` — verificar que imports de `tokens.dart` e `colors.dart` usam `package:` ou caminho relativo correto.

- [ ] **Step 4: Executar analyzer para verificar**

```bash
flutter analyze --fatal-infos
```

Se houver erros de import nos arquivos copiados, corrigir.

- [ ] **Step 5: Commit**

```bash
git add lib/core/theme/ lib/core/constants/
git commit -m "chore(core): copy theme and constants to core directory"
```

---

## Task 10: [TDD] Criar interfaces de repositório em `domain/repositories/`

- [ ] **Step 1: Criar `StorageRepository` interface**

Create `test/domain/repositories/storage_repository_test.dart`:

```dart
import 'package:flutter_test/flutter_test.dart';
// Interface is abstract, this test verifies the contract exists
import 'package:shopping_list/domain/repositories/storage_repository.dart';

void main() {
  test('StorageRepository is abstract and can be implemented', () {
    // Compile-time check: just verify the class exists
    expect(StorageRepository, isA<Type>());
  });
}
```

Create `lib/domain/repositories/storage_repository.dart` com a interface abstrata (mesmos métodos do `StorageBackend` atual, mas tipados com entidades puras do `domain/entities/`):

```dart
import '../entities/shopping_list.dart';
import '../entities/shopping_item.dart';
import '../entities/pantry_item.dart';

abstract class StorageRepository {
  // Lists
  Future<List<ShoppingList>> loadLists();
  Stream<List<ShoppingList>> watchLists();
  Future<void> saveList(ShoppingList list);
  Future<void> deleteList(String listId);

  // Items
  Future<List<ShoppingItem>> loadItems(String listId);
  Stream<List<ShoppingItem>> watchItems(String listId);
  Future<void> saveItem(ShoppingItem item);
  Future<void> deleteItem(String listId, String itemId);
  Future<void> saveItems(List<ShoppingItem> items);

  // User data
  Future<String?> getCurrentListId();
  Future<void> setCurrentListId(String? listId);
  Future<Map<String, dynamic>?> getUserData();
  Future<void> updateUserData(Map<String, dynamic> data);

  // Pantry
  Future<List<PantryItem>> loadPantryItems();
  Future<void> savePantryItem(PantryItem item);
  Future<void> deletePantryItem(String id);

  // Categories
  Future<void> saveCategories(List<String> categoryIds);
}
```

Run: `flutter test test/domain/repositories/storage_repository_test.dart`
Expected: PASS (compile check)

- [ ] **Step 2: Commit**

```bash
git add lib/domain/repositories/storage_repository.dart test/domain/repositories/storage_repository_test.dart
git commit -m "feat(domain): add StorageRepository interface with TDD"
```

---

## Task 11: Copiar serviços para `data/datasources/` + adaptar

- [ ] **Step 1: Copiar `lib/services/firestore_service.dart` → `lib/data/datasources/firestore/`**

Criar `lib/data/datasources/firestore/firestore_list_ds.dart` com TDD:

Create `test/data/datasources/firestore/firestore_list_ds_test.dart`:
```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:shopping_list/data/datasources/firestore/firestore_list_ds.dart';
import 'package:shopping_list/domain/entities/shopping_list.dart';

void main() {
  group('FirestoreListDataSource', () {
    late FakeFirebaseFirestore fakeFirestore;
    late FirestoreListDataSource ds;

    setUp(() {
      fakeFirestore = FakeFirebaseFirestore();
      ds = FirestoreListDataSource(firestore: fakeFirestore, uid: 'test-uid');
    });

    test('saveList creates document', () async {
      final list = ShoppingList(id: '1', name: 'Compras');
      await ds.saveList(list);
      final doc = await fakeFirestore.collection('users/test-uid/lists').doc('1').get();
      expect(doc.data()?['name'], 'Compras');
    });

    test('loadLists returns saved lists', () async {
      await ds.saveList(ShoppingList(id: '1', name: 'Lista 1'));
      await ds.saveList(ShoppingList(id: '2', name: 'Lista 2'));
      final lists = await ds.loadLists();
      expect(lists.length, 2);
    });
  });
}
```

Create `lib/data/datasources/firestore/firestore_list_ds.dart`:
```dart
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../models/shopping_list_model.dart';
import '../../../domain/entities/shopping_list.dart';
import '../../../core/utils/logger.dart';

class FirestoreListDataSource {
  FirestoreListDataSource({
    FirebaseFirestore? firestore,
    required String uid,
  })  : _db = firestore ?? FirebaseFirestore.instance,
        _uid = uid;

  final FirebaseFirestore _db;
  final String _uid;

  String get _listsPath => 'users/$_uid/lists';

  Future<void> saveList(ShoppingList list) async {
    final model = ShoppingListModel.fromEntity(list);
    await _db.collection(_listsPath).doc(list.id).set(model.toJson());
  }

  Future<List<ShoppingList>> loadLists() async {
    final snapshot = await _db.collection(_listsPath).get();
    return snapshot.docs.map((doc) {
      return ShoppingListModel.fromJson(doc.data()).toEntity();
    }).toList();
  }

  Stream<List<ShoppingList>> watchLists() {
    return _db.collection(_listsPath).snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return ShoppingListModel.fromJson(doc.data()).toEntity();
      }).toList();
    });
  }

  Future<void> deleteList(String listId) async {
    await _db.collection(_listsPath).doc(listId).delete();
  }
}
```

Run: `flutter test test/data/datasources/firestore/firestore_list_ds_test.dart`
Expected: PASS
Commit:
```bash
git add lib/data/datasources/firestore/firestore_list_ds.dart test/data/datasources/firestore/firestore_list_ds_test.dart
git commit -m "feat(data): add FirestoreListDataSource with TDD"
```

- [ ] **Step 2: Criar `FirestoreItemDataSource`** — test → implement → verify

Similar pattern, operando em `users/$_uid/items` com filtro por `shoppingListId`.

- [ ] **Step 3: Criar `FirestorePantryDataSource`** — test → implement → verify

Similar, operando em `users/$_uid/pantry_items`.

- [ ] **Step 4: Criar `FirestoreUserDataSource`** — test → implement → verify

Operando em `users/$_uid` doc.

- [ ] **Step 5: Criar `FirestoreChatDataSource`** — test → implement → verify

Operando em `users/$_uid/chat_messages`.

- [ ] **Step 6: Copiar `open_code_go_service.dart` → `data/datasources/open_code_go_datasource.dart`**

Adaptar para usar as novas entidades/modelos. Test com mock HTTP.

- [ ] **Step 7: Verificar analyzer + coverage**

```bash
flutter analyze --fatal-infos
flutter test --coverage
```

---

## Task 12: Adicionar redirects nos arquivos originais

Para cada arquivo movido para a nova estrutura, adicionar um redirect no original para que os imports antigos continuem funcionando. Exemplo:

Criar `lib/models/shopping_list.dart` (atualizar):
```dart
// coverage:ignore-start
export '../lib/data/models/shopping_list_model.dart';
// coverage:ignore-end
```

Mas na verdade, como vamos manter os arquivos originais como proxies:

- [ ] **Step 1: Para cada modelo antigo, atualizar para exportar do novo local**

```bash
# Exemplo para shopping_list.dart
echo "export 'package:shopping_list/domain/entities/shopping_list.dart';" > lib/models/shopping_list.dart
```

Na prática, os modelos antigos já existem e contêm código. Como estamos em TDD e reescrevendo, vamos substituir o conteúdo do arquivo antigo por um redirect.

**IMPORTANTE:** Fazer isso apenas para arquivos que foram recriados como entidades puras. E que os novos arquivos são funcionalmente equivalentes.

- [ ] **Step 2: Adicionar export público em cada arquivo core/ que substitui um antigo**

Exemplo: `lib/theme/tokens.dart` → `lib/core/theme/tokens.dart` (redirect do original para o novo)

- [ ] **Step 3: Verificar que flutter analyze passa**

```bash
flutter analyze --fatal-infos
```

- [ ] **Step 4: Commit**

```bash
git add .
git commit -m "chore: add redirects from old files to new locations"
```

---

## Task 13: Verificação final da Fase 1

- [ ] **Step 1: Analyzer**

```bash
flutter analyze --fatal-infos
```
Expected: No issues found!

- [ ] **Step 2: Testes com cobertura**

```bash
flutter test --coverage
```
Expected: All tests pass. Coverage script deve mostrar 100% nos novos arquivos (excluindo .g.dart e coverage-ignore).

- [ ] **Step 3: Build runner**

```bash
dart run build_runner build --delete-conflicting-outputs
```
Expected: Build successful.

- [ ] **Step 4: Commit final da Fase 1**

```bash
git add .
git commit -m "feat: complete Phase 1 - core, data, domain restructuring"
```

---

**Fim da Fase 1.** Após concluir, iniciar Fase 2 (Features).
