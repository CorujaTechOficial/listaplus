// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatSessionHash() => r'ce285c3f26eca885a59a29c0394f40638d725fdd';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ChatSession
    extends BuildlessAutoDisposeAsyncNotifier<List<ChatMessage>> {
  late final String? listId;

  FutureOr<List<ChatMessage>> build(String? listId);
}

/// See also [ChatSession].
@ProviderFor(ChatSession)
const chatSessionProvider = ChatSessionFamily();

/// See also [ChatSession].
class ChatSessionFamily extends Family<AsyncValue<List<ChatMessage>>> {
  /// See also [ChatSession].
  const ChatSessionFamily();

  /// See also [ChatSession].
  ChatSessionProvider call(String? listId) {
    return ChatSessionProvider(listId);
  }

  @override
  ChatSessionProvider getProviderOverride(
    covariant ChatSessionProvider provider,
  ) {
    return call(provider.listId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'chatSessionProvider';
}

/// See also [ChatSession].
class ChatSessionProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<ChatSession, List<ChatMessage>> {
  /// See also [ChatSession].
  ChatSessionProvider(String? listId)
    : this._internal(
        () => ChatSession()..listId = listId,
        from: chatSessionProvider,
        name: r'chatSessionProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$chatSessionHash,
        dependencies: ChatSessionFamily._dependencies,
        allTransitiveDependencies: ChatSessionFamily._allTransitiveDependencies,
        listId: listId,
      );

  ChatSessionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.listId,
  }) : super.internal();

  final String? listId;

  @override
  FutureOr<List<ChatMessage>> runNotifierBuild(covariant ChatSession notifier) {
    return notifier.build(listId);
  }

  @override
  Override overrideWith(ChatSession Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChatSessionProvider._internal(
        () => create()..listId = listId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        listId: listId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ChatSession, List<ChatMessage>>
  createElement() {
    return _ChatSessionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatSessionProvider && other.listId == listId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, listId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ChatSessionRef on AutoDisposeAsyncNotifierProviderRef<List<ChatMessage>> {
  /// The parameter `listId` of this provider.
  String? get listId;
}

class _ChatSessionProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<ChatSession, List<ChatMessage>>
    with ChatSessionRef {
  _ChatSessionProviderElement(super.provider);

  @override
  String? get listId => (origin as ChatSessionProvider).listId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
