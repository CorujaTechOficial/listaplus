#!/usr/bin/env bash
# =============================================================================
# Quality check — Shopping List (CorujaTech)
# =============================================================================
# Zero-tolerance mode: falha em QUALQUER issue, cobertura mínima 100%
# =============================================================================
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
SONAR_HOST_URL="${SONAR_HOST_URL:-http://localhost:9000}"
SONAR_TOKEN="${SONAR_TOKEN:-}"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

ERRORS=0
FAILED_STEPS=()

step() {
  echo ""
  echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
  echo -e "${BLUE}▶  $1${NC}"
  echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
}

ok()   { echo -e "${GREEN}✔  $1${NC}"; }
warn() { echo -e "${YELLOW}⚠  $1${NC}"; }
err()  { echo -e "${RED}✘  $1${NC}"; ERRORS=$((ERRORS + 1)); FAILED_STEPS+=("$1"); }

cd "$PROJECT_DIR"

# ═════════════════════════════════════════════════════════════════════════════
# PASSO 1 — flutter analyze (fatal em qualquer issue)
# ═════════════════════════════════════════════════════════════════════════════
step "1/5  flutter analyze — zero tolerance"

if ! command -v flutter &>/dev/null; then
  err "flutter não encontrado no PATH"
else
  # Sempre com --fatal-infos para falhar em qualquer issue
  flutter analyze --fatal-infos 2>&1 && {
    ok "analyzer: nenhum issue encontrado"
  } || {
    err "analyzer encontrou issue(s) — corrija antes de prosseguir"
  }
  # Exporta para o SonarQube (mesmo se falhou, o relatório é útil)
  ./scripts/flutter-analyze-to-sonar.sh 2>&1
fi

# ═════════════════════════════════════════════════════════════════════════════
# PASSO 2 — flutter test --coverage
# ═════════════════════════════════════════════════════════════════════════════
step "2/5  flutter test --coverage — mínimo 100%"

if ! command -v flutter &>/dev/null; then
  err "flutter não encontrado no PATH"
else
  flutter test --machine --coverage > tests.output 2>&1 || {
    err "flutter test falhou — veja tests.output"
  }

  TEST_RESULT=$(tail -1 tests.output | grep -o '"success":[a-z]*' | cut -d: -f2 || echo "unknown")
  TEST_COUNT=$(grep -o '"testCount":[0-9]*' tests.output | tail -1 | cut -d: -f2 || echo "0")

  if [ "$TEST_RESULT" = "true" ]; then
    ok "testes passaram ($TEST_COUNT testes)"
  else
    err "testes falharam — veja tests.output"
  fi

  if [ -f coverage/lcov.info ]; then
    # Exclui .g.dart (gerados) — mesma exclusão do SonarQube
    COVERAGE=$(awk -F: '/^SF:/ {f=$2} /^LF:/ && f !~ /\.g\.dart$/ {lf+=$2} /^LH:/ && f !~ /\.g\.dart$/ {lh+=$2} END {printf "%.1f", (lh/lf)*100}' coverage/lcov.info)
    COVERAGE_FILES=$(grep "^SF:" coverage/lcov.info | wc -l | tr -d ' ')
    TOTAL_FILES=$(find lib -name "*.dart" ! -name "*.g.dart" | wc -l | tr -d ' ')

    echo ""
    echo "  Cobertura de linhas : ${COVERAGE}%"
    echo "  Arquivos cobertos   : $COVERAGE_FILES / $TOTAL_FILES"

    if [ "$(printf "%.0f" "$COVERAGE")" -lt 100 ]; then
      err "cobertura ${COVERAGE}% < 100%"
    else
      ok "cobertura 100%!"
    fi
  else
    err "coverage/lcov.info não encontrado"
  fi
fi

# ═════════════════════════════════════════════════════════════════════════════
# PASSO 3 — flutter build (todas as plataformas disponíveis)
# ═════════════════════════════════════════════════════════════════════════════
step "3/5  flutter build web"

