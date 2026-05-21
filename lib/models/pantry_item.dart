import 'package:uuid/uuid.dart';
import 'category.dart';
import 'unit.dart';

class PantryItem {
  PantryItem({
    String? id,
    required this.name,
    required this.idealQuantity,
    this.currentQuantity = 0,
    this.category = Category.others,
    this.unit = Unit.un,
    this.estimatedPrice,
    this.trackStock = true,
    DateTime? createdAt,
    DateTime? updatedAt,
  })  : id = id ?? const Uuid().v4(),
        createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();

  factory PantryItem.fromJson(Map<String, dynamic> json) {
    return PantryItem(
      id: json['id'] as String?,
      name: json['name'] as String? ?? '',
      idealQuantity: (json['idealQuantity'] as num?)?.toInt() ?? 1,
      currentQuantity: (json['currentQuantity'] as num?)?.toInt() ?? 0,
      category: Category.values.firstWhere(
        (e) => e.name == json['category'],
        orElse: () => Category.others,
      ),
      unit: json['unit'] != null
          ? Unit.values.firstWhere((e) => e.name == json['unit'], orElse: () => Unit.un)
          : Unit.un,
      estimatedPrice: (json['estimatedPrice'] as num?)?.toDouble(),
      trackStock: json['trackStock'] as bool? ?? true,
      createdAt: _parseDate(json['createdAt']),
      updatedAt: _parseDate(json['updatedAt']),
    );
  }

  static DateTime _parseDate(dynamic value) {
    if (value == null) {
      return DateTime.now();
    }
    if (value is DateTime) {
      return value;
    }
    final parsed = DateTime.tryParse(value.toString());
    return parsed ?? DateTime.now();
  }

  final String id;
  final String name;
  final int idealQuantity;
  final int currentQuantity;
  final Category category;
  final Unit unit;
  final double? estimatedPrice;
  final bool trackStock;
  final DateTime createdAt;
  final DateTime updatedAt;

  int get deficit => (idealQuantity - currentQuantity).clamp(0, idealQuantity);
  bool get needsRestock => deficit > 0;

  static const _sentinel = Object();

  PantryItem copyWith({
    String? id,
    String? name,
    int? idealQuantity,
    int? currentQuantity,
    Category? category,
    Unit? unit,
    Object? estimatedPrice = _sentinel,
    bool? trackStock,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return PantryItem(
      id: id ?? this.id,
      name: name ?? this.name,
      idealQuantity: idealQuantity ?? this.idealQuantity,
      currentQuantity: currentQuantity ?? this.currentQuantity,
      category: category ?? this.category,
      unit: unit ?? this.unit,
      estimatedPrice: identical(estimatedPrice, _sentinel) ? this.estimatedPrice : estimatedPrice as double?,
      trackStock: trackStock ?? this.trackStock,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'idealQuantity': idealQuantity,
      'currentQuantity': currentQuantity,
      'category': category.name,
      'unit': unit.name,
      'estimatedPrice': estimatedPrice,
      'trackStock': trackStock,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}
