---
name: design-promax
description: >-
  Premium React UI via HeroUI Pro + efficient dual-axis router (route × style).
  Default style clean_product = Vault OTP case study (pill buttons, action cards,
  solar icons, gate cards). Surfaces A–H; max 4 source reads (3 core + 1 shell).
  Triggers: design-promax, HeroUI, Vault OTP style, those cards/buttons, route UI.
---

# Design ProMax

Real HeroUI sources. **Route × style. Cap 4 file reads.**  
**Case study:** [case-studies/vault-otp.md](case-studies/vault-otp.md) — the quality bar people ask for.

## Efficient protocol

```
1. keyword_index → surface.route          (ROUTE_REGISTRY.json)
2. style → clean_product by default       (STYLE_PRESETS.json)
   H wallet/dapp → clean_product|trust_green only
3. efficient_merge:
   core = action-card + authentication App + security-settings  (3)
   + at most ONE shell App from shell_apps if needed (chat/sidebar/table/…)
   H vault → core only (3). Cap 4.
4. Apply button_matrix + compose_recipe from style (+ vault-otp case study)
5. Build. Human copy. No eng footers.
```

| File | Role |
|------|------|
| [ROUTE_REGISTRY.json](ROUTE_REGISTRY.json) | What screen |
| [STYLE_PRESETS.json](STYLE_PRESETS.json) | Feel + **button_matrix** + flavors |
| [case-studies/vault-otp.md](case-studies/vault-otp.md) | Full product reference |
| [ARCHITECTURE.md](ARCHITECTURE.md) | Harness contract |

### Button matrix (Vault OTP)

| Role | Props |
|------|--------|
| Primary | `color="primary" radius="full"` + solar bold icon |
| Secondary | `variant="bordered" radius="full" size="sm"` + linear icon |
| Danger | `color="danger" variant="flat" radius="full" size="sm"` |
| Warning | `color="warning" radius="full"` |
| Ghost | `variant="light" radius="full" size="sm"` |

### Flavors (same family)

| Preset | Use |
|--------|-----|
| **clean_product** | Default product / dapp (Vault OTP) |
| **clean_product_compact** | Mobile-tight; skip feature row |
| **trust_green** | Finance/security; force green primary |
| **marketing_campaign** | Landings only |
| **dense_admin** | Tables / analytics |
| **chat_soft** | Product chat (not purple marketing) |

### Compose recipe (clean_product)

Top bar → chips → hero → **3 ActionCards** → one gate card → form card → list cards → stop.

---

## Stack

React 18 + `@heroui/react` v2 + Tailwind 3 + Framer Motion + `@iconify/react` (`solar:`)

---

## Rules

1. Dual-axis route + style before multi-file UI  
2. Max **4** source reads (efficient merge)  
3. Pill CTAs + action cards by default  
4. Read vault-otp case study when user wants “that feel”  
5. Never invent icons; never eng jargon in UI  
