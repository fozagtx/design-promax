---
name: design-promax
description: >-
  Premium React UI via HeroUI Pro + triple-axis router (theme x route x style).
  MUST ask which Pro theme first: Default | Brutalism | Glass | Mouve (unless
  user already named one). Then clean_product compose (Vault OTP / GhostKeys)
  + real Pro sources. Files: THEMES.json, STYLE_PRESETS.json, ROUTE_REGISTRY.json,
  case-studies/vault-otp.md. Showcase packs: Map navigation, Pro AI chat,
  Music player, Shopping experience. Saved profile: Burnt Editorial / Cleat look.
  Dense preset: workstation_dense (trading desk, ledger, terminal, ops console).
  Writes DESIGN.md contract into the project.
  Triggers: design-promax, HeroUI, Brutalism, Glass, Mouve, Burnt Editorial,
  Cleat style, black-white burnt orange, clean_product, Vault OTP, GhostKeys,
  those cards, route UI, trading desk, order ledger, terminal, ops console,
  workstation, DESIGN.md, design contract, designeer.
---

# Design ProMax

Real HeroUI Pro sources. Theme x route x style. Cap 4 source reads.

## Files (resolve relative to this SKILL.md)

Every file below exists in the skill. Check the same folder as SKILL.md first, then `skill/`. Never claim one is missing or locked behind npm without checking both.

| File | Purpose |
|------|---------|
| `THEMES.json` + `themes.css` | Pro themes: Default, Brutalism, Glass, Mouve. Showcase packs. |
| `STYLE_PRESETS.json` | Style ids: `clean_product` (default), `trust_green`, `clean_product_compact`, `marketing_campaign`, `dense_admin`, `workstation_dense`, `chat_soft` |
| `ROUTE_REGISTRY.json` | Surfaces A-H, routes, keyword index, shell apps. Surface H = wallet / dapp / vault / OTP compose pack. |
| `case-studies/vault-otp.md` | Layout recipe for GhostKeys / Vault OTP quality |
| `case-studies/landing-and-desk.md` | Two-route product split |
| `case-studies/burnt-editorial.md` | Saved profile: Cleat-class editorial landing + coherent desk |
| `case-studies/workstation-dense.md` | Dense trading desk / ops console recipe (icon rail, nav column, KPI strip, ledger, inspector) |
| `templates/DESIGN.md` | Project design contract template, written to the project root after the theme gate |
| `REFERENCES.md` | Curated external references (designeer.xyz): galleries, icons, type, color, motion, allowed supplement atoms |
| `ROUTING.md` | Human router guide |
| `sources/` | Real HeroUI Pro code (read-only) |

If any of these are missing the install is stale: re-run `./install.sh` from https://github.com/fozagtx/design-promax. Do not invent them.

## Theme gate (mandatory, do this first)

Before loading routes, reading sources, or writing UI: ask which HeroUI Pro theme to use, unless the user already named one in the same message or asked for the saved Burnt Editorial / Cleat profile.

> Which HeroUI Pro theme should we use?
> **Default** / **Brutalism** / **Glass** / **Mouve**

| Theme | Feel | `data-theme` | CSS import (after Pro CSS) |
|-------|------|--------------|----------------------------|
| **Default** | Stock HeroUI radii, shadows, type | `light` / `dark` | none |
| **Brutalism** | Sharp, thick borders, Anton + Share Tech Mono, zero radius | `brutalism-light` / `brutalism-dark` | `@heroui-pro/react/themes/brutalism` |
| **Glass** | Backdrop blur, translucent surfaces | `glass-light` / `glass-dark` | `@heroui-pro/react/themes/glass` |
| **Mouve** | Mauve / warm-purple raised accents (official spelling Mouve) | `mouve-light` / `mouve-dark` | `@heroui-pro/react/themes/mouve` |

Rules:
- If the project already has a `DESIGN.md` written by this skill, read it and skip the gate. Otherwise, after the user answers, write `DESIGN.md` to the project root from `templates/DESIGN.md`, filled from `THEMES.json` (typography, spacing, motion, states) and the chosen style preset.
- Never silently default a Pro theme.
- Copy `themes.css` into the project and set `data-theme` on `<html>` (or an ancestor). Import alone does nothing.
- npm `@heroui-pro/react/themes/*` is optional, only if the user has a Pro v3 license.
- Theme is independent of the `clean_product` recipe: structure stays, radii / shadows / accent follow the theme.
- Saved profile exception: "Burnt Editorial", "Cleat look", or "black and white with burnt orange like Cleat" locks the direction with no theme gate. Read `case-studies/burnt-editorial.md` and apply it on every route.

## Protocol (mandatory)

