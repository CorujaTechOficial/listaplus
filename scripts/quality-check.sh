#!/usr/bin/env bash
# =============================================================================
# Script de avaliação de qualidade — Shopping List (CorujaTech)
# =============================================================================
# O que faz (na ordem):
#   1. flutter analyze          — verifica erros/warnings do analyzer
#   2. flutter test --coverage  — roda testes e gera cobertura
#   3. flutter build web        — build de produção (valida compilação)
#   4. sonar-scanner            — envia análise para o SonarQube local
#
# Uso:
#   ./scripts/quality-check.sh          # modo normal
#   ./scripts/quality-check.sh --strict # falha em QUALQUER warning (não só erro)
#
# Pré-requisitos:
#   - Flutter SDK no PATH
#   - sonar-scanner no PATH
#   - SonarQube rodando em http://localhost:9000
# =============================================================================

set -euo pipefail

# ── Configuração ─────────────────────────────────────────────────────────────
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
SONAR_HOST_URL="${SONAR_HOST_URL:-http://localhost:9000}"
SONAR_TOKEN="${SONAR_TOKEN:-}"
STRICT=false

# Cores
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Contadores
ERRORS=0
WARNINGS=0
FAILED_STEPS=()

# ── Parse de argumentos ───────────────────────────────────────────────────────
for arg in "$@"; do
  case "$arg" in
    --strict) STRICT=true ;;
    *) echo "Argumento desconhecido: $arg" ;;
  esac
done

# ── Helpers ───────────────────────────────────────────────────────────────────
step() {
  echo ""
  echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
  echo -e "${BLUE}▶  $1${NC}"
  echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
}

ok()   { echo -e "${GREEN}✔  $1${NC}"; }
warn() { echo -e "${YELLOW}⚠  $1${NC}"; WARNINGS=$((WARNINGS + 1)); }
err()  { echo -e "${RED}✘  $1${NC}"; ERRORS=$((ERRORS + 1)); FAILED_STEPS+=("$1"); }

cd "$PROJECT_DIR"

# ═════════════════════════════════════════════════════════════════════════════
# PASSO 1 — flutter analyze
# ═════════════════════════════════════════════════════════════════════════════
step "1/4  flutter analyze"

if ! command -v flutter &>/dev/null; then
  err "flutter não encontrado no PATH"
else
  ANALYZE_OUTPUT=$(flutter analyze 2>&1) || true

  # Conta erros e warnings
  ANALYZE_ERRORS=$(echo "$ANALYZE_OUTPUT" | grep -c "^   error" || true)
  ANALYZE_WARNINGS=$(echo "$ANALYZE_OUTPUT" | grep -c "^   warning" || true)
  ANALYZE_INFOS=$(echo "$ANALYZE_OUTPUT" | grep -c "^   info" || true)

  echo "$ANALYZE_OUTPUT"

  if [ "$ANALYZE_ERRORS" -gt 0 ]; then
    err "analyzer encontrou $ANALYZE_ERRORS erro(s)"
  elif [ "$STRICT" = true ] && [ "$ANALYZE_WARNINGS" -gt 0 ]; then
    err "strict mode: analyzer encontrou $ANALYZE_WARNINGS warning(s)"
  else
    ok "analyzer OK — ${ANALYZE_WARNINGS} warning(s), ${ANALYZE_INFOS} info(s)"
  fi
fi

# ═════════════════════════════════════════════════════════════════════════════
# PASSO 2 — flutter test --coverage
# ═════════════════════════════════════════════════════════════════════════════
step "2/4  flutter test --coverage"

if ! command -v flutter &>/dev/null; then
  err "flutter não encontrado no PATH"
