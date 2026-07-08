#!/bin/bash
# Validate Design ProMax skill structure
# Usage: ./tests/validate_structure.sh

PASS=0
FAIL=0

check() {
  local desc="$1"
  local path="$2"
  if [ -e "$path" ]; then
    echo "  ✅ $desc"
    PASS=$((PASS + 1))
  else
    echo "  ❌ $desc — MISSING: $path"
    FAIL=$((FAIL + 1))
  fi
}

echo "=== Design ProMax — Structure Validation ==="
echo ""

echo "--- Root Files ---"
check ".gitignore" ".gitignore"
check "ARTICLE.md" "ARTICLE.md"
check "README.md" "README.md"
check "LICENSE" "LICENSE"
check "CLAUDE.md" "CLAUDE.md"
check "SUBMISSION.md" "SUBMISSION.md"
check "install.sh" "install.sh"
check "install-custom.sh" "install-custom.sh"

echo ""
echo "--- skill/ Directory ---"
check "skill/SKILL.md" "skill/SKILL.md"
check "skill/sources/" "skill/sources"

echo ""
echo "--- agents/ Directory ---"
check "agents/ui-architect.md" "agents/ui-architect.md"
check "agents/component-analyst.md" "agents/component-analyst.md"
check "agents/design-systems-coach.md" "agents/design-systems-coach.md"

echo ""
echo "--- commands/ Directory ---"
check "commands/build-ui.md" "commands/build-ui.md"
check "commands/component-research.md" "commands/component-research.md"
check "commands/design-audit.md" "commands/design-audit.md"

echo ""
echo "--- rules/ Directory ---"
check "rules/design-integrity.md" "rules/design-integrity.md"

echo ""
echo "--- tests/ Directory ---"
check "tests/validate_structure.sh" "tests/validate_structure.sh"

echo ""
echo "=== Results: $PASS passed, $FAIL failed ==="
exit $FAIL
