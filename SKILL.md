---
name: design-promax
description: >-
  Premium React UI via HeroUI Pro + dual-axis router (route × style).
  Default style clean_product = Vault OTP / GhostKeys case study (pill buttons,
  action cards, solar icons, gate cards). Files: STYLE_PRESETS.json,
  ROUTE_REGISTRY.json, case-studies/vault-otp.md. Surfaces A–H. Max 4 source reads.
  Triggers: design-promax, HeroUI, clean_product, Vault OTP, GhostKeys style,
  those cards, those buttons, route UI.
---

# Design ProMax

Real HeroUI Pro sources. **Route × style. Cap 4 file reads.**

## Where the files are (read this first)

Agents install this skill in different layouts. **Resolve paths relative to this SKILL.md file:**

| File | Same folder as SKILL.md (flat install) | Nested repo layout |
|------|------------------------------------------|--------------------|
| Style presets | `STYLE_PRESETS.json` | `skill/STYLE_PRESETS.json` |
| Route registry | `ROUTE_REGISTRY.json` | `skill/ROUTE_REGISTRY.json` |
| Case study | `case-studies/vault-otp.md` | `skill/case-studies/vault-otp.md` |
| Routing guide | `ROUTING.md` | `skill/ROUTING.md` |
| Architecture | `ARCHITECTURE.md` | `skill/ARCHITECTURE.md` |
| HeroUI sources | `sources/` | `skill/sources/` |

**If `case-studies/vault-otp.md` or `STYLE_PRESETS.json` is missing, the skill install is stale. Tell the user to re-run `./install.sh` from https://github.com/fozagtx/design-promax — do not invent clean_product.**

### These names are real (do not claim they do not exist)

- **Style id:** `clean_product` (default), also `trust_green`, `clean_product_compact`, `marketing_campaign`, `dense_admin`, `chat_soft`
- **Case study path:** `case-studies/vault-otp.md` (layout recipe for GhostKeys / Vault OTP quality)
- **Surface H:** wallet / dapp / vault / OTP compose pack in `ROUTE_REGISTRY.json`

---

## Efficient protocol (mandatory)

```
1. Load STYLE_PRESETS.json + ROUTE_REGISTRY.json (see path table above)
2. keyword_index → surface.route
3. style → clean_product by default
   - User says like Vault OTP / GhostKeys / those cards/buttons → clean_product + read case-studies/vault-otp.md
   - Surface H → clean_product or trust_green only
4. efficient_merge (cap 4):
   core = sources/Application/cards (20)__action-card.tsx
         + sources/Application/authentication (24)__App.tsx
         + sources/Application/cards (20)__security-settings.tsx
   + optional 1 shell App from registry shell_apps
   Surface H: core only (3)
5. Apply button_matrix + compose_recipe from clean_product
6. Adapt colors to the product theme if user says so (structure stays clean_product)
7. Human copy only. No eng footnotes. No em dashes.
```

### Button matrix (from case study)

| Role | Props |
|------|--------|
| Primary | `color="primary" radius="full"` + solar bold icon |
| Secondary | `variant="bordered" radius="full" size="sm"` + linear icon |
| Danger | `color="danger" variant="flat" radius="full" size="sm"` |
| Warning | `color="warning" radius="full"` |
| Ghost | `variant="light" radius="full" size="sm"` |

### Compose recipe (clean_product)

Top bar → chips → hero → **3 ActionCards** → one gate card → form card → list cards → stop.

When adapting to an **existing product theme**: keep this structure; recolor using the product’s primary/bg/fonts — do not invent a new palette and do not drop the recipe.

---

## Stack

React 18 + `@heroui/react` v2 + Tailwind 3 + Framer Motion + `@iconify/react` (`solar:`)

---

## Rules

1. Dual-axis route + style before multi-file UI  
2. Max **4** source reads  
3. Prefer **clean_product** unless campaign landing or dense admin  
4. Read `case-studies/vault-otp.md` when user wants that feel  
5. Never invent icons; never claim clean_product / case-studies are missing without checking both path layouts  
6. Never put architecture notes in product UI  
