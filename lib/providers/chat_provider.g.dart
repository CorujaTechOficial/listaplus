// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChatStreaming)
const chatStreamingProvider = ChatStreamingFamily._();

final class ChatStreamingProvider
    extends $NotifierProvider<ChatStreaming, bool> {
  const ChatStreamingProvider._({
    required ChatStreamingFamily super.from,
    required String? super.argument,
  }) : super(
         retry: null,
         name: r'chatStreamingProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$chatStreamingHash();

  @override
  String toString() {
    return r'chatStreamingProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ChatStreaming create() => ChatStreaming();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ChatStreamingProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$chatStreamingHash() => r'19e67352c9f6fd0242b1862395947a8f8242251f';

final class ChatStreamingFamily extends $Family
    with $ClassFamilyOverride<ChatStreaming, bool, bool, bool, String?> {
  const ChatStreamingFamily._()
    : super(
        retry: null,
        name: r'chatStreamingProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ChatStreamingProvider call(String? id) =>
      ChatStreamingProvider._(argument: id, from: this);

  @override
  String toString() => r'chatStreamingProvider';
}

abstract class _$ChatStreaming extends $Notifier<bool> {
  late final _$args = ref.$arg as String?;
  String? get id => _$args;

  bool build(String? id);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(ChatThinking)
const chatThinkingProvider = ChatThinkingFamily._();

final class ChatThinkingProvider extends $NotifierProvider<ChatThinking, bool> {
  const ChatThinkingProvider._({
    required ChatThinkingFamily super.from,
    required String? super.argument,
  }) : super(
         retry: null,
         name: r'chatThinkingProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$chatThinkingHash();

  @override
  String toString() {
    return r'chatThinkingProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ChatThinking create() => ChatThinking();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ChatThinkingProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$chatThinkingHash() => r'f57359c96edfa9bcb133697a8e87a820312b7d1f';

final class ChatThinkingFamily extends $Family
    with $ClassFamilyOverride<ChatThinking, bool, bool, bool, String?> {
  const ChatThinkingFamily._()
    : super(
        retry: null,
        name: r'chatThinkingProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ChatThinkingProvider call(String? id) =>
      ChatThinkingProvider._(argument: id, from: this);

  @override
  String toString() => r'chatThinkingProvider';
}

abstract class _$ChatThinking extends $Notifier<bool> {
  late final _$args = ref.$arg as String?;
  String? get id => _$args;

  bool build(String? id);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(ChatActivity)
const chatActivityProvider = ChatActivityFamily._();

final class ChatActivityProvider
    extends $NotifierProvider<ChatActivity, String?> {
  const ChatActivityProvider._({
    required ChatActivityFamily super.from,
    required String? super.argument,
  }) : super(
         retry: null,
         name: r'chatActivityProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$chatActivityHash();

  @override
  String toString() {
    return r'chatActivityProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ChatActivity create() => ChatActivity();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ChatActivityProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$chatActivityHash() => r'54e12d607294002907d8c82288d742bb75a7fe38';

final class ChatActivityFamily extends $Family
    with
        $ClassFamilyOverride<ChatActivity, String?, String?, String?, String?> {
  const ChatActivityFamily._()
    : super(
        retry: null,
        name: r'chatActivityProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ChatActivityProvider call(String? id) =>
      ChatActivityProvider._(argument: id, from: this);

  @override
  String toString() => r'chatActivityProvider';
}

abstract class _$ChatActivity extends $Notifier<String?> {
  late final _$args = ref.$arg as String?;
  String? get id => _$args;

  String? build(String? id);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<String?, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String?, String?>,
              String?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(ChatStreamingText)
const chatStreamingTextProvider = ChatStreamingTextFamily._();

final class ChatStreamingTextProvider
    extends $NotifierProvider<ChatStreamingText, String?> {
  const ChatStreamingTextProvider._({
    required ChatStreamingTextFamily super.from,
    required String? super.argument,
  }) : super(
         retry: null,
         name: r'chatStreamingTextProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$chatStreamingTextHash();

  @override
  String toString() {
    return r'chatStreamingTextProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ChatStreamingText create() => ChatStreamingText();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ChatStreamingTextProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$chatStreamingTextHash() => r'f8a6b321e79b7a96f6a2779b6f6a084bf578b2eb';

final class ChatStreamingTextFamily extends $Family
    with
        $ClassFamilyOverride<
          ChatStreamingText,
          String?,
          String?,
          String?,
          String?
        > {
  const ChatStreamingTextFamily._()
    : super(
        retry: null,
        name: r'chatStreamingTextProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ChatStreamingTextProvider call(String? id) =>
      ChatStreamingTextProvider._(argument: id, from: this);

  @override
  String toString() => r'chatStreamingTextProvider';
}

abstract class _$ChatStreamingText extends $Notifier<String?> {
  late final _$args = ref.$arg as String?;
  String? get id => _$args;

  String? build(String? id);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<String?, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String?, String?>,
              String?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(ChatSession)
const chatSessionProvider = ChatSessionFamily._();

final class ChatSessionProvider
    extends $AsyncNotifierProvider<ChatSession, List<ChatMessage>> {
  const ChatSessionProvider._({
    required ChatSessionFamily super.from,
    required String? super.argument,
  }) : super(
         retry: null,
         name: r'chatSessionProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$chatSessionHash();

  @override
  String toString() {
    return r'chatSessionProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ChatSession create() => ChatSession();

  @override
  bool operator ==(Object other) {
    return other is ChatSessionProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$chatSessionHash() => r'cd6816753e547a44301b222a4721068a276903a1';

final class ChatSessionFamily extends $Family
    with
        $ClassFamilyOverride<
          ChatSession,
          AsyncValue<List<ChatMessage>>,
          List<ChatMessage>,
          FutureOr<List<ChatMessage>>,
          String?
        > {
  const ChatSessionFamily._()
    : super(
        retry: null,
        name: r'chatSessionProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ChatSessionProvider call(String? listId) =>
      ChatSessionProvider._(argument: listId, from: this);

  @override
  String toString() => r'chatSessionProvider';
}

abstract class _$ChatSession extends $AsyncNotifier<List<ChatMessage>> {
  late final _$args = ref.$arg as String?;
  String? get listId => _$args;

  FutureOr<List<ChatMessage>> build(String? listId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref as $Ref<AsyncValue<List<ChatMessage>>, List<ChatMessage>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<ChatMessage>>, List<ChatMessage>>,
              AsyncValue<List<ChatMessage>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
