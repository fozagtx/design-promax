# CLAUDE.md

## About This Repo

Self-contained agent skill for Design ProMax — **462 real source files** from a premium React UI design system. Agents read actual `.js`/`.tsx` code, not markdown summaries. Zero hallucination.

## Project Structure

```
hero-ui-pro/
├── SKILL.md              # Main skill — lookup table + core patterns
├── README.md             # Human overview
├── CLAUDE.md             # This file
├── LICENSE               # MIT
├── install.sh            # Install script
├── .gitignore
└── sources/              # 462 REAL source files
    ├── FILE_INDEX.md     # Complete file listing
    ├── AI/               # 79 files
    ├── Application/      # 227 files
    ├── Charts/           # 7 files
    ├── E-commerce/       # 94 files
    └── Marketing/        # 55 files
```

## How Agents Use This

1. SKILL.md triggers on any React UI request
2. Agent reads the lookup table in SKILL.md to find the right category
3. Agent reads the actual source files from `sources/{Category}/`
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