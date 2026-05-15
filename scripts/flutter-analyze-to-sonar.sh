#!/usr/bin/env bash
# =============================================================================
# Converte flutter analyze em Generic Issue JSON para SonarQube
# =============================================================================
# Uso:   ./scripts/flutter-analyze-to-sonar.sh
# Saída: flutter_analyze_issues.json
# =============================================================================
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
OUTPUT_FILE="$PROJECT_DIR/flutter_analyze_issues.json"

cd "$PROJECT_DIR"

flutter analyze 2>&1 | python3 -c "
import json, sys, re

issues = []
line_pattern = re.compile(
    r'^\s+(error|warning|info)\s+•\s+(.*?)\s+•\s+([^:]+):(\d+):(\d+)\s+•\s+(.+)$'
)

for line in sys.stdin:
    m = line_pattern.match(line)
    if not m:
        continue
    severity, message, filepath, line_num, col, rule = m.groups()
    line_num, col = int(line_num), int(col)

    if severity == 'error':
        sq_sev, sq_type = 'MAJOR', 'BUG'
    elif severity == 'warning':
        sq_sev, sq_type = 'MAJOR', 'CODE_SMELL'
    else:
        sq_sev, sq_type = 'MINOR', 'CODE_SMELL'

    issues.append({
        'engineId': 'flutter-analyzer',
        'ruleId': rule,
        'severity': sq_sev,
        'type': sq_type,
        'primaryLocation': {
            'message': message,
            'filePath': filepath,
            'textStart': {'line': line_num, 'column': col},
            'textEnd': {'line': line_num, 'column': col},
        },
    })

with open('$OUTPUT_FILE', 'w') as f:
    json.dump({'issues': issues}, f, indent=2)
    f.write(chr(10))

print(f'flutter-analyze-to-sonar: {len(issues)} issues exportadas para $OUTPUT_FILE')
" 2>&1