else
  flutter test --machine --coverage > tests.output 2>&1 || {
    err "flutter test falhou — veja tests.output"
  }

  # Extrai resultado dos testes
  TEST_RESULT=$(tail -1 tests.output | grep -o '"success":[a-z]*' | cut -d: -f2 || echo "unknown")
  TEST_COUNT=$(grep -o '"testCount":[0-9]*' tests.output | tail -1 | cut -d: -f2 || echo "0")

  if [ "$TEST_RESULT" = "true" ]; then
    ok "testes passaram ($TEST_COUNT testes)"
  else
    err "testes falharam — veja tests.output"
  fi

  # Calcula cobertura de linhas
  if [ -f coverage/lcov.info ]; then
    COVERAGE=$(awk -F: '/^LF:/ {lf+=$2} /^LH:/ {lh+=$2} END {printf "%.1f", (lh/lf)*100}' coverage/lcov.info)
    COVERAGE_FILES=$(grep "^SF:" coverage/lcov.info | wc -l | tr -d ' ')
    TOTAL_FILES=$(find lib -name "*.dart" ! -name "*.g.dart" | wc -l | tr -d ' ')

    echo ""
    echo "  Cobertura de linhas : ${COVERAGE}%"
    echo "  Arquivos cobertos   : $COVERAGE_FILES / $TOTAL_FILES"

    if [ "$STRICT" = true ] && [ "$(echo "$COVERAGE < 80" | bc)" = "1" ]; then
      warn "strict mode: cobertura ${COVERAGE}% < 80%"
    else
      ok "cobertura ${COVERAGE}%"
    fi
  else
    warn "coverage/lcov.info não encontrado"
  fi
fi

# ═════════════════════════════════════════════════════════════════════════════
# PASSO 3 — flutter build web
# ═════════════════════════════════════════════════════════════════════════════
step "3/4  flutter build web"

if ! command -v flutter &>/dev/null; then
  err "flutter não encontrado no PATH"
else
  BUILD_OUTPUT=$(flutter build web --release 2>&1) || {
    err "build falhou"
    echo "$BUILD_OUTPUT"
  }
  ok "build web OK — build/web/ gerado"
fi

# ═════════════════════════════════════════════════════════════════════════════
# PASSO 4 — sonar-scanner
# ═════════════════════════════════════════════════════════════════════════════
step "4/4  sonar-scanner"

if ! command -v sonar-scanner &>/dev/null; then
  warn "sonar-scanner não encontrado no PATH — passo pulado"
elif [ -z "$SONAR_TOKEN" ]; then
  warn "SONAR_TOKEN não definido — passo pulado"
else
  sonar-scanner \
    -Dsonar.projectKey=shopping_list \
    -Dsonar.projectName="Shopping List - CorujaTech" \
    -Dsonar.projectVersion=1.0.0 \
    -Dsonar.sources=lib \
    -Dsonar.tests=test \
    -Dsonar.sourceEncoding=UTF-8 \
    -Dsonar.dart.analyzer.mode=FLUTTER \
    -Dsonar.dart.analyzer.options.override=false \
    -Dsonar.flutter.tests.reportPath=tests.output \
    -Dsonar.flutter.coverage.reportPath=coverage/lcov.info \
    -Dsonar.exclusions="**/*.g.dart,**/generated/**" \
    -Dsonar.host.url="$SONAR_HOST_URL" \
    -Dsonar.token="$SONAR_TOKEN" \
    2>&1 | tail -30 || {
    err "sonar-scanner falhou — verifique se o SonarQube está rodando em $SONAR_HOST_URL"
  }
  ok "sonar-scanner executado — veja resultados em $SONAR_HOST_URL/dashboard?id=shopping_list"
fi

# ═════════════════════════════════════════════════════════════════════════════
# Resumo final
# ═════════════════════════════════════════════════════════════════════════════
echo ""
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${BLUE}  RESUMO${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

if [ "$ERRORS" -eq 0 ] && [ "$STRICT" = false ]; then
  echo -e "  ${GREEN}✔  Nenhum erro${NC}"
elif [ "$ERRORS" -gt 0 ]; then
  echo -e "  ${RED}✘  $ERRORS erro(s) encontrado(s)${NC}"
fi

if [ "$WARNINGS" -gt 0 ]; then
  echo -e "  ${YELLOW}⚠  $WARNINGS warning(s)${NC}"
fi

if [ ${#FAILED_STEPS[@]} -gt 0 ]; then
  echo ""
  echo -e "  ${RED}Passos que falharam:${NC}"
  for step in "${FAILED_STEPS[@]}"; do
    echo -e "    ${RED}• $step${NC}"
  done
  echo ""
  echo -e "  ${RED}QUALIDADE: REPROVADO${NC}"
  exit 1
else
  echo ""
  echo -e "  ${GREEN}QUALIDADE: APROVADO ✔${NC}"
  exit 0
fi
