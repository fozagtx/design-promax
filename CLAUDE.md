# CLAUDE.md

## About This Repo
Self-contained agent skill for Design ProMax — **462 real source files** from a premium React UI design system. Agents read actual `.js`/`.tsx` code, not markdown summaries. Zero hallucination.

## Harness architecture (v2)

```
skill/SKILL.md              → trigger + short protocol
skill/ROUTE_REGISTRY.json   → machine routes (source of truth)
skill/ROUTING.md            → human narrative
skill/ARCHITECTURE.md       → harness contract
skill/sources/**            → real HeroUI Pro patterns
scripts/validate-routes.mjs → CI: registry paths must exist
```

## How Agents Use This

1. Load `skill/SKILL.md`
2. Load `skill/ROUTE_REGISTRY.json`
3. Match intent → `surface` + `route` (use `keyword_index`)
4. Read **only** `primary[]` paths under `skill/sources/` (max 4)
5. Adapt real code — never invent classNames / icons
6. Enforce `quality_bar` (human copy, no eng UI footnotes)

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
