#!/usr/bin/env bash
# =============================================================================
# Cria / atualiza o perfil de qualidade Dart no SonarQube com regras reforçadas
# =============================================================================
# Uso:   SONAR_TOKEN=squ_xxx ./scripts/sonar-setup-profile.sh
# Pré-req: SonarQube rodando em http://localhost:9000
# =============================================================================
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
SONAR_HOST_URL="${SONAR_HOST_URL:-http://localhost:9000}"
SONAR_TOKEN="${SONAR_TOKEN:-}"

if [ -z "$SONAR_TOKEN" ]; then
  echo "✘  SONAR_TOKEN não definido"
  exit 1
fi

AUTH="Authorization: Basic $(echo -n "$SONAR_TOKEN:" | base64)"
CONTENT_TYPE="Content-Type: application/x-www-form-urlencoded"

# ── 1. Criar perfil customizado (baseado no perfil "Sonar way") ──────────
PROFILE_NAME="CorujaTech Dart"
PROFILE_KEY="corujatech-dart"

echo "━━━ Criando perfil: $PROFILE_NAME ━━━"

curl -s -X POST -H "$AUTH" \
  "$SONAR_HOST_URL/api/qualityprofiles/create" \
  -d "name=$PROFILE_NAME&language=dart&languageName=Dart" \
  | python3 -c "import json,sys; d=json.load(sys.stdin); print(d.get('profile',{}).get('key','ERROR'))" 2>/dev/null

# ── 2. Ativar regras-chave como BLOCKER ────────────────────────────────
echo "━━━ Ativando regras reforçadas ━━━"

RULES_AS_BLOCKER=(
  "dart:S112"    # Don't use generic exceptions
  "dart:S1479"   # Maximum switch cases
  "dart:S3776"   # Cognitive Complexity
  "dart:S107"    # Maximum parameters
  "dart:S1135"   # TODO
)

for RULE in "${RULES_AS_BLOCKER[@]}"; do
  echo "  Ativando $RULE como BLOCKER..."
  curl -s -X POST -H "$AUTH" -H "$CONTENT_TYPE" \
    "$SONAR_HOST_URL/api/qualityprofiles/activate_rule" \
    -d "rule=$RULE&profile_key=$PROFILE_KEY&severity=BLOCKER" 2>/dev/null
done

# ── 3. Definir este perfil como padrão para o projeto ──────────────────
echo "━━━ Vinculando perfil ao projeto shopping_list ━━━"

curl -s -X POST -H "$AUTH" \
  "$SONAR_HOST_URL/api/qualityprofiles/add_project" \
  -d "profile_key=$PROFILE_KEY&projectKey=shopping_list" 2>/dev/null

echo ""
echo "✔  Perfil '$PROFILE_NAME' configurado para shopping_list"
echo "   Veja em: $SONAR_HOST_URL/project/quality_profiles?id=shopping_list"
