---
id: setup
title: Configuração do Ambiente
sidebar_label: Setup
---

# Configuração do Ambiente

## Pré-requisitos

| Ferramenta | Versão | Notas |
|---|---|---|
| Flutter | 3.29.3+ | CI usa 3.29.3; local pode ser mais recente |
| Dart | 3.7+ | Incluído no Flutter |
| Node.js | 18+ | Para scripts Python / Firebase CLI |
| Python | 3.x | Scripts de tradução e deploy |
| Firebase CLI | Latest | `npm install -g firebase-tools` |

## Clonar e Instalar

```bash
git clone <repo-url>
cd shopping_list

# Instalar dependências Flutter
flutter pub get

# Gerar arquivos de código (Riverpod, Freezed)
dart run build_runner build --delete-conflicting-outputs

# Gerar localizations
flutter gen-l10n
```

## Configurar Firebase

O arquivo `google-services.json` deve estar em `android/app/`. Não está no repositório — obter do Firebase Console do projeto `listaplus-6547b`.

```bash
# Login no Firebase (se necessário)
firebase login

# Verificar projeto
firebase projects:list
```

## Variáveis de Ambiente

Crie um arquivo `.env` na raiz do projeto (já no `.gitignore`):

```env
REVENUECAT_API_KEY=goog_lUoZUpDVyhVroFRzwgArMnFxIQv
```

A chave é passada via `--dart-define` nos builds:

```bash
flutter run --dart-define=REVENUECAT_API_KEY=<chave>
```

## Executar em Desenvolvimento

```bash
# Com hot reload
flutter run --dart-define=REVENUECAT_API_KEY=<chave>

# Release build
flutter run --release --no-tree-shake-icons --dart-define=REVENUECAT_API_KEY=<chave>
```

## Configurar Serviço de Deploy (Play Store)

A chave de serviço do Google Play deve estar em:
- `~/play-console-sa.json` (primária)
- `~/Downloads/listaplus-6547b-e019add29823.json` (backup)

```bash
# Testar acesso
python3 upload_aab.py --dry-run
```

## IDEs Recomendadas

- **VS Code** com extensões: Flutter, Dart, Error Lens
- **Android Studio / IntelliJ** com plugin Flutter
