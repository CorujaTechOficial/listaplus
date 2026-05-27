import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import '../tools/tool_core.dart';
import 'package:shopping_list/models/unit.dart';
import 'package:shopping_list/models/recipe.dart';
import 'package:shopping_list/models/meal_plan.dart';
import 'package:shopping_list/models/shopping_item.dart';
import 'package:shopping_list/models/interactive_artifact.dart';
import 'package:shopping_list/core/providers/firebase_providers.dart';
import 'package:shopping_list/core/providers/preferences_providers.dart';
import 'package:shopping_list/app/settings/providers/settings_providers.dart';
import 'package:shopping_list/app/settings/providers/backup_providers.dart';
import 'package:shopping_list/app/recipes/providers/recipes_providers.dart';
import 'package:shopping_list/app/meal_planner/providers/meal_planner_providers.dart';

class ConfigExecutor {
  const ConfigExecutor();

  Unit _unit(String label) {
    switch (label) {
      case 'kg':
        return Unit.kg;
      case 'g':
        return Unit.g;
      case 'L':
        return Unit.L;
      case 'mL':
        return Unit.mL;
      case 'pacote':
        return Unit.pack;
      default:
        return Unit.un;
    }
  }

  // --- Theme ---

  Future<ToolResult> getTheme(ProviderContainer container) async {
    final mode = await container.read(darkModeProvider.future);
    final labels = <String, String>{
      'ThemeMode.system': 'sistema',
      'ThemeMode.light': 'claro',
      'ThemeMode.dark': 'escuro',
    };
    return ToolResult(toolCallId: '', content: 'Tema atual: ${labels[mode.toString()] ?? mode.name}');
  }

  Future<ToolResult> setTheme(ProviderContainer container, Map<String, dynamic> args) async {
    final mode = args['mode'] as String;
    switch (mode) {
      case 'light':
        await container.read(darkModeProvider.notifier).setMode(ThemeMode.light);
      case 'dark':
        await container.read(darkModeProvider.notifier).setMode(ThemeMode.dark);
      default:
        await container.read(darkModeProvider.notifier).setMode(ThemeMode.system);
    }
    return ToolResult(toolCallId: '', content: 'Tema alterado para $mode.');
  }

  // --- Preferences ---

  Future<ToolResult> saveUserPreference(ProviderContainer container, Map<String, dynamic> args) async {
    final key = args['key'] as String;
    final value = args['value'] as String;
    await container.read(firestoreServiceProvider).updatePreference(key, value);
    return ToolResult(toolCallId: '', content: 'Preferência "$key" salva como "$value".');
  }

  Future<ToolResult> deleteUserPreference(ProviderContainer container, Map<String, dynamic> args) async {
    final key = args['key'] as String;
    await container.read(firestoreServiceProvider).deletePreference(key);
    return ToolResult(toolCallId: '', content: 'Preferência "$key" removida.');
  }

  // --- Profile ---

  Future<ToolResult> getUserProfile(ProviderContainer container) async {
    final profile = await container.read(userProfileProvider.future);
    if (profile.isEmpty) {
      return const ToolResult(toolCallId: '', content: 'Nenhuma preferência de perfil configurada ainda.');
    }
    return ToolResult(toolCallId: '', content: profile.toString());
  }

  Future<ToolResult> updateUserProfile(ProviderContainer container, Map<String, dynamic> args) async {
    final current = await container.read(userProfileProvider.future);
    final updated = current.copyWith(
      preferredStore: args['preferredStore'] as String?,
      dietaryRestrictions: args['dietaryRestrictions'] as String?,
      avoidedStores: args['avoidedStores'] as String?,
      notes: args['notes'] as String?,
    );
    await container.read(userProfileServiceProvider).updateProfile(updated);
    return const ToolResult(toolCallId: '', content: 'Perfil atualizado com sucesso.');
  }

  // --- Backup ---

  Future<ToolResult> exportBackup(ProviderContainer container) async {
    final json = await container.read(backupProvider).exportToJson();
    return ToolResult(toolCallId: '', content: json);
  }

  Future<ToolResult> importBackup(ProviderContainer container, Map<String, dynamic> args) async {
    final json = args['json'] as String;
    final result = await container.read(backupProvider).importFromJson(json);
    return ToolResult(toolCallId: '', content: result);
  }

  // --- Artifact ---

  Future<ToolResult> generateArtifact(ProviderContainer container, Map<String, dynamic> args) async {
    final title = args['title'] as String;
    final icon = args['icon'] as String;
    final description = args['description'] as String?;

    final controlsJson = args['controls'] as String;
    final List<dynamic> controlsRaw = jsonDecode(controlsJson) as List<dynamic>;
    final controls = controlsRaw.map((e) {
      return ArtifactControl.fromJson(Map<String, dynamic>.from(e as Map));
    }).toList();

    final itemsJson = args['items'] as String;
    final List<dynamic> itemsRaw = jsonDecode(itemsJson) as List<dynamic>;
    final items = itemsRaw.map((e) {
      return ArtifactItem.fromJson(Map<String, dynamic>.from(e as Map));
    }).toList();

    final baseServings = (args['baseServings'] as num?)?.toDouble() ?? 1.0;
    final budget = (args['budget'] as num?)?.toDouble();
    final showBudgetBar = args['showBudgetBar'] as bool? ?? false;
    final commitLabel = args['commitLabel'] as String? ?? 'Adicionar à Lista';
    final commitModeStr = args['commitMode'] as String? ?? 'addAll';
    final commitMode = ArtifactCommitMode.fromString(commitModeStr);

    final artifact = InteractiveArtifact(
      title: title,
      icon: icon,
      description: description,
      controls: controls,
      items: items,
      baseServings: baseServings,
      budget: budget,
      showBudgetBar: showBudgetBar,
      commitLabel: commitLabel,
      commitMode: commitMode,
    );

    return ToolResult(
      toolCallId: '',
      content: 'Artefato "$title" gerado com sucesso.',
      resultData: {'artifact': artifact.toJson()},
    );
  }

