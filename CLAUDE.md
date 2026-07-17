# CLAUDE.md

## About This Repo

Design ProMax — HeroUI Pro **real sources** + **route registry** + **style presets**.  
Canonical product quality: **clean_product** / **Vault OTP** case study (GhostKeys-class UI).

## Files agents must find

Relative to skill root (after install, files are **also flattened** to skill root):

| What | Path |
|------|------|
| Entry | `SKILL.md` |
| Styles | `STYLE_PRESETS.json` → id **`clean_product`** |
| Routes | `ROUTE_REGISTRY.json` |
| Case study | `case-studies/vault-otp.md` |
| Sources | `sources/` or `skill/sources/` |

If any of those are missing, **reinstall** with `./install.sh ~/.claude/skills` — do not invent them.

## How Agents Use This

1. Load `SKILL.md`
2. Load `STYLE_PRESETS.json` + `ROUTE_REGISTRY.json`
3. Match intent → surface + route
4. Style → **`clean_product`** by default (or `trust_green` / `chat_soft` / …)
5. For “like Vault OTP / GhostKeys / those cards”: read **`case-studies/vault-otp.md`**
6. Efficient merge: 3 core files (+ 1 shell App max) = **4 reads**
7. Apply **button_matrix** (pill primary / bordered secondary / flat danger)
8. If user has an existing theme: **keep their colors**, keep clean_product **structure**

## Do not

- Claim `clean_product` or `case-studies/` do not exist without checking both root and `skill/` paths  
- Browse all of `sources/` randomly  
- Put eng jargon in product UI  
