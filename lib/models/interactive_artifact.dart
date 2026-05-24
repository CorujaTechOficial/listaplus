import 'package:uuid/uuid.dart';

// coverage:ignore-start

/// Tipo de controle interativo que a IA pode inserir num artefato.
enum ArtifactControlType {
  /// Slider contínuo (ex: "Pessoas: 15")
  slider,

  /// Stepper inteiro com +/- (ex: "Adultos: 10")
  stepper,

  /// Toggle liga/desliga (ex: "Bebem álcool?")
  toggle,

  /// Seletor de opções (ex: "Nível: Básico / Intermediário / Premium")
  select;

  String get value {
    switch (this) {
      case ArtifactControlType.slider:
        return 'slider';
      case ArtifactControlType.stepper:
        return 'stepper';
      case ArtifactControlType.toggle:
        return 'toggle';
      case ArtifactControlType.select:
        return 'select';
    }
  }

  static ArtifactControlType fromString(String value) {
    return ArtifactControlType.values.firstWhere(
      (t) => t.value == value,
      orElse: () => ArtifactControlType.slider,
    );
  }
}

/// Controle interativo dentro de um artefato.
/// A IA define livremente quantos e quais controles quiser.
class ArtifactControl {
  const ArtifactControl({
    required this.id,
    required this.type,
    required this.label,
    required this.value,
    this.min,
    this.max,
    this.step,
    this.options,
    this.affectsMultiplier = false,
    this.filtersItems = false,
  });

  factory ArtifactControl.fromJson(Map<String, dynamic> json) {
    return ArtifactControl(
      id: json['id'] as String? ?? '',
      type: ArtifactControlType.fromString(json['type'] as String? ?? ''),
      label: json['label'] as String? ?? '',
      value: json['value'],
      min: (json['min'] as num?)?.toDouble(),
      max: (json['max'] as num?)?.toDouble(),
      step: (json['step'] as num?)?.toDouble(),
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      affectsMultiplier: json['affectsMultiplier'] as bool? ?? false,
      filtersItems: json['filtersItems'] as bool? ?? false,
    );
  }

  final String id;
  final ArtifactControlType type;
  final String label;

  /// Valor atual: double para slider/stepper, bool para toggle, String para select
  final dynamic value;

  /// Min/max para slider e stepper
  final double? min;
  final double? max;
  final double? step;

  /// Opções disponíveis para select
  final List<String>? options;

  /// Se true, mudanças neste controle recalculam quantidades dos itens
  final bool affectsMultiplier;

  /// Se true, este controle filtra visibilidade dos itens via [ArtifactItem.conditions]
  final bool filtersItems;

  ArtifactControl copyWith({
    String? id,
    ArtifactControlType? type,
    String? label,
    dynamic value,
    double? min,
    double? max,
    double? step,
    List<String>? options,
    bool? affectsMultiplier,
    bool? filtersItems,
  }) {
    return ArtifactControl(
      id: id ?? this.id,
      type: type ?? this.type,
      label: label ?? this.label,
      value: value ?? this.value,
      min: min ?? this.min,
      max: max ?? this.max,
      step: step ?? this.step,
      options: options ?? this.options,
      affectsMultiplier: affectsMultiplier ?? this.affectsMultiplier,
      filtersItems: filtersItems ?? this.filtersItems,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type.value,
      'label': label,
      'value': value,
      if (min != null) 'min': min,
      if (max != null) 'max': max,
      if (step != null) 'step': step,
      if (options != null) 'options': options,
      'affectsMultiplier': affectsMultiplier,
      'filtersItems': filtersItems,
    };
  }
}

/// Item alternativo para swap (ex: Picanha → Alcatra, mais barata).
class ArtifactItemAlternative {
  const ArtifactItemAlternative({
    required this.name,
    required this.quantity,
    this.unit = 'un',
    this.estimatedPrice,
  });

  factory ArtifactItemAlternative.fromJson(Map<String, dynamic> json) {
    return ArtifactItemAlternative(
      name: json['name'] as String? ?? '',
      quantity: (json['quantity'] as num?)?.toDouble() ?? 1,
      unit: json['unit'] as String? ?? 'un',
      estimatedPrice: (json['estimatedPrice'] as num?)?.toDouble(),
    );
  }

  final String name;
  final double quantity;
  final String unit;
  final double? estimatedPrice;

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'quantity': quantity,
      'unit': unit,
      if (estimatedPrice != null) 'estimatedPrice': estimatedPrice,
    };
  }
}

