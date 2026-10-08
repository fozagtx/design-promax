# DESIGN.md

Design contract for this project. Written by design-promax. Agents read this first; do not re-ask the theme while this file exists.

## Theme
- HeroUI Pro theme: {Default | Brutalism | Glass | Mouve}
- data-theme: {light value} / {dark value}
- CSS: themes.css copied to {path}; set data-theme on <html>
- Style preset: {clean_product | marketing_campaign | workstation_dense | ...}
- Routes: {/ landing -> marketing_campaign, /desk -> clean_product, ...}

## Colors
- Primary: {hex or token}  Background: {token}  Foreground: {token}
- Semantic: success / warning / danger from HeroUI tokens; never raw Tailwind colors (bg-gray-100 etc.)
- Light and dark: both supported via data-theme; test every screen in both

## Typography
- Display: {family}  Body: {family}  Mono: {family}
- Scale: {from THEMES.json themes[id].typography.scale}
- Numbers: tabular-nums in any column; mono for ids, prices, latencies, hashes

## Spacing and shape
- Page: {themes[id].spacing.page}  Card: {spacing.card}  Gap: {spacing.gap}
- Radius: {spacing.radius}
- Borders and shadows: border-small border-default-200 shadow-small (theme may override)

## Icons
- @iconify/react. Primary family: solar (bold / bold-duotone for tiles, linear for secondary). Fallback: lucide via iconify.
- Never invent icon names; copy from an opened source file or verify on icon-sets.iconify.design

## Component states
- hover: {states.hover}  pressed: {states.pressed}  focus: {states.focus}
- disabled: {states.disabled}  selected: {states.selected}
- Every list / table / form has empty, loading, error states as cards or rows (never a blank area)

## Motion
- hover {motion.hover}; enter {motion.enter}; exit {motion.exit}; press {motion.press}
- Open is slower than close. Respect prefers-reduced-motion ({motion.reduced_motion}).
- Rolling numbers: NumberFlow or framer-motion animate on KPI changes, 300ms max

## Copy
- Human product language. No eng jargon (ciphertext, calldata, RPC) in UI.
- No em dashes. Sentence case. Buttons are verbs.

## Hard bans
- Second Connect button; logo subtitle; gradient-clipped hero text; <br /> that leaves three leftover words
- Fake metrics, fake ACME footer, invented cards, radius-full in dense surfaces
