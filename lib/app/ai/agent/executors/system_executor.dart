import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../tools/tool_core.dart';
import '../../providers/system_action_provider.dart';

class SystemExecutor {
  const SystemExecutor();

  Future<ToolResult> openPaywall(ProviderContainer container) async {
    container.read(systemActionProvider.notifier).trigger(SystemActionType.openPaywall);
    return const ToolResult(
      toolCallId: '',
      content: 'A tela de planos Premium foi aberta para o usuário.',
    );
  }

  Future<ToolResult> requestAppReview(ProviderContainer container) async {
    container.read(systemActionProvider.notifier).trigger(SystemActionType.requestReview);
    return const ToolResult(
      toolCallId: '',
      content: 'A solicitação de avaliação do app foi enviada ao sistema.',
    );
  }

  Future<ToolResult> promptAppUpdate(ProviderContainer container) async {
    container.read(systemActionProvider.notifier).trigger(SystemActionType.promptUpdate);
    return const ToolResult(
      toolCallId: '',
      content: 'A verificação de atualização foi iniciada.',
    );
  }

  Future<ToolResult> generateReferralLink(ProviderContainer container) async {
    container.read(systemActionProvider.notifier).trigger(SystemActionType.shareReferral);
    return const ToolResult(
      toolCallId: '',
      content: 'O link de indicação foi gerado e as opções de compartilhamento foram abertas.',
    );
  }
}
