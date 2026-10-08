# Design ProMax - Agent Skill

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

A self-contained agent skill containing **462 real source files** from HeroUI Pro - a premium React UI component library. Agents read actual `.js`/`.tsx` code, not summaries, so there's zero hallucination.

## What This Does

When installed as a skill, your coding agent will:
- Read **real source code** from `skill/sources/` - not markdown summaries
- Use HeroUI (`@heroui/react`) components with verified patterns
- Apply semantic design tokens from actual component usage
- Pick the right icons by reading real icon imports
- Build any UI pattern by adapting real working code
- Write a `DESIGN.md` design contract into the project (theme, type, spacing, states, motion) so later sessions do not re-ask

## Install

```bash
git clone https://github.com/fozagtx/design-promax.git
cd design-promax
./install.sh -y
```

## Structure

```
design-promax/
+-- README.md
+-- CLAUDE.md             # Agent / harness context
+-- LICENSE
+-- install.sh
+-- skill/
|   +-- SKILL.md              # Trigger + short protocol
|   +-- THEMES.json           # Pro themes (Default/Brutalism/Glass/Mouve)
|   +-- themes.css            # Theme CSS variables
|   +-- STYLE_PRESETS.json    # Compose feel (clean_product)
|   +-- ROUTE_REGISTRY.json   # Machine routes (source of truth)
|   +-- ROUTING.md            # Human router narrative
|   +-- ARCHITECTURE.md       # Harness architecture
|   +-- case-studies/         # vault-otp, landing-and-desk, burnt-editorial, workstation-dense
|   +-- templates/DESIGN.md   # Project design contract template
|   +-- REFERENCES.md         # Curated external references (designeer.xyz)
|   +-- motion/               # transitions.dev tokens + 32 snippets, POLISH, RARE_UI atoms
|   +-- sources/              # 462 REAL source files
|       +-- FILE_INDEX.md
|       +-- AI/
|       +-- Application/
|       +-- Charts/
|       +-- E-commerce/
|       +-- Marketing/
+-- scripts/
|   +-- validate-routes.mjs   # Ensures registry paths exist
+-- rules/
+-- tests/validate_structure.sh
```

## Template routing + style (Vault OTP quality)

Agents must **not** browse 400+ files at random. They:

1. Load `skill/ROUTE_REGISTRY.json` -> **what** screen (A-H)
2. Load `skill/STYLE_PRESETS.json` -> **how it feels** (default **`clean_product`**)
3. Merge route files + style must-reads (<=5 total)
4. Adapt real patterns: action cards, solar icons, radius-full buttons, human copy
5. **Landing and desk are separate routes** when the product has a homepage and a work surface (`case-studies/landing-and-desk.md`). One Connect, on the desk navbar only.

Wallet/crypto UIs use surface **H** + locked **clean_product** (the Vault OTP card feel). Landing for those products uses surface **A** + `marketing_campaign` - never jammed onto the desk.

```bash
node scripts/validate-routes.mjs
```

## Component Categories

- **AI** - Chat interfaces, prompt inputs, message cards, playgrounds, sidebars
- **Application** - Auth forms, sidebars, navbars, cards, tables, forms, steppers, calendars, command menus, feedback
- **Charts** - Bar charts, donut charts, line graphs, KPI stat cards (Recharts)
- **E-commerce** - Product listings, filters, checkout, reviews, shopping cart
- **Marketing** - Hero sections, pricing, banners, FAQs, footers, cookie consents, teams

## Stack

- React 18
- HeroUI (`@heroui/react`)
- Tailwind CSS 3
- Framer Motion
- Iconify (`@iconify/react`)
- Recharts (Charts only)

## License

MIT