if ! command -v flutter &>/dev/null; then
  err "flutter não encontrado no PATH"
else
  flutter build web --release 2>&1 && {
    ok "build web OK — build/web/ gerado"
  } || {
    err "build web falhou"
  }
fi

# ═════════════════════════════════════════════════════════════════════════════
# PASSO 4 — sonar-scanner (envia análise com issues Dart)
# ═════════════════════════════════════════════════════════════════════════════
step "4/5  sonar-scanner"

SONAR_ARGS=(
  -Dsonar.projectKey=shopping_list
  -Dsonar.projectName="Shopping List - CorujaTech"
  -Dsonar.projectVersion=1.0.0
  -Dsonar.sources=lib
  -Dsonar.tests=test
  -Dsonar.sourceEncoding=UTF-8
  -Dsonar.dart.analyzer.mode=FLUTTER
  -Dsonar.dart.analyzer.options.override=false
  -Dsonar.flutter.tests.reportPath=tests.output
  -Dsonar.flutter.coverage.reportPath=coverage/lcov.info
  -Dsonar.externalIssuesReportPaths=flutter_analyze_issues.json
  -Dsonar.exclusions="**/*.g.dart,**/generated/**,test/**,flutter_analyze_issues.json"
  -Dsonar.host.url="$SONAR_HOST_URL"
  -Dsonar.token="$SONAR_TOKEN"
)

if [ -n "$SONAR_TOKEN" ]; then
  if command -v sonar-scanner &>/dev/null; then
    sonar-scanner "${SONAR_ARGS[@]}" 2>&1 | tail -30 || {
      err "sonar-scanner falhou — verifique se o SonarQube está rodando em $SONAR_HOST_URL"
    }
  elif command -v docker &>/dev/null; then
    docker run --rm --network host \
      -v "$PROJECT_DIR:/usr/src" \
      sonarsource/sonar-scanner-cli \
      "${SONAR_ARGS[@]}" 2>&1 | tail -30 || {
      err "sonar-scanner (Docker) falhou"
    }
  else
    warn "sonar-scanner e docker não encontrados — passo pulado"
  fi
  ok "sonar-scanner executado — veja resultados em $SONAR_HOST_URL/dashboard?id=shopping_list"
else
  warn "SONAR_TOKEN não definido — passo pulado"
fi

# ═════════════════════════════════════════════════════════════════════════════
# PASSO 5 — Validação cruzada SonarQube Quality Gate
# ═════════════════════════════════════════════════════════════════════════════
step "5/5  Quality Gate do SonarQube"

if [ -n "$SONAR_TOKEN" ]; then
  # Aguarda processamento e consulta o Quality Gate
  sleep 3
  GATE=$(curl -s -H "Authorization: Basic $(echo -n "$SONAR_TOKEN:" | base64)" \
    "$SONAR_HOST_URL/api/qualitygates/project_status?projectKey=shopping_list" \
    | python3 -c "import json,sys; print(json.load(sys.stdin)['projectStatus']['status'])" 2>/dev/null || echo "ERROR")

  if [ "$GATE" = "OK" ]; then
    ok "Quality Gate: $GATE"
  else
    err "Quality Gate: $GATE — veja $SONAR_HOST_URL/dashboard?id=shopping_list"
  fi
else
  warn "SONAR_TOKEN não definido — Quality Gate não verificado"
fi

# ═════════════════════════════════════════════════════════════════════════════
# RESUMO
# ═════════════════════════════════════════════════════════════════════════════
echo ""
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${BLUE}  RESUMO${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

if [ "$ERRORS" -eq 0 ]; then
  echo -e "  ${GREEN}✔  QUALIDADE MÁXIMA — APROVADO${NC}"
  exit 0
else
  echo -e "  ${RED}✘  $ERRORS passo(s) com falha:${NC}"
  for s in "${FAILED_STEPS[@]}"; do
    echo -e "    ${RED}• $s${NC}"
  done
  echo ""
  echo -e "  ${RED}QUALIDADE: REPROVADO${NC}"
  exit 1
fi
