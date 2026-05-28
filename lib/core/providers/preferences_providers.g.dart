// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DarkMode)
const darkModeProvider = DarkModeProvider._();

final class DarkModeProvider
    extends $AsyncNotifierProvider<DarkMode, ThemeMode> {
  const DarkModeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'darkModeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$darkModeHash();

  @$internal
  @override
  DarkMode create() => DarkMode();
}

String _$darkModeHash() => r'87d9d834b8cddb327ea0243164e5fac992340f0b';

abstract class _$DarkMode extends $AsyncNotifier<ThemeMode> {
  FutureOr<ThemeMode> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<ThemeMode>, ThemeMode>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ThemeMode>, ThemeMode>,
              AsyncValue<ThemeMode>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(LocaleSetting)
const localeSettingProvider = LocaleSettingProvider._();

final class LocaleSettingProvider
    extends $AsyncNotifierProvider<LocaleSetting, String?> {
  const LocaleSettingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'localeSettingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$localeSettingHash();

  @$internal
  @override
  LocaleSetting create() => LocaleSetting();
}

String _$localeSettingHash() => r'0740581a9b0abf542c7db4bd7984b30168509a61';

abstract class _$LocaleSetting extends $AsyncNotifier<String?> {
  FutureOr<String?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<String?>, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<String?>, String?>,
              AsyncValue<String?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(CurrencySetting)
const currencySettingProvider = CurrencySettingProvider._();

final class CurrencySettingProvider
    extends $AsyncNotifierProvider<CurrencySetting, String> {
  const CurrencySettingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currencySettingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currencySettingHash();

  @$internal
  @override
  CurrencySetting create() => CurrencySetting();
}

String _$currencySettingHash() => r'891efbcb42997099747b04f7cbd9caa06d9bdd74';

abstract class _$CurrencySetting extends $AsyncNotifier<String> {
  FutureOr<String> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<String>, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<String>, String>,
              AsyncValue<String>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(ThemeColor)
const themeColorProvider = ThemeColorProvider._();

final class ThemeColorProvider
    extends $AsyncNotifierProvider<ThemeColor, Color> {
  const ThemeColorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'themeColorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$themeColorHash();

  @$internal
  @override
  ThemeColor create() => ThemeColor();
}

String _$themeColorHash() => r'51098aa73683c52f89755db9db1868880a29d7f1';

abstract class _$ThemeColor extends $AsyncNotifier<Color> {
  FutureOr<Color> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<Color>, Color>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Color>, Color>,
              AsyncValue<Color>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(Onboarding)
const onboardingProvider = OnboardingProvider._();

final class OnboardingProvider
    extends $AsyncNotifierProvider<Onboarding, bool> {
  const OnboardingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'onboardingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$onboardingHash();

  @$internal
  @override
  Onboarding create() => Onboarding();
}

String _$onboardingHash() => r'dd0b6067c7dbf4b75b6abe58a9c426fa0cd7422b';

abstract class _$Onboarding extends $AsyncNotifier<bool> {
  FutureOr<bool> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<bool>, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<bool>, bool>,
              AsyncValue<bool>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(UseDynamicColor)
const useDynamicColorProvider = UseDynamicColorProvider._();

final class UseDynamicColorProvider
    extends $AsyncNotifierProvider<UseDynamicColor, bool> {
  const UseDynamicColorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'useDynamicColorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$useDynamicColorHash();

  @$internal
  @override
  UseDynamicColor create() => UseDynamicColor();
}

String _$useDynamicColorHash() => r'b4cded4ab5f1c76680f1eba2b76a1f683c88c304';

abstract class _$UseDynamicColor extends $AsyncNotifier<bool> {
  FutureOr<bool> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<bool>, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<bool>, bool>,
              AsyncValue<bool>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(DefaultScreen)
const defaultScreenProvider = DefaultScreenProvider._();

final class DefaultScreenProvider
    extends $AsyncNotifierProvider<DefaultScreen, String> {
  const DefaultScreenProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'defaultScreenProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$defaultScreenHash();

  @$internal
  @override
  DefaultScreen create() => DefaultScreen();
}

String _$defaultScreenHash() => r'ccf846c1b9dd12c38417d050c275423621db439f';

abstract class _$DefaultScreen extends $AsyncNotifier<String> {
  FutureOr<String> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<String>, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<String>, String>,
              AsyncValue<String>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
