---
name: design-promax
description: >-
  Premium React UI via HeroUI Pro real sources + machine route registry.
  MUST load ROUTE_REGISTRY.json first to pick 2–4 template files by intent
  (landing, auth, dashboard, chat, commerce, charts, forms, wallet/dapp).
  Prevents random browsing of 400+ files. Use for any polished React/UI work.
  Triggers: design-promax, HeroUI, route templates, which component, build UI.
---

# Design ProMax

Real HeroUI Pro sources. **Zero invented classNames.**  
**Harness architecture:** [ARCHITECTURE.md](ARCHITECTURE.md)

## Protocol (mandatory)

```
1. Read ROUTE_REGISTRY.json
2. Match user intent → surface (A–H) + route id
   - Use keyword_index first; else surfaces.*.keywords
3. Read ONLY that route’s primary[] files under sources/
   - Cap: protocol.max_primary_reads (4)
4. Optionally secondary[] if an atom is missing
5. Adapt patterns; enforce quality_bar[]
6. Never dump FILE_INDEX or eng architecture into the product UI
```

**Skip only** for one-line CSS tweaks.

| File | Role |
|------|------|
| [ROUTE_REGISTRY.json](ROUTE_REGISTRY.json) | **Source of truth** for routes (machine) |
| [ROUTING.md](ROUTING.md) | Human detail / examples |
| [ARCHITECTURE.md](ARCHITECTURE.md) | Harness contract |
| [sources/FILE_INDEX.md](sources/FILE_INDEX.md) | Full inventory (do not browse first) |

### Quick keyword → route

| Intent | Route key |
|--------|-----------|
| landing / hero | `A.landing` |
| pricing | `A.pricing` |
| login / signup | `B.login_signup` |
| unlock / connect gate | `B.unlock_or_connect_gate` |
| dashboard / sidebar | `C.sidebar_app` |
| settings | `C.settings` |
| chat / AI | `D.full_chat` |
| shop / products | `E.product_grid` |
| checkout | `E.checkout` |
| KPI / charts / table | `F.*` |
| wizard / onboarding | `G.multistep` |
| wallet / vault / dapp / OTP | `H.vault_or_dapp_shell` |

Paths in the registry are relative to `sources/`.

---

## Stack

**React 18 + `@heroui/react` v2 + Tailwind 3 + Framer Motion + `@iconify/react`**

```js
import { Button, Input, Card, Chip, Progress, cn, /* … */ } from "@heroui/react";
import { Icon } from "@iconify/react";
// icons: solar:… or gravity-ui:… (copy names from opened sources)
```

---

## Core patterns (from sources)

```js
"use client";
import React from "react";
import { cn } from "@heroui/react";

const X = React.forwardRef(({ className, children, ...props }, ref) => (
  <div ref={ref} className={cn("base", className)} {...props}>{children}</div>
));
X.displayName = "X";
export default X;
```

**Tokens:** `bg-content1`, `text-default-500/900`, `border-default-200`, `shadow-small`, `rounded-large` / `rounded-medium`, `text-small` / `text-tiny`  
**Icons:** only from opened sources (`solar:` / `gravity-ui:`)  
**Copy:** product language only — no ciphertext/Polybase/calldata footers

---

## Rules

1. Route via `ROUTE_REGISTRY.json` before multi-file UI  
2. Max ~4 primary source reads per screen  
3. `forwardRef` + `cn` + `displayName` for reusable pieces  
4. Never hallucinate icons / HeroUI APIs  
5. Never open entire category folders “to be safe”  
6. Surface **H** (wallet/dapp) is a **compose pack** — no Wallet/ folder  
