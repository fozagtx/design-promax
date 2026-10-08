# Case study: Workstation dense (trading desk / ops console)

**Status:** Canonical recipe for Design ProMax **`workstation_dense`** style.
**Surface:** F (`data_charts` / `workstation` route)
**Style:** `workstation_dense` (locked for this surface)
**Reference (described in words):** "Sub-Millisecond Order Flow & FPGA Execution Matrix" screenshot.

When the user says trading desk, order ledger, order book, terminal, ops console, audit trail, monitoring, exchange, or workstation -> **replay this case study**, not the Vault OTP card stack.

---

## What the reference looks like

| Region | What it is |
|--------|------------|
| **Icon rail** | Dark vertical rail `w-14`, `bg-foreground text-background`, 6 solar icons stacked, avatar pinned at the bottom |
| **Nav column** | Light `w-56` column, two groups: ALGORITHMIC STRATEGIES (each row has a right-aligned mono msg rate), EXECUTION VENUES (each row has a right-aligned mono latency) |
| **Header strip** | Title + one-line DMA subtitle; right side: `DIRECT FIBER: LIVE` success chip with pulsing dot, `US Cash Session` bordered button, `Kill All Orders` danger bordered button |
| **KPI strip** | One card, 4 stats in a row: FILL RATIO 99.42% (success), AVG WIRE LATENCY 14.20 us (primary), IMPACT SLIPPAGE -0.014 bps (success), NOTIONAL MATCHED $482.40M |
| **Ledger table** | Compact table: ORDER ID (mono, primary), SYMBOL (bold), STRATEGY (muted), SIDE/QTY (BUY green / SELL red), PRICE, LATENCY us, STATUS chip (FILLED success / ROUTED warning / PARTIAL secondary / ACK primary). First row selected with primary tint |
| **Inspector card** | Selected order id + PASSIVE MAKER chip, filled summary, Alpha Edge success chip, bid/ask depth bars (bid success-200, ask danger-200) with dashed midline and BEST BID / BEST ASK captions, MICROSECOND EXECUTION TIMELINE header with TOTAL ELAPSED, 5 rows T+0.00 us TRIGGER ... T+14.20 us VERIFIED, footer: Replay Tick Book (flat primary) + Export Audit Trail (bordered) |
| **Hardware card** | Small card bottom-left of the rail area with a `0.28 us` chip |

---

## Layout recipe

```
h-screen, full bleed (no max-w), flex row:
  icon_rail    w-14 bg-foreground text-background, 6 solar icons, avatar bottom
  nav_column   w-56 border-r border-default-200, grouped labels
               text-tiny uppercase tracking-wider text-default-400,
               rows with right-aligned mono rate
  main         flex-1 overflow-auto, gap-3, p-4:
    header_strip        h1 text-medium font-semibold + subtitle text-tiny text-default-500
                        right: live Chip success flat sm (pulsing dot),
                        session Button bordered sm radius=sm,
                        kill switch Button danger bordered sm radius=sm
    kpi_strip           Card border-small border-default-200 shadow-none,
                        4 stats: label text-tiny uppercase tracking-wider
                        text-default-400, value text-medium font-semibold
                        font-mono tabular-nums, semantic color
    grid lg:grid-cols-[1fr_380px] gap-3:
      ledger_table      Table isCompact removeWrapper; header text-tiny
                        uppercase text-default-400; id font-mono text-primary;
                        BUY text-success / SELL text-danger font-semibold;
                        status Chip size=sm variant=flat;
                        selected row bg-primary-50 border-l-2 border-primary;
                        hover bg-default-50
      inspector_panel   Card: title font-mono + Chip; two-line summary;
                        bid/ask mini bars (success-200 / danger-200, dashed
                        center line); timeline rows (notification-item
                        pattern): T+x.xx us font-mono text-primary, title
                        font-semibold, body text-tiny text-default-500,
                        right Chip size=sm variant=bordered; footer two
                        Buttons size=sm radius=sm (flat primary + bordered)
```

Radius: `rounded-medium` cards, `radius="sm"` buttons, **never** `radius="full"`.
Gap: `gap-3` everywhere. Everything `size="sm"`.

---

## Which sources to open (must_read = 4 files)

1. `Application/tables (1)__App.tsx` - Table chrome, `isCompact`, Status chip pattern, row selection.
2. `Charts/KPI-stats (9)__App.tsx` - The stat cell: uppercase tiny label + semibold value + semantic delta.
3. `Application/sidebars (19)__App.tsx` - Rail + sidebar item structure for the icon rail and nav column.
4. `Application/cards (20)__notification-item.tsx` - Timeline row pattern for the inspector (mono stamp + title + one-line body + right chip).

Open `Application/tables (1)__Status.tsx` or `Charts/Bars-and-Circles (10)__App.tsx` only if a status atom or depth bar is still missing.

---

## Token sheet

| Use | Classes |
|-----|---------|
| Rail | `w-14 bg-foreground text-background` |
| Nav group label | `text-tiny uppercase tracking-wider text-default-400` |
| Nav row rate | `ml-auto font-mono text-tiny text-default-500` |
| KPI label | `text-tiny uppercase tracking-wider text-default-400` |
| KPI value | `text-medium font-semibold font-mono tabular-nums` + `text-success` / `text-primary` / `text-danger` |
| Table header | `text-tiny uppercase text-default-400` |
| Order id | `font-mono text-primary` |
| Side | `font-semibold` + `text-success` (BUY) / `text-danger` (SELL) |
| Status | `Chip size="sm" variant="flat"` + fixed vocabulary color |
| Selected row | `bg-primary-50 border-l-2 border-primary` |
| Row hover | `bg-default-50` |
| Timeline stamp | `font-mono text-primary text-tiny` |
| Buttons | `size="sm" radius="sm"`, primary `variant="flat"`, secondary `variant="bordered"`, danger `color="danger" variant="bordered"` |

---

## Per theme

- **Default** - as described above; light zinc background, dark rail.
- **Brutalism** - `border-2 border-foreground`, `rounded-none` on everything, Share Tech Mono everywhere, chips become bordered squares.
- **Glass** - panels `bg-content1/60 backdrop-blur` over a dark gradient backdrop; rail `bg-black/40`.
- **Mouve** - selected row and primary chips use the mauve accent; inspector card gets `shadow-[var(--mouve-raised-shadow)]`.

---

## States

- Empty ledger: single row "No orders this session".
- Feed offline: header live chip turns `color="danger"` "Feed offline"; kill switch stays visible.
- No selection: inspector shows "Select an order" in `text-default-400`.
- Loading: Skeleton rows matching table row height, never a spinner over the whole screen.

---

## Do not

- No hero, no 3 action cards, no feature row.
- No pills (`radius="full"`) anywhere on this surface.
- No spinner overlay over the whole screen.
- No invented KPIs: use real data or clearly labelled sample data with a "Sample data" chip.
- No fake green "all systems operational" chips without a data source.
- No marketing copy, no footer, no em dashes.

---

## Quick decision

User says ledger / desk / terminal / console / monitoring / order book / audit -> this preset (`F.workstation` + `workstation_dense`). If they also want a public landing, the `landing-and-desk.md` split still applies: landing `marketing_campaign`, desk `workstation_dense`.