/// Item de dados dentro de um artefato interativo.
class ArtifactItem {
  const ArtifactItem({
    required this.name,
    required this.baseQuantity,
    this.unit = 'un',
    this.category = 'Outros',
    this.estimatedPrice,
    this.isAvailable = false,
    this.conditions,
    this.alternatives,
    this.isSwapped = false,
  });

  factory ArtifactItem.fromJson(Map<String, dynamic> json) {
    return ArtifactItem(
      name: json['name'] as String? ?? '',
      baseQuantity: (json['baseQuantity'] as num?)?.toDouble() ?? 1,
      unit: json['unit'] as String? ?? 'un',
      category: json['category'] as String? ?? 'Outros',
      estimatedPrice: (json['estimatedPrice'] as num?)?.toDouble(),
      isAvailable: json['isAvailable'] as bool? ?? false,
      conditions: json['conditions'] != null
          ? Map<String, dynamic>.from(json['conditions'] as Map)
          : null,
      alternatives: (json['alternatives'] as List<dynamic>?)
          ?.map(
            (e) => ArtifactItemAlternative.fromJson(
              Map<String, dynamic>.from(e as Map),
            ),
          )
          .toList(),
      isSwapped: json['isSwapped'] as bool? ?? false,
    );
  }

  final String name;

  /// Quantidade base (calibrada para [InteractiveArtifact.baseServings])
  final double baseQuantity;
  final String unit;
  final String category;
  final double? estimatedPrice;

  /// true se o item já existe na despensa do usuário
  final bool isAvailable;

  /// Condições de visibilidade: mapa de controlId → valor esperado.
  /// Ex: {"alcohol": true} → só aparece se o toggle "alcohol" estiver true.
  final Map<String, dynamic>? conditions;

  /// Alternativas mais baratas para swap (otimização de orçamento)
  final List<ArtifactItemAlternative>? alternatives;

  /// true se este item já foi trocado por uma alternativa
  final bool isSwapped;

  ArtifactItem copyWith({
    String? name,
    double? baseQuantity,
    String? unit,
    String? category,
    double? estimatedPrice,
    bool? isAvailable,
    Map<String, dynamic>? conditions,
    List<ArtifactItemAlternative>? alternatives,
    bool? isSwapped,
  }) {
    return ArtifactItem(
      name: name ?? this.name,
      baseQuantity: baseQuantity ?? this.baseQuantity,
      unit: unit ?? this.unit,
      category: category ?? this.category,
      estimatedPrice: estimatedPrice ?? this.estimatedPrice,
      isAvailable: isAvailable ?? this.isAvailable,
      conditions: conditions ?? this.conditions,
      alternatives: alternatives ?? this.alternatives,
      isSwapped: isSwapped ?? this.isSwapped,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'baseQuantity': baseQuantity,
      'unit': unit,
      'category': category,
      if (estimatedPrice != null) 'estimatedPrice': estimatedPrice,
      'isAvailable': isAvailable,
      if (conditions != null) 'conditions': conditions,
      if (alternatives != null)
        'alternatives': alternatives!.map((a) => a.toJson()).toList(),
      'isSwapped': isSwapped,
    };
  }
}

/// Ação de commit disponível no artefato.
enum ArtifactCommitMode {
  /// Adiciona todos os itens visíveis à lista
  addAll,

  /// Adiciona apenas os itens marcados como não disponíveis (faltantes)
  addMissing;

  String get value {
    switch (this) {
      case ArtifactCommitMode.addAll:
        return 'addAll';
      case ArtifactCommitMode.addMissing:
        return 'addMissing';
    }
  }

  static ArtifactCommitMode fromString(String value) {
    return ArtifactCommitMode.values.firstWhere(
      (m) => m.value == value,
      orElse: () => ArtifactCommitMode.addAll,
    );
  }
}