```
0. DESIGN.md in project? read it, skip gate. Else THEME GATE: ask Default | Brutalism | Glass | Mouve (skip if named), then write DESIGN.md
   Burnt Editorial / Cleat named -> load case-studies/burnt-editorial.md instead
   Otherwise load THEMES.json + themes.css. Copy themes.css into project. Set data-theme.
1. Load STYLE_PRESETS.json + ROUTE_REGISTRY.json
2. keyword_index -> surface.route (also match showcase packs if named)
3. style -> clean_product by default
   - "like Vault OTP / GhostKeys / those cards" -> clean_product + read case-studies/vault-otp.md
   - Surface H -> clean_product or trust_green only
   - Surface F with ledger / desk / terminal / console / order book / monitoring -> workstation_dense + read case-studies/workstation-dense.md (must_read 4, no pills)
4. efficient_merge (cap 4):
   core = sources/Application/cards (20)__action-card.tsx
        + sources/Application/authentication (24)__App.tsx
        + sources/Application/cards (20)__security-settings.tsx
   + optional 1 shell App from registry shell_apps
   Surface H: core only (3)
   Showcase: prefer source_hints from THEMES.json showcase_packs
5. Apply button_matrix + compose_recipe from clean_product,
   then adapt radii / shadows / accent to the locked theme (Brutalism is not pill-everything)
6. User already has brand colors: keep them unless theme is Mouve / Brutalism and they asked for the full Pro look
7. Human copy only. No eng footnotes. No em dashes.
```

### Button matrix (Default / Glass / Mouve)

| Role | Props |
|------|--------|
| Primary | `color="primary" radius="full"` + solar bold icon |
| Secondary | `variant="bordered" radius="full" size="sm"` + linear icon |
| Danger | `color="danger" variant="flat" radius="full" size="sm"` |
| Warning | `color="warning" radius="full"` |
| Ghost | `variant="light" radius="full" size="sm"` |

Brutalism override: sharp / `radius="none"` CTAs and thick borders. Do not force soft pills.

### Compose recipe (clean_product)

Top bar -> chips -> hero -> 3 ActionCards -> one gate card -> form card -> list cards -> stop.

Adapting to an existing product theme: keep this structure, recolor with the product's primary / bg / fonts. Do not invent a palette, do not drop the recipe. A chosen Pro theme still applies on top.

### Compose recipe (workstation_dense)

Icon rail -> nav column -> header strip (title, live chip, session, kill switch) -> KPI strip (4 mono stats) -> ledger table + inspector panel side by side -> stop.

No hero, no action cards, no pills. Everything `size="sm"`, `radius="sm"`, `font-mono tabular-nums` on numbers, units on every value. Full recipe: `case-studies/workstation-dense.md`.

## Product split (mandatory, any theme)

If the product has a public story and a place to do the work, ship two routes. Theme only changes radii, shadows, blur, and accent. The split and the primitives stay. Read `case-studies/landing-and-desk.md` (or `burnt-editorial.md` if that profile was named; its root-theme coherence rule wins).

| Route | Style | Job |
|-------|-------|-----|
| `/` landing | `marketing_campaign` | Navbar (Features, How it works, Questions, no Connect) -> solid full job-line hero (`text-balance`, no `<br />`) -> product screenshot (optional) -> logo marquee (real logos only) -> Features -> How it works -> testimonials (real only) -> pricing (optional) -> FAQ -> footer. CTA is the product verb to `/desk`. |
| `/desk` | `clean_product` | Navbar (one Connect) -> the same full job line -> wrong-network only -> form. No features / how-it-works row. |

Landing sections are atoms: pick each from `ROUTE_REGISTRY.json` -> `section_router`. The hero source headline (gradient clip + `<br />`) is a layout reference only; the headline itself is always solid `text-foreground`.

Hard bans in any theme: second Connect; logo subtitle; faded `bg-clip-text` hero; chopped `<br />` leaving three leftover words; desk h1 shortened to a 3-word stub; missing Features (Features is not How it works); engineering chips; fake ACME footer; invented cards.

## Showcase packs

When the user points at heroui.pro demos, map intent -> pack -> sources (`THEMES.json` -> `showcase_packs`). Theme gate still runs first.

| Pack | What it looks like |
|------|--------------------|
| Map navigation | Near / distance, Open / Closed hours, Pick-up / Delivery place cards |
| Pro AI chat | Structured answer, Sources / Deep search, Ask-anything composer |
| Music player | Artwork queue, now playing, track rows |
| Shopping experience | Product, price, size selector, PDP |

## References

When a surface needs outside inspiration, an icon family, a typeface, a color check, or a motion atom HeroUI lacks, read `REFERENCES.md` (curated from designeer.xyz) and fetch one section of https://www.designeer.xyz/llms-full.txt. One supplement component per screen max, restyled with HeroUI tokens. Never mix shadcn / Base UI / Radix into a HeroUI project.

## Stack

React 18 + `@heroui/react` v2 (+ `@heroui-pro/react` when available) + Tailwind 3 + Framer Motion + `@iconify/react` (`solar:`)

## Rules

1. Theme gate first
2. Route + style after theme is locked
3. Max 4 source reads
4. `clean_product` unless campaign landing (`marketing_campaign`) or dense real-time surface (`workstation_dense`)
5. Read `case-studies/vault-otp.md` when the user wants that feel
6. Never invent icons; never claim skill files are missing without checking both path layouts
7. Never put architecture notes or eng jargon in product UI
8. DESIGN.md is the contract: write it once, read it every later session
9. Every route has `adapt` notes and `deps`; read them before opening the file. Settings never route to `Layouts (2)__App.tsx` (that is messaging).