  // --- Recipes ---

  Future<ToolResult> getRecipes(ProviderContainer container, Map<String, dynamic> args) async {
    final query = args['query'] as String?;
    final recipes = await container.read(recipesProvider.future);
    var filtered = recipes;
    if (query != null && query.isNotEmpty) {
      filtered = recipes.where((r) => r.name.toLowerCase().contains(query.toLowerCase())).toList();
    }
    if (filtered.isEmpty) {
      return const ToolResult(toolCallId: '', content: 'Nenhuma receita encontrada.');
    }
    final result = StringBuffer('Minhas Receitas:\n');
    for (final recipe in filtered) {
      result.writeln('- ${recipe.name} (ID: ${recipe.id}): ${recipe.description}');
    }
    return ToolResult(toolCallId: '', content: result.toString());
  }

  Future<ToolResult> createRecipe(ProviderContainer container, Map<String, dynamic> args) async {
    final name = (args['name'] as String).trim();
    final description = args['description'] as String;
    final ingredientsJson = args['ingredients'] as String;
    final instructionsStr = args['instructions'] as String;
    final prepTime = (args['prepTimeMinutes'] as num?)?.toInt() ?? 30;

    final existing = await container.read(recipesProvider.future);
    final duplicate = existing.cast<Recipe?>().firstWhere(
      (r) => r!.name.trim().toLowerCase() == name.toLowerCase(),
      orElse: () => null,
    );
    if (duplicate != null) {
      return const ToolResult(
        toolCallId: '',
        content: 'Já existe uma receita com este nome. Use um nome diferente ou edite a receita existente.',
        success: false,
      );
    }

    final List<dynamic> ingredientsRaw = jsonDecode(ingredientsJson) as List<dynamic>;
    final ingredients = ingredientsRaw.map((e) {
      final data = Map<String, dynamic>.from(e as Map);
      return ShoppingItem(
        id: const Uuid().v4(),
        shoppingListId: '',
        name: data['name'] as String,
        quantity: (data['quantity'] as num).toInt(),
        unit: _unit(data['unit'] as String? ?? 'un'),
        categoryId: data['category'] as String? ?? 'others',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );
    }).toList();

    final instructions = instructionsStr.split(RegExp(r'[;,]')).map((s) => s.trim()).where((s) => s.isNotEmpty).toList();

    final recipe = Recipe(
      id: const Uuid().v4(),
      name: name,
      description: description,
      ingredients: ingredients,
      instructions: instructions,
      prepTimeMinutes: prepTime,
      createdAt: DateTime.now(),
    );

    await container.read(recipesProvider.notifier).saveRecipe(recipe);
    return ToolResult(
      toolCallId: '',
      content: 'Receita "$name" salva com sucesso!',
      resultData: {'recipeId': recipe.id, 'recipeName': recipe.name},
    );
  }

  Future<ToolResult> deleteRecipe(ProviderContainer container, Map<String, dynamic> args) async {
    final id = args['recipeId'] as String;
    await container.read(recipesProvider.notifier).deleteRecipe(id);
    return const ToolResult(toolCallId: '', content: 'Receita excluída.');
  }

  // --- Meal Planner ---

  Future<ToolResult> getMealPlan(ProviderContainer container, Map<String, dynamic> args) async {
    final startStr = args['startDate'] as String?;
    final endStr = args['endDate'] as String?;
    final start = startStr != null ? DateTime.parse(startStr) : null;
    final end = endStr != null ? DateTime.parse(endStr) : null;
    final plans = await container.read(mealPlansProvider(start: start, end: end).future);
    if (plans.isEmpty) {
      return const ToolResult(toolCallId: '', content: 'Nenhuma refeição agendada para este período.');
    }
    final result = StringBuffer('Planejamento de Refeições:\n');
    for (final plan in plans) {
      final date = '${plan.date.day}/${plan.date.month}/${plan.date.year}';
      result.writeln('- $date (${plan.mealType.name}): ${plan.recipeName} (${plan.servings} porções)');
    }
    return ToolResult(toolCallId: '', content: result.toString());
  }

  Future<ToolResult> scheduleMeal(ProviderContainer container, Map<String, dynamic> args) async {
    final recipeId = args['recipeId'] as String;
    final dateStr = args['date'] as String;
    final mealTypeStr = args['mealType'] as String;
    final servings = (args['servings'] as num?)?.toInt() ?? 1;

    final recipes = await container.read(recipesProvider.future);
    final recipe = recipes.where((r) => r.id == recipeId).firstOrNull;
    if (recipe == null) {
      return const ToolResult(toolCallId: '', content: 'Receita não encontrada.', success: false);
    }

    final mealPlan = MealPlan(
      id: const Uuid().v4(),
      date: DateTime.parse(dateStr),
      recipeId: recipeId,
      recipeName: recipe.name,
      servings: servings,
      mealType: MealType.values.firstWhere((e) => e.name == mealTypeStr, orElse: () => MealType.lunch),
    );

    await container.read(mealPlansProvider().notifier).saveMealPlan(mealPlan);
    return const ToolResult(toolCallId: '', content: 'Refeição agendada com sucesso!');
  }

  Future<ToolResult> removeMealPlanEntry(ProviderContainer container, Map<String, dynamic> args) async {
    final id = args['mealPlanId'] as String;
    await container.read(mealPlansProvider().notifier).deleteMealPlan(id);
    return const ToolResult(toolCallId: '', content: 'Entrada do planejamento removida.');
  }
}
