# Design ProMax — Agent Skill

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

A self-contained agent skill containing **462 real source files** from HeroUI Pro — a premium React UI component library. Agents read actual `.js`/`.tsx` code, not summaries, so there's zero hallucination.

## What This Does

When installed as a skill, your coding agent will:
- Read **real source code** from `skill/sources/` — not markdown summaries
- Use HeroUI (`@heroui/react`) components with verified patterns
- Apply semantic design tokens from actual component usage
- Pick the right icons by reading real icon imports
- Build any UI pattern by adapting real working code

## Install

```bash
git clone https://github.com/fozagtx/design-promax.git
cd design-promax
./install.sh -y
# or
./install-custom.sh
```

## Structure

```
design-promax/
├── SKILL.md              # Main skill — lookup table + core patterns
├── README.md             # This file
├── CLAUDE.md             # Agent context
├── LICENSE               # MIT
├── install.sh            # Standard install
├── install-custom.sh     # Custom location installer
├── .gitignore
├── ARTICLE.md            # Article about the skill
├── SUBMISSION.md         # Submission info
├── skill/
│   ├── SKILL.md          # Main skill entry point
│   └── sources/          # 462 REAL source files (no hallucination)
│       ├── FILE_INDEX.md # Complete file listing
│       ├── AI/           # 79 files — chat, prompts, messages, sidebars
│       ├── Application/  # 227 files — auth, cards, forms, tables, nav, etc.
│       ├── Charts/       # 7 files — bar, donut, line, KPI stats
│       ├── E-commerce/   # 94 files — products, filters, checkout, reviews
│       └── Marketing/    # 55 files — pricing, hero, FAQ, banners, footers
├── agents/               # Agent role definitions
│   ├── ui-architect.md
│   ├── component-analyst.md
│   └── design-systems-coach.md
├── commands/             # Command definitions
│   ├── build-ui.md
│   ├── component-research.md
│   └── design-audit.md
├── rules/                # Design integrity rules
│   └── design-integrity.md
└── tests/                # Structure validation
    └── validate_structure.sh
```

## Component Categories

- **AI** — Chat interfaces, prompt inputs, message cards, playgrounds, sidebars
- **Application** — Auth forms, sidebars, navbars, cards, tables, forms, steppers, calendars, command menus, feedback
- **Charts** — Bar charts, donut charts, line graphs, KPI stat cards (Recharts)
- **E-commerce** — Product listings, filters, checkout, reviews, shopping cart
- **Marketing** — Hero sections, pricing, banners, FAQs, footers, cookie consents, teams

## Stack

- React 18
- HeroUI (`@heroui/react`)
- Tailwind CSS 3
- Framer Motion
- Iconify (`@iconify/react`)
- Recharts (Charts only)

## License

MIT
