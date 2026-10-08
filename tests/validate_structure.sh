#!/bin/bash
# Validate Design ProMax skill structure
# Usage: ./tests/validate_structure.sh

PASS=0
FAIL=0

check() {
  local desc="$1"
  local path="$2"
  if [ -e "$path" ]; then
    echo "  OK $desc"
    PASS=$((PASS + 1))
  else
    echo "  MISSING $desc - $path"
    FAIL=$((FAIL + 1))
  fi
}

echo "=== Design ProMax - Structure Validation ==="
echo ""

echo "--- Root Files ---"
check ".gitignore" ".gitignore"
check "README.md" "README.md"
check "LICENSE" "LICENSE"
check "CLAUDE.md" "CLAUDE.md"
check "install.sh" "install.sh"

echo ""
echo "--- skill/ Directory ---"
check "skill/SKILL.md" "skill/SKILL.md"
check "skill/THEMES.json" "skill/THEMES.json"
check "skill/themes.css" "skill/themes.css"
check "skill/ROUTE_REGISTRY.json" "skill/ROUTE_REGISTRY.json"
check "skill/ROUTING.md" "skill/ROUTING.md"
check "skill/ARCHITECTURE.md" "skill/ARCHITECTURE.md"
check "skill/STYLE_PRESETS.json" "skill/STYLE_PRESETS.json"
check "skill/case-studies/vault-otp.md" "skill/case-studies/vault-otp.md"
check "skill/case-studies/landing-and-desk.md" "skill/case-studies/landing-and-desk.md"
check "skill/case-studies/burnt-editorial.md" "skill/case-studies/burnt-editorial.md"
check "skill/case-studies/workstation-dense.md" "skill/case-studies/workstation-dense.md"
check "skill/templates/DESIGN.md" "skill/templates/DESIGN.md"
check "skill/REFERENCES.md" "skill/REFERENCES.md"
check "skill/motion/_root.css" "skill/motion/_root.css"
check "skill/motion/TRANSITIONS.md" "skill/motion/TRANSITIONS.md"
check "skill/motion/RARE_UI.md" "skill/motion/RARE_UI.md"
check "skill/motion/POLISH.md" "skill/motion/POLISH.md"
check "skill/motion/transitions/01-card-resize.md" "skill/motion/transitions/01-card-resize.md"
check "skill/motion/transitions/32-banner-stacking.md" "skill/motion/transitions/32-banner-stacking.md"
check "skill/sources/" "skill/sources"
check "scripts/validate-routes.mjs" "scripts/validate-routes.mjs"

echo ""
echo "--- Route registry paths ---"
if command -v node >/dev/null 2>&1; then
  if node scripts/validate-routes.mjs; then
    echo "  OK ROUTE_REGISTRY.json paths"
    PASS=$((PASS + 1))
  else
    echo "  MISSING ROUTE_REGISTRY.json paths"
    FAIL=$((FAIL + 1))
  fi
else
  echo "  WARN node not available - skip path validation"
fi

echo ""
echo "--- rules/ Directory ---"
check "rules/design-integrity.md" "rules/design-integrity.md"

echo ""
echo "--- tests/ Directory ---"
check "tests/validate_structure.sh" "tests/validate_structure.sh"

echo ""
echo "=== Results: $PASS passed, $FAIL failed ==="
exit $FAIL