/// Artefato interativo gerado pela IA — totalmente schema-driven.
///
/// A IA tem liberdade total para definir:
/// - Qualquer quantidade de controles (sliders, toggles, steppers, selects)
/// - Qualquer lista de itens com quantidades reativas
/// - Condições de visibilidade por item
/// - Alternativas de swap para otimização
/// - Ícone, título, descrição e label do botão de commit personalizados
///
/// Exemplos de uso:
/// - Calculadora de churrasco com sliders de adultos/crianças
/// - Otimizador de orçamento com swaps
/// - Receita com itens da despensa
/// - Planejador de festa de aniversário
/// - Lista semanal com categorias
/// - Comparador de cestas (básica vs premium)
/// - Qualquer outro cenário que a IA imaginar
class InteractiveArtifact {
  InteractiveArtifact({
    String? id,
    required this.title,
    this.icon = '✨',
    this.description,
    required this.controls,
    required this.items,
    this.baseServings = 1.0,
    this.budget,
    this.showBudgetBar = false,
    this.commitLabel = 'Adicionar à Lista',
    this.commitMode = ArtifactCommitMode.addAll,
    this.isCommitted = false,
  }) : id = id ?? const Uuid().v4();

  factory InteractiveArtifact.fromJson(Map<String, dynamic> json) {
    return InteractiveArtifact(
      id: json['id'] as String?,
      title: json['title'] as String? ?? '',
      icon: json['icon'] as String? ?? '✨',
      description: json['description'] as String?,
      controls: (json['controls'] as List<dynamic>?)
              ?.map(
                (e) => ArtifactControl.fromJson(
                  Map<String, dynamic>.from(e as Map),
                ),
              )
              .toList() ??
          [],
      items: (json['items'] as List<dynamic>?)
              ?.map(
                (e) => ArtifactItem.fromJson(
                  Map<String, dynamic>.from(e as Map),
                ),
              )
              .toList() ??
          [],
      baseServings:
          (json['baseServings'] as num?)?.toDouble() ?? 1.0,
      budget: (json['budget'] as num?)?.toDouble(),
      showBudgetBar: json['showBudgetBar'] as bool? ?? false,
      commitLabel:
          json['commitLabel'] as String? ?? 'Adicionar à Lista',
      commitMode: ArtifactCommitMode.fromString(
        json['commitMode'] as String? ?? '',
      ),
      isCommitted: json['isCommitted'] as bool? ?? false,
    );
  }

  final String id;
  final String title;

  /// Emoji ou texto curto que a IA escolhe livremente para representar o artefato
  final String icon;

  /// Descrição opcional exibida abaixo do título
  final String? description;

  /// Controles interativos (sliders, toggles, etc.) definidos pela IA
  final List<ArtifactControl> controls;

  /// Itens de dados com quantidades reativas
  final List<ArtifactItem> items;

  /// Valor de referência base para o multiplicador.
  /// Ex: se a IA calibrou as quantidades para 10 pessoas, baseServings = 10.
  /// Quando o slider muda para 15, o multiplicador = 15/10 = 1.5x
  final double baseServings;

  /// Orçamento-alvo para barra de progresso (opcional)
  final double? budget;

  /// Se true, exibe a barra de progresso do orçamento
  final bool showBudgetBar;

  /// Texto do botão de commit (customizável pela IA)
  final String commitLabel;

  /// Modo de commit: addAll (todos os itens) ou addMissing (só os não disponíveis)
  final ArtifactCommitMode commitMode;

  /// true após o usuário sincronizar com a lista principal
  final bool isCommitted;

  InteractiveArtifact copyWith({
    String? id,
    String? title,
    String? icon,
    String? description,
    List<ArtifactControl>? controls,
    List<ArtifactItem>? items,
    double? baseServings,
    double? budget,
    bool? showBudgetBar,
    String? commitLabel,
    ArtifactCommitMode? commitMode,
    bool? isCommitted,
  }) {
    return InteractiveArtifact(
      id: id ?? this.id,
      title: title ?? this.title,
      icon: icon ?? this.icon,
      description: description ?? this.description,
      controls: controls ?? this.controls,
      items: items ?? this.items,
      baseServings: baseServings ?? this.baseServings,
      budget: budget ?? this.budget,
      showBudgetBar: showBudgetBar ?? this.showBudgetBar,
      commitLabel: commitLabel ?? this.commitLabel,
      commitMode: commitMode ?? this.commitMode,
      isCommitted: isCommitted ?? this.isCommitted,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'icon': icon,
      if (description != null) 'description': description,
      'controls': controls.map((c) => c.toJson()).toList(),
      'items': items.map((i) => i.toJson()).toList(),
      'baseServings': baseServings,
      if (budget != null) 'budget': budget,
      'showBudgetBar': showBudgetBar,
      'commitLabel': commitLabel,
      'commitMode': commitMode.value,
      'isCommitted': isCommitted,
    };
  }
}
// coverage:ignore-end
