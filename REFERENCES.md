# References (designeer.xyz)

designeer.xyz is a curated catalogue of 422 interface tools. Machine-readable list: https://www.designeer.xyz/llms-full.txt (one line per tool).

**Rule:** fetch that file and read ONE section when stuck; never browse the site. HeroUI (`sources/`) stays the primitive layer; nothing here replaces it.

## Inspiration by surface

| Surface | Galleries |
|---------|-----------|
| A landing | Saaspo (saaspo.com), Supahero (supahero.io), Sections.wtf, navbar.design, footer.design, cta.gallery |
| B auth / G forms | Mobbin (mobbin.com), UX Archive |
| C app / F data / workstation | Mobbin, Screenlane (screenlane.com), Details (details.so), 60fps (60fps.design) |
| Dark UIs | Sombra (sombra.design), Dark Mode Design |
| Micro-interactions | Detail Design (detail.design), Devouring Details |

## Icons

| Tool | Use |
|------|-----|
| Iconify (iconify.design) | The umbrella; `solar:` is our primary family |
| Lucide, Phosphor, HugeIcons | Fallbacks via iconify |
| Simple Icons | Brand logos only |

Rule: verify names at icon-sets.iconify.design; never invent them.

## Type

| Tool | Use |
|------|-----|
| Fontshare | Free commercial faces |
| Fontsource | Self-host via npm |
| Departure Mono | Terminal mono for workstation_dense rails |
| Utopia | Fluid clamp scale for landing h1 |
| Wakamai Fondue | Check font features (e.g. `tnum`) |

## Color

| Tool | Use |
|------|-----|
| OKLCH picker (oklch.com) | Pick hues in OKLCH |
| Huetone, Ramps | Build a brand ramp |
| APCA / Color.review | Contrast checks |

Rule: any custom primary must pass APCA Lc 60 for body text on its background.

## Motion

| Tool | Use |
|------|-----|
| Motion (motion.dev) | Already in the stack as framer-motion |
| Easing Wizard | Custom springs / easings |
| NumberFlow (number-flow.barvian.me) | Rolling KPI numbers |
| Morphrig / morphicons | Icon morphing, only if the user asks |

## Supplement components (allowed atoms only)

| Package | Atom |
|---------|------|
| NumberFlow | Rolling numbers |
| Motion Primitives | Text and reveal effects on a landing hero |
| Rare UI | OTP input, animated counter, scroll progress |
| Evil Charts | Animated charts if the Recharts stock look is rejected |

Rule: one supplement max per screen; it must adopt HeroUI tokens (`bg-content1`, `text-default-500`) so it does not look pasted in.

## Do not

- Do not add shadcn / Base UI / Radix side by side with HeroUI in the same project.
- Do not pull a whole template.
- Do not cite a gallery screenshot as a source file.
