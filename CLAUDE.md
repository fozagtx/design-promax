# CLAUDE.md

## About This Repo
Self-contained agent skill for Design ProMax — **462 real source files** from a premium React UI design system. Agents read actual `.js`/`.tsx` code, not markdown summaries. Zero hallucination.

## Project Structure

```
design-promax/
├── .gitignore
├── ARTICLE.md
├── README.md
├── LICENSE
├── CLAUDE.md             # This file
├── SUBMISSION.md
├── install.sh
├── install-custom.sh
├── skill/
│   ├── SKILL.md          # Main skill — lookup table + core patterns
│   └── sources/          # 462 REAL source files
│       ├── AI/           # 79 files — chat, prompts, messages, sidebars
│       ├── Application/  # 227 files — auth, cards, forms, tables, nav, etc.
│       ├── Charts/       # 7 files — bar, donut, line, KPI stats
│       ├── E-commerce/   # 94 files — products, filters, checkout, reviews
│       └── Marketing/    # 55 files — pricing, hero, FAQ, banners, footers
├── agents/               # Agent role definitions
├── commands/             # Command definitions
├── rules/                # Design integrity rules
└── tests/                # Structure validation
```

## How Agents Use This
1. `skill/SKILL.md` triggers on any React UI request
2. Agent reads the lookup table in `skill/SKILL.md` to find the right category
3. Agent reads the actual source files from `skill/sources/{Category}/`
4. Agent adapts real code — never hallucinates

## Key Rules
1. Always `"use client"` directive
2. Always `React.forwardRef` for reusable components
3. Always `cn()` for class merging
4. Always HeroUI semantic tokens — never raw Tailwind colors
5. Always separate data from presentation
6. Always `@iconify/react` with `solar:` or `gravity-ui:` prefix
7. Always add `displayName` to forwarded components
8. Always read the actual source file before writing code
9. Never hallucinate icon names, classNames, or component APIs