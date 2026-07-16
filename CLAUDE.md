# CLAUDE.md

## About This Repo
Self-contained agent skill for Design ProMax — **462 real source files** from a premium React UI design system. Agents read actual `.js`/`.tsx` code, not markdown summaries. Zero hallucination.

## Harness architecture (v2)

```
skill/SKILL.md                  → trigger + efficient protocol
skill/ROUTE_REGISTRY.json       → what screen (A–H)
skill/STYLE_PRESETS.json        → how it feels + button_matrix
skill/case-studies/vault-otp.md → canonical product quality
skill/ROUTING.md / ARCHITECTURE.md
skill/sources/**
scripts/validate-routes.mjs
```

## How Agents Use This

1. Load `skill/SKILL.md`
2. Load `skill/ROUTE_REGISTRY.json` + `skill/STYLE_PRESETS.json`
3. Match intent → `surface` + `route` (`keyword_index`)
4. Style → default **`clean_product`** (Vault OTP case study; locked for H)
5. Efficient merge: 3 core files (+ 1 shell App if needed), max **4**
6. Apply **button_matrix** (pill primary / bordered secondary / flat danger)
7. Adapt compose_recipe; human copy only

**Do not** start from `FILE_INDEX.md` or open an entire category folder.

## Project Structure

```
design-promax/
├── skill/
│   ├── SKILL.md
│   ├── ROUTE_REGISTRY.json
│   ├── ROUTING.md
│   ├── ARCHITECTURE.md
│   └── sources/
├── agents/
├── commands/
├── rules/
├── scripts/validate-routes.mjs
└── tests/validate_structure.sh
```

## Key Rules
1. Route via registry before multi-file UI
2. Always `"use client"` for interactive React
3. Always `React.forwardRef` + `cn` + `displayName` for reusable pieces
4. Always HeroUI semantic tokens
5. Always `@iconify/react` with `solar:` or `gravity-ui:` from opened sources
6. Never hallucinate icon names, classNames, or APIs
7. Never put architecture notes (ciphertext, Polybase, etc.) in product UI
