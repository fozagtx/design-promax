---
name: design-promax
description: >-
  Premium React UI via HeroUI Pro sources + route registry + style presets.
  ALWAYS apply clean_product feel (Vault OTP quality: action cards, solar icons,
  bordered inputs, radius-full buttons) after routing intent to 2–5 template files.
  Surfaces A–H (landing, auth, dashboard, chat, commerce, charts, forms, wallet/dapp).
  Triggers: design-promax, HeroUI, that card feel, Vault OTP style, route templates.
---

# Design ProMax

Real HeroUI Pro sources. **Zero invented classNames.**  
**Two axes, always:**

1. **Route** — *what* screen (landing / auth / vault / …) → `ROUTE_REGISTRY.json`  
2. **Style** — *how it feels* → `STYLE_PRESETS.json` (**default: `clean_product`**)

That second axis is what keeps quality at the **Vault OTP** level: soft cards, icon tiles, chips, clear gate states, human copy.

## Protocol (mandatory)

```
1. ROUTE_REGISTRY.json  → surface A–H + route id (keyword_index)
2. STYLE_PRESETS.json   → default clean_product
   - wallet/dapp (H) → clean_product LOCKED
   - pure marketing landing → marketing_campaign (+ still card rules)
   - dense tables/analytics → dense_admin (+ still card tokens)
3. Merge route.primary ∪ style.must_read (dedupe, cap 5 files)
4. Read those files under sources/ ONLY
5. Adapt using style.compose_recipe + quality_bar
6. Never eng footnotes / random purple glass themes
```

| File | Role |
|------|------|
| [ROUTE_REGISTRY.json](ROUTE_REGISTRY.json) | What to build (exact paths) |
| [STYLE_PRESETS.json](STYLE_PRESETS.json) | How it should feel |
| [ROUTING.md](ROUTING.md) | Human router narrative |
| [ARCHITECTURE.md](ARCHITECTURE.md) | Harness contract |
| [sources/](sources/) | Real code |

### clean_product feel (always preferred)

| Piece | Pattern |
|-------|---------|
| Cards | `border-small border-default-200 shadow-small` + `bg-content1` |
| Feature tiles | **Action card**: icon in `bg-primary-50 border-primary-100` tile |
| Buttons | `radius="full"`; primary CTA filled |
| Inputs | `variant="bordered"` + solar `startContent` |
| Chips | `size="sm" variant="flat"` for status |
| Icons | `@iconify/react` **`solar:`** bold-duotone / linear |
| Layout | `max-w-3xl mx-auto`, short hero, 3 action cards, gate card, content cards |
| Copy | Human only — no ciphertext/Polybase/contract footers |

Must-read for that feel:  
`Application/cards (20)__action-card.tsx` · `authentication (24)__App.tsx` · `security-settings.tsx`

### Keyword → route (quick)

| Intent | Route |
|--------|--------|
| landing / hero | `A.landing` |
| pricing | `A.pricing` |
| login / signup | `B.login_signup` |
| unlock / connect | `B.unlock_or_connect_gate` |
| dashboard | `C.sidebar_app` |
| settings | `C.settings` |
| chat / AI | `D.full_chat` |
| shop / checkout | `E.product_grid` / `E.checkout` |
| KPI / charts | `F.*` |
| wizard | `G.multistep` |
| wallet / vault / OTP / dapp | `H.vault_or_dapp_shell` + **clean_product locked** |

---

## Stack

**React 18 + `@heroui/react` v2 + Tailwind 3 + Framer Motion + `@iconify/react`**

```js
import { Button, Input, Card, CardBody, Chip, Progress, cn } from "@heroui/react";
import { Icon } from "@iconify/react";
// solar:shield-keyhole-bold-duotone, solar:wallet-bold-duotone, …
```

---

## Rules

1. **Route + style** before writing multi-file UI  
2. Cap **5** source reads (route + style merge)  
3. Prefer **clean_product** unless user wants campaign landing or dense admin  
4. `forwardRef` + `cn` + `displayName` for reusable pieces  
5. Never invent icons/APIs; never open whole category folders  
6. Never put architecture notes in the product UI  
