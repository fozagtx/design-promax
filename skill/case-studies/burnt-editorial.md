# Design profile: Burnt Editorial

**Status:** Reusable profile captured from a finished product session.  
**Use when:** The user asks for the "Cleat look", "Burnt Editorial", a restrained black-and-white product site with burnt orange, or wants a public landing and work surface to feel like one product.  
**Best for:** Fintech, privacy, infrastructure, B2B, and trust-heavy products that need clarity without looking corporate or generic.

---

## Direction

Quiet editorial typography, black-and-white foundations, one burnt-orange signal, scenic photography, and compact dark product mockups.

The memorable combination is:

1. Plainspoken copy
2. Large editorial type
3. Burnt orange used sparingly
4. Real product UI inside photographic stages
5. One visual system across landing and application routes

This is not Glass, dashboard blue, crypto neon, or black-and-white brutalism.

---

## Palette

Use semantic tokens. Do not scatter these values through components.

### Light

```css
--bg: #ffffff;
--fg: #111111;
--card: #f4f4f4;
--muted: #ececec;
--muted-fg: #525252;
--primary: #111111;
--primary-fg: #ffffff;
--border: #11111122;
--brand: #c24d0e;
--brand-light: #d25611;
--highlight: #d256111a;
```

### Dark

```css
--bg: #0a0a0a;
--fg: #f5f5f5;
--card: #161616;
--muted: #222222;
--muted-fg: #a3a3a3;
--primary: #f5f5f5;
--primary-fg: #0a0a0a;
--border: #ffffff22;
--brand: #e8804a;
--highlight: #d2561126;
```

### Product mockups

```css
--preview-card: #161616;
--preview-sidebar: #0f0f0f;
--preview-fg: #ffffff;
--preview-muted: #a3a3a3;
--preview-accent: #e8804a;
--preview-divider: #ffffff18;
```

Use burnt orange on the logo, one phrase in the hero, active states, and the decisive result. Do not color every button, heading, or icon orange.

---

## Type

- Sans: **Geist**
- Mono: **IBM Plex Mono**
- Hero: regular weight, `line-height: 0.98`, tight `-0.5px` tracking, balanced wrapping
- Section titles: medium weight, tight tracking
- Mono only for eyebrows, invoice IDs, hashes, dates, and tabular numbers
- Never turn the entire interface into mono

The hero should feel editorial, not like a SaaS template. Avoid gradient-clipped text and oversized bold geometric type.

---

## Route system

### Critical rule

Apply the profile at the app root. The landing and work routes must share:

- Theme provider
- Type
- Palette
- Logo treatment
- Buttons
- Cards
- Table styling
- Light/dark behavior

Never apply this profile only to `/` while leaving the application in Glass, HeroUI defaults, or another skin. That creates a camouflaged landing and a split product.

### Landing order

```text
Fixed header
Split hero
Animated how-it-works bento
Sticky feature stack
Questions
Compact footer
```

### Work surface

```text
Fixed header
Same brand and theme controls
Short page framing
Actual task cards or tables
No marketing feature blocks
```

The work surface can be denser, but it cannot become a different visual identity.

---

## Landing recipe

### Header

- 56px fixed header
- Hairline border
- Logo left
- Three human nav links
- Icon-only sun/moon switch
- One compact primary CTA
- No wallet Connect on the public landing

### Hero

Use a two-column composition on desktop:

- Left: one job-line headline, one short clarifier, two CTAs
- Right: one product mockup inside a scenic photographic stage
- Stack copy before mockup on mobile

Do not center everything by default. The left-copy/right-product split makes the page feel intentional and immediately explains the product.

### How-it-works bento

Place it directly after the hero. Use three steps:

1. Select the item
2. Run the private or protected operation
3. Return the narrow answer

Each card needs a small animated visual that demonstrates causality, not decorative motion:

- Selection moves between rows
- Data packets travel into a sealed check
- Status changes from checking to the result

Keep the copy short enough that the animated visual does the explaining.

### Feature stack

- Sticky stacked cards
- 20px radius
- Border plus restrained shadow only on the stacked marketing cards
- Text on one side, scenic photo with live mockup on the other
- Each card adds a new fact; no repeated value proposition

### Photography

- Use landscape, harbor, forest, ocean, or other atmospheric scenes
- Keep photos in color
- Add a dark scrim so mockups read clearly
- Photography supplies atmosphere; product mockups supply proof

---

## Components

### Buttons

- Primary: black in light mode, white in dark mode
- Secondary: bordered, background-matched
- Pill or soft-pill shape
- One visually dominant CTA per region
- Correct foreground token is mandatory; inherited link color must not break contrast

### Cards

- Marketing cards: 20px radius
- Product mockups: 10-12px radius
- Work cards: 20px radius, flat token surface, hairline border
- Avoid excessive nested cards

### Tables

- Flat semantic table inside one bordered shell
- Mono uppercase column labels
- Tabular numbers
- Hairline row dividers
- Burnt-orange wash only for the selected row

---

## Motion

Motion explains state and sequence.

- Logo: quick drop, slight turn, settle on each route visit
- Bento: animate selection, sealing, and answer states
- Existing product mockup may cycle through sealed → checking → answer
- Smooth scrolling: Lenis with anchor offset
- Animate only `transform` and `opacity`
- Use spring-like or smooth custom cubic-bezier curves
- Honor `prefers-reduced-motion`; disable looping and entrance motion

Do not animate every heading on scroll. Do not add parallax, marquees, or motion wallpaper.

---

## Copy

Lead with the user's job or pain in one sentence. Then remove every line that merely repeats it.

Use:

- Short declarative sentences
- Concrete nouns
- Human verbs
- One new fact per section

Avoid:

- Architecture language in product UI
- Em dashes
- "It's not X, it's Y"
- TED-talk framing
- Repeating "private", "confidential", or the full job line in every card
- Numbered engineering labels unless they help the user follow a real sequence

When the copy feels weak, cut words before adding decoration.

---

## Hard bans

- Landing-only redesign with an unchanged old application
- Glass blur as a second skin
- Purple or blue gradients
- Grayscale photography
- Theme names or network chips in navigation
- Multiple Connect buttons
- Fake product results
- Huge centered hero followed by a second paragraph that says the same thing
- Generic icon grids
- Attack or test harnesses on normal user screens
- A third visual language for the desk

---

## Completion check

- [ ] Light is the default; dark mode is equally designed
- [ ] One root theme controls every route
- [ ] Burnt orange appears as a signal, not wallpaper
- [ ] Hero is copy-left and product-right on desktop
- [ ] Animated bento sits immediately after the hero
- [ ] Every later section adds a new fact
- [ ] Landing and desk share chrome, cards, type, and controls
- [ ] Theme switch is icon-only and accessible
- [ ] Logo animation replays on route visits
- [ ] All motion respects reduced-motion
- [ ] Primary CTA contrast passes in both themes
- [ ] Mobile, tablet, and desktop layouts work
