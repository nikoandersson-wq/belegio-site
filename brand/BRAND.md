# Bonvio — Brandbook

> Reference file for AI/agent content generation. Read this **before** writing any post,
> caption, or image. If a draft conflicts with anything here, the brandbook wins.
> Derived from the live site (bonvio.eu / index.html).

---

## 1. What Bonvio is (use for factual accuracy)

Receipt management by email. Photograph a receipt, email it to your personal Bonvio
address, and it is stored, sorted, and searchable forever.

| Fact | Value |
|---|---|
| Price | €39.99 / year founding price · 30 days free first. Rises to €49.99 from Jan 2027 — anyone who starts before then keeps €39.99 for life. |
| How it works | Photo → email → auto-extract (date, vendor, amount, VAT) → confirmation |
| Retrieval | email `EXPORT …` → get a secure download link with a ZIP + accountant-ready CSV |
| Categorisation | hashtags in the subject line (e.g. `#steuer`, `#auto`) |
| Storage | encrypted, EU servers in Frankfurt, GDPR-compliant |
| Retention | 10 years — longer than §132 BAO (AT, 7 yrs) / §147 AO (DE, 8 yrs) require |
| Audience | private individuals · freelancers (Selbständige) · small businesses |
| Manual | one hidden page — `bonvio.eu/anleitung.html`, DE/EN × solo/team/admin. **Every product email links to it.** Not in the nav, not indexed, no sign-in. (2026-08-02) |
| Origin | Made in Vienna |
| **Status** | **Live and selling.** CTA is "Try free for 30 days" → real Stripe checkout. There is no quota and no waitlist. |

**Never claim:** an app, a login, a password, or any software to install — the whole point
is that there is none. Do not invent features (no mobile app, no dashboard, no integrations).

---

## 2. Voice & tone

Calm, plain, confident. Quietly Austrian. Anti-hype. The product is deliberately small and
says so — that restraint *is* the brand.

**Do**
- Short declarative sentences. Triads land well: *"Foto machen. E-Mail senden. Fertig."*
- Define by negation: *"Keine App. Kein Login. Kein Passwort."*
- Lead with the real pain (lost receipts, warranty gone, tax left unclaimed, accountant billing for sorting).
- Be concrete and Austrian: §132 BAO, DSGVO, Steuerausgleich, Werbungskosten, Wien, Frankfurt.
- Trust-forward: no ads, no tracking, no data sharing — say it plainly.

**Don't**
- No exclamation spam, no hype words ("revolutionary", "game-changer", "effortless magic").
- No emoji clutter. At most one, rarely. The site uses none.
- No jargon, no growth-hacker tone, no fake urgency ("act now", countdowns). The founding
  price *does* rise in January 2027 — that's real, so state it plainly (a fact, a date) rather
  than dramatizing it (no countdown timers, no "hurry").

**Sample on-brand lines**
- DE: *"Im März suchst du, was du im Januar weggeschmissen hast."*
- DE: *"Schluss mit dem Schuhkarton."*
- EN: *"Receipts disappear. Exactly when you need them."*

**Commands are shown filled in, never as a grammar (2026-08-02).** Bonvio is operated by writing a
subject line, so the copy that teaches a command is product surface, not documentation. Print a line
the reader copies and edits in place — never placeholders, square brackets, or `a|b|c` lists.

| | |
|---|---|
| Do | `ADD max.mustermann@firma.at Max Mustermann` · EN: `ADD tom.doe@company.com Tom Doe` |
| Don't | `ADD email Vor- Nachname [#Abteilung]` |

Optional parts and enumerations move out of the command into a plain sentence underneath ("Die
Abteilung ist optional. Rollen: master, secretary, finance, user."). Errors say *Beispiel:* / *Example:*,
never *Format:*. Reuse the two fixture identities above everywhere — a reader who meets Max Mustermann
on the guide page and again in the welcome mail is reading one product, not three documents.

---

## 3. Language

- **German-first**, Austrian register (`de-AT`), informal **"du"**. English is the secondary variant.
- Produce **DE primary + EN variant** for every post.
- Currency German style: **€39,99** (comma). English: **€39.99**.

---

## 4. Colour palette

**Superseded 2026-08-26 — the dark rebrand.** The light, green-on-near-white system below §4.3
was correct for what Bonvio was: a quiet archive tool. It is not correct for what Bonvio is
selling now. It read, in the founder's words, "outdated / AI-made blur." The diagnosis was
specific and measurable, not a matter of taste:

- The page separated its sections with **flat bands one step apart in value**. Measured, that
  step was **1.12:1** — below the threshold of perception. Sixteen sections stacked to one flat
  slab.
- Everything began at the same left margin, every section was the same full-width shape, and the
  same eyebrow-plus-rule and `01 / 02 / 03` markers repeated down the page whether or not the
  content was a sequence. That combination is the house style of generated landing pages.

### 4.1 The ground and the elevation ramp

| Role | Hex | Use |
|---|---|---|
| Ground | `#0D2119` | the page. Deep on purpose — see 4.2. |
| Elevation 1 | `#163024` | cards, panels, the nav pill |
| Elevation 2 | `#1E3E2F` | cards that sit on top of Elevation 1; keycaps |
| Bone (ink on dark) | `#F2F1E8` | body and headlines on the ground |
| Muted | `rgba(242,241,232,0.58)` | secondary text |
| Hairline | `rgba(242,241,232,0.10)` | rules, card borders |
| **Lime (action)** | `#C7F04F` | the CTA, the address, one accent word per headline |
| **Mint (confirmation)** | `#7FE0AE` | saved / recognised / success — **only** these |
| **Alert red (semantic only)** | `#B3261E` | needs-review, payment mismatch — never decorative |

**Two accents, two jobs, and they never swap.** Lime means *do this*. Mint means *this worked*.
Before the split, lime carried both, and an accent doing two jobs stops meaning either. It is
also what made the page shout: lime measured **13.63:1** against the old ground, roughly double
what any text needs.

### 4.2 Depth comes from light, never from a lighter fill

This is the rule the old system got wrong, and it is not negotiable.

**At the dark end of the scale, value steps cannot separate surfaces.** Ground to Elevation 1 is
1.19:1; Elevation 1 to Elevation 2 is 1.20:1. Every step available to us is under 1.3:1. Painting
a slightly lighter rectangle will never read as a distinct surface, no matter how many times you
try. So a surface is not defined by its fill. **A surface is defined by light falling on it:**

```css
/* every raised surface, without exception */
border: 1px solid rgba(242,241,232,0.10);
border-radius: 18px;
box-shadow: inset 0 1px 0 rgba(255,255,255,0.07),   /* the lit top edge */
            0 28px 60px -20px rgba(0,0,0,0.75);      /* the shadow it casts */
```

The inset top highlight is the load-bearing part: it is what the eye reads as "this is in front."
Delete it and the card disappears into the ground again.

**The page's brightness comes from atmosphere, not from raising the ground.** Two wide, soft
radial glows (lime top-left, mint top-right, both under 0.14 alpha) and a 64px grid masked to
fade out by 82%. The ground stays deep so the lime keeps its punch; the light sits on top of it.
One glow per moment — hero, the pull-quote, the price, the closing line. Never a gradient mesh.

### 4.3 Email is dark too — and what that costs

**Decided 2026-08-27.** Client email runs the same dark palette as the site. Two mechanics are
load-bearing and must not be removed:

- **Outlook ignores `body { background }`** (it renders through Word). The ground is painted by a
  full-width table carrying a `bgcolor` **attribute** as well as the CSS. Without it the mail
  arrives white behind bone text.
- **Clients auto-invert mail they judge to be light.** `<meta name="color-scheme" content="dark">`
  plus `:root { color-scheme: dark }` tells Gmail and Apple Mail it is already dark.

**Every colour in an email is a solid hex.** `rgba()` is dropped by several clients, and on a dark
ground a dropped colour is invisible text, not a near miss. The email tokens are ground `#0D2119`,
card `#163024`, card-2 `#1E3E2F`, hairline `#24412F`, ink `#F2F1E8`, muted `#9DB0A3` (7.4:1), dim
`#7C8C81` (4.8:1), and red `#E8776C` — the light-ground red is unreadable here.

**`box-shadow` does not render in Outlook**, so the site's elevation becomes a fill plus a
hairline. Same intent, mechanics the medium allows.

### 4.3a The rule for any light ground that remains

Print, and anything that must survive a printer, still lands light — `anleitung.html` carries a
print stylesheet that flips the whole document back. Where that happens the accents do not survive
as text:

| | as text on light | as a fill behind `#0D2119` text |
|---|---|---|
| Lime `#C7F04F` | **1.20:1 — forbidden** | 12.82:1 ✓ |
| Mint `#7FE0AE` | **1.46:1 — forbidden** | 10.55:1 ✓ |
| Deep green `#0D2119` | 15.40:1 ✓ | — |

So: **on dark, lime is a colour you write in. On light, lime is a colour you sit on.** On a light
ground the ink is the deep green and lime appears only as a fill under near-black text. This is
what caught two real bugs in the welcome email when it went dark: the address pill and the CTA
block became lime fills while their text was still `#FFFFFF` — 1.4:1.

### 4.3b Every text colour is measured — and none of them is an `opacity`

The palette was right and the page still failed. Two mechanics did it, and both are easy to
reintroduce, so they are rules now.

**1. Never dim text with `opacity`, and never with a low alpha.** Dimming reads as a design
choice; it is really a contrast cut, and it compounds — an `opacity:0.55` span inside a
`rgba(bone,0.42)` parent lands at 2.6:1. On the deep-green ground the maths is blunt:

| bone alpha | on `#0D2119` | on `#163024` | on `#1E3E2F` | |
|---|---|---|---|---|
| 0.32 – 0.50 | 2.70 – 4.65 | 2.61 – 4.26 | 2.45 – 3.87 | **all fail** |
| 0.58 | 5.81 | 5.24 | 4.64 | the floor |
| **0.62 — `--muted-2`** | 6.42 | 5.77 | 5.05 | labels, meta, quiet rows |
| **0.72 — `--muted`** | 8.23 | 7.21 | 6.23 | secondary body copy |
| **1.00 — `--bone`** | 14.83 | 12.50 | 10.38 | primary |

Anything below 0.58 fails on some surface, so **there are three text values and no fourth.**
A one-off alpha invented for a single span is the bug, not the fix. On the light ground the
legal pages keep, the same rule gives ink `#14171A` at **0.68** (5.8–6.1:1).

**2. Text on a lime or mint fill has exactly two values.** Both are dark:

| on lime `#C7F04F` / mint `#7FE0AE` | | |
|---|---|---|
| `#0D2119` | 12.82:1 / 10.55:1 | primary — price, button legend, list |
| `#364E25` | 7.04:1 | secondary — captions, fine print |
| `#FFFFFF` | **1.31:1 — invisible** | never |

White on lime is the one that actually shipped: `.btn span { color:#FFFFFF !important }` was
correct when the button was bottle green, and survived the swap to a lime fill as an unreadable
button legend in the receipt and export emails — the two most-sent mails in the product. When a
fill changes, the `!important` that defends its text is the first thing to re-check.

**Red on dark is `#E8776C`, not `#B3261E`.** The light-ground red reads 2.57:1 on the ground —
and it is only ever used to say *check this receipt*, so it is the one colour that must not be
missable.

**How to re-check.** Contrast is not eyeballed here. Render the page or the email headless, walk
every element with its own text, composite the real background up the ancestor chain, and assert
4.5:1 (3:1 for ≥24px or ≥18.66px bold). The site's eight pages and all sixteen client email
variants pass at both desktop and mobile widths, in German and English. Re-run it after any
palette change — that is what caught all of this.

### 4.4 History — kept because it is still true

The gold retirement (2026-07-21) and the proportion rule that came with it stand: Bonvio is not
a heraldic brand, and a colour that touches everything stops reading as an accent. What changed
on 2026-08-26 is the ground, not that principle — lime still touches only the action, mint only
the confirmation.

**Lime is never a large field.** The price panel was a full lime slab — the loudest colour
moment on a 7,000px page, spent on a number rather than on the product, and the only large lime
area anywhere, so it read as an outlier rather than as part of a system. It is now `--elev-2` like
any other raised surface, with lime left on exactly two things: the price numeral and the button.
That is the rule the palette was always claiming — **lime marks the action** — applied to the one
place that broke it.

**Retired — do not reintroduce:** gold `#B8860B`, bronze `#7A5D1F`, wheat `#E0C896`,
cream `#F4F3F0`, warm hairline `#E2E0DB`, warm ink `#1A1814`, the light-ground red
`#B3261E` **as text on a dark ground**, and the previous light
ground `#F4F5F4` **as a marketing-site background** (it remains correct for email and print).

**No longer in force:** the "colour-off-by-default" rule and the "one green full stop" exception
(both 2026-08-01). They existed to stop green overwhelming a light page. On a dark ground the
problem inverts — the accent is what makes the page legible, so headline accent words are back.

---

## 5. Typography

**Two tiers, because a webfont cannot travel into an inbox or a PowerPoint.** This is the honest
version of the old "no webfonts anywhere" rule, which was written when the site and the email
looked the same. They no longer do.

### 5.1 Web tier — the marketing site only

```css
--display: "Bricolage Grotesque", "Helvetica Neue", Arial, sans-serif;  /* 700 / 800 */
--body:    "Hanken Grotesk", "Helvetica Neue", Arial, sans-serif;       /* 400 / 500 / 600 */
--mono:    "Martian Mono", ui-monospace, Consolas, monospace;           /* 400 / 500 / 600 */
```

- **Display** carries the page. Weight 700–800, tracking **-0.038 to -0.045em**, line-height
  0.93–0.98. It is set large and tight; at small sizes it loses its character and you should be
  using the body face instead.
- **Body** is the neutral partner. 15–21px, line-height 1.55–1.6.
- **Mono is for what the user literally types** — the Bonvio address, `#km 47`, `EXPORT Q1 2026`
  — plus small uppercase labels at 9.5–11px with 0.14–0.16em tracking. Never body text.

Loaded from Google Fonts, which is the one font host permitted. Every stack carries a real
fallback.

### 5.2 Document tier — email, decks, anything that leaves the browser

```css
--sans: Aptos, "Segoe UI", system-ui, -apple-system, "Helvetica Neue", Arial, sans-serif;
--mono: Consolas, "Aptos Mono", ui-monospace, "SF Mono", Menlo, monospace;
```

Unchanged, and for the original reason: **Aptos has been the Microsoft 365 default since 2024 and
Consolas ships with Office on Windows and Mac.** A deck matches the product with no embedding, no
subsetting, no font remapping. Email clients strip `@font-face` regardless, so an email that
asked for Bricolage would silently land somewhere unpredictable — the document tier lands on
Segoe UI or SF, which are the same neutral grotesque and degrade invisibly.

**The rule in one line:** if it renders in a browser we control, use the web tier; if it renders
in someone else's mail client, slide deck or printer, use the document tier.

**Forbidden everywhere:** Cormorant, **Inter**, **Courier New**, Roboto, Arial-as-display,
Open Sans, Fraunces.

---

## 5a. Motion

One idea, used twice, both opt-out:

- A **pulsing dot** on the "Antwort in ~3 Sekunden" badge — the product's promise is speed, so
  the one live element is the one that says so.
- A **slow 7s float** on the confirmation card and the export window, ~9px of travel.

Both sit behind `@media (prefers-reduced-motion: reduce)`. Nothing else moves. Scattered
micro-interactions are what make a page feel generated; one orchestrated idea does not.

---

## 5b. Composition — how to not look generated

The failure was structural, not chromatic. Hold to these:

- **Vary the section shape.** Hero is 2-up asymmetric, the three steps live inside one panel,
  export is 40/60, the FAQ is 30/70. If every section is a full-width band with a left-aligned
  heading, the page reads as generated no matter what colour it is.
- **Let things overlap and tilt.** Cards break their column, rotate a degree, and float above the
  section boundary. A perfect grid is the tell.
- **No eyebrow-plus-rule above every heading.** The headline is the section label.
- **Numbers only where there is a sequence.** `Schritt 1 / 2 / 3` is a sequence. A list of five
  grievances is not — that gets hairline rows.
- **Make the product a thing you can touch.** The address is a copy-field with a button, not a
  line of text. Commands are keycaps with a lit top edge and a 2px bottom shadow.
- **The persona section is the page's one diagonal.** It is a two-column grid whose card stack
  starts *above* the heading's top edge and steps down and to the right (`0 / 72 / 144px`), so the
  eye travels diagonally instead of straight across. Nothing is ever drawn over type — the
  asymmetry lives in the stagger, never in an overlap; an earlier version pulled the stack left
  over the heading and truncated it. The steps halve below 1180px and collapse below 780px, where
  a diagonal has no room to read. Spend this shape **once**: a second diagonal makes it a pattern,
  and a pattern is the thing this section exists to break.
- **A card is a surface; the text inside it still has a measure.** Capping the stack (640px) is
  what keeps a card from becoming an 800px slab holding 46 characters. Copy stays at 60ch or under,
  as `.lede` (52ch) and `.note` (44ch) already do.

**Two traps that broke real pages, both invisible above 360px:**

- **A grid column is `minmax(0,1fr)`, never `1fr`.** A grid item's automatic minimum is its
  *min-content*, so one unbreakable child — a nowrap command chip, an email address next to a
  fixed-width label — silently stretches the whole track and drags every element on the page past
  the viewport. `1fr` in a single-column mobile query is the usual culprit.
- **A layout set in an inline `style` attribute has no breakpoints.** The founder section kept a
  fixed `128px` photo column at every width because its grid lived inline, leaving 110px for the
  quote — narrower than one German compound. Nothing looked wrong, because `body` has
  `overflow-x: hidden` and simply cut the text off. Overriding it later costs an `!important`.

German fails first on both, every time: the compounds are longer, so English can look perfect while
German is clipped. **Test the narrowest phone (320px) in German before calling a layout done.**

---


## 6. Visual motifs (reuse these, don't invent new ones)

- **The B mark (2026-08-01, final form: drawn solid letterform).** The brand mark: a
  rounded-square squircle in `#1F4332` with a **hand-drawn solid "B"** filled in `#F4F5F4`,
  `fill-rule="evenodd"` (outer contour + two counters), geometry:
  `M21 17H34A5.5 5.5 0 0 1 39.5 22.5V25.5A5.5 5.5 0 0 1 34 31H36A7 7 0 0 1 43 38V40A7 7 0 0 1 36 47H21ZM27 22H32.5A2.25 2.25 0 0 1 32.5 26.5H27ZM27 31.5H32A5 5 0 0 1 37 36.5V37A5 5 0 0 1 32 42H27Z`
  A grotesque cap B on a 30/64 cap height: 6-unit stem, ~5-unit bars, **flat-sided bowls**
  (straight vertical runs between the arcs, not pure semicircles), lower bowl wider than upper,
  optically centred in the square. It's the nav logo and the favicon — the same asset, not two.

  Two constraints produced it, and both must hold for any future revision:
  1. **Drawn, never `<text>`.** SVG text renders in whatever font the device has (Aptos →
     Segoe → Helvetica → Arial). Aptos ships with MS 365, so most visitors — and every Mac —
     get a fallback, and the mark changes shape per visitor. A path is identical everywhere.
  2. **Solid, never monoline.** A stroked skeleton B looks thin and clever at 200 px and turns
     to mush at the 16 px favicon size. Weight is what survives scaling down.

  Same-day rejects, in order: checkmark-cut squircle (read as a generic tickbox), paper-plane
  glyph (still "an icon"; the plane belongs in the hero's send animation), font-rendered
  `<text>` B (constraint 1), monoline drawn B (constraint 2 — Niko: *"logo looks like shit tho
  old was btr"*). The final form is deliberately the **shape of the font B people liked, drawn
  properly** — the win was correctness, not novelty. Don't design a new mark per campaign, and
  don't relitigate without new user feedback: five rounds in one day is enough.
- **The green full stop (2026-08-01).** The wordmark is "Bonvio**.**" — with a green period.
  The same green period ends the hero's last word ("Fertig**.**" / "Done**.**", where it stamps
  in after the headline settles) and the closing CTA's final word. Nowhere else: it marks
  *completion*, so it only ends sentences that mean "done." Max three instances per page
  (wordmark, hero, closing). This is the ownable signature — a full stop as brand mark for a
  product whose entire promise is "…and then you're done."
- **Dot grid** background texture. Two densities: a near-invisible 4px paper-grain sitewide,
  and a visible, load-bearing 22px grid specifically behind the hero — the hero's grid is
  allowed to be seen; the sitewide one isn't.
- **Phone mockup (un-retired 2026-08-01; animated same evening)** — the hero visual. A
  stylized phone frame (`var(--ink)` bezel, no literal iOS status bar/clock) that **plays the
  product on loop**: compose screen (To/Subject, itemized receipt thumbnail, "Tippe auf
  Senden" hint) → Send pill pulses and the paper-plane glyph flies up → confirmation screen
  slides in (B-badge header, check pop, "Gespeichert.", extracted Händler/Datum/MwSt/Betrag
  rows cascading in) → back to compose. ~7-second cycle, CSS-only animation driven by a
  `data-phase` attribute, JS only flips the phase; runs only while on screen
  (IntersectionObserver). **The loop plays even under `prefers-reduced-motion`** — it's the
  product demo, not decoration — but softened: no flying plane, rows appear instantly, only
  the gentle screen crossfades remain. (The entrance choreography, period stamp, scroll
  staggers, and ink sweep DO stay off under reduced motion. Lesson from 2026-08-01: Niko's
  own device had the loop gated off and reported "there was no movement" — the demo must
  never be invisible to the founder or a prospect because of an OS accessibility setting.)
  The paper-plane glyph lives HERE, in the send animation — not in the logo
  (that experiment lasted an afternoon). History: this replaced a flat "floating proof cards"
  collage from earlier the same day — abstract floating fragments had no product to anchor to
  — which had itself replaced a static phone. If revisiting: start from the phone, and keep it
  *doing* something; a static mockup reads as a screenshot, the loop reads as the product.
- **The email button (2026-08-02) — in product email a link is a button, never a printed URL.**
  Niko: a naked `https://…` in an email "looks unpolished and old." Two weights, and never two
  filled buttons in one email: **filled** `#1F4332` / white text where the link is the point of the
  mail (the welcome's guide CTA, the "?" menu), **quiet** white fill + `rgba(20,23,26,0.16)`
  hairline + green text where another button already leads (receipt confirmation, export link, and
  every short reply's footer). Radius 9px, weight 600, 15.5px filled / 13.5px quiet.
  Two build constraints, both load-bearing:
  1. **One-cell `<table role="presentation">`, fill on the `<td>` (plus `bgcolor`), padding on the
     `<a>`.** Outlook renders HTML through Word, which drops padding on a bare `inline-block <a>` —
     the button silently degrades back into the naked link it exists to replace.
  2. **Single quotes inside `style="…"`.** A double quote around a multi-word font family closes the
     attribute; every declaration after it is dropped and the button renders as a default blue
     underlined link. This shipped once and was caught by looking, not by a test.

  The bare URL survives **only** in the plain-text alternative, where a button cannot exist.
- **Receipt paper** — *only* where an actual receipt is being depicted (a product screenshot,
  a proof card). It is a picture of the thing, never the chrome around it.
- **Numbered sections** `01`–`07` in a small green mono badge, with a **sentence-case** label —
  only where the content is genuinely sequential (a real 3-step process). Don't add numbering
  to a list just for the badge look.
- **Pill buttons**, fully rounded. Cards at radius 9–14px, hairline border, no shadow.
- **Trust strip:** *Aus Wien · Server in Deutschland · DSGVO & §132 BAO konform* — as a plain
  inline line.

**Retired 2026-07-21 — do not reintroduce:**
- **Wax seals / rotated stamps** (`DSGVO ✦ KONFORM`). Replaced by the plain trust line above.
- **Perforated / dashed borders** as page chrome. Use 1px solid hairlines and whitespace.
- **UPPERCASE + wide-tracked mono labels** as section headings.

**Retired 2026-08-01 — do not reintroduce:**
- **Full-bleed `--green-deep` panels as section backgrounds.** A solid colour fill over an
  entire section reads as a heavy, airless block regardless of which colour it is. Sections get
  a light `--surface` card with a hairline border; green stays on labels, marks, and buttons.
  (Exception: `.col-them` in the "old way vs. Bonvio" contrast block — that one dark panel is a
  deliberate rhetorical device, not decoration, and is more effective now that it's the only
  dark surface left on the page.)

---

## 7. Social post formulas

One blog post → 3 posts per platform per week. DE primary, EN variant.

| Day | Type | Shape | Link? |
|---|---|---|---|
| Mon | Announce post | hook (1–2 lines) + link | yes, blog URL |
| Wed | Standalone tip | one concrete tip from the post, value-first | no |
| Fri | Pain / question | a pain-point or question + soft trial CTA | trial |

**Length targets**
- **X:** ≤ 280 characters. 1 idea. 0–2 hashtags. Link on its own line.
- **Instagram:** front-load the hook in the first line (feed truncates ~125 chars). 5–10 hashtags at the end.
- Always pair with one image rendered from `social-template.html`.

---

## 8. Hashtag bank

- **DE:** `#Belege #Steuerausgleich #Steuertipp #Kleinunternehmer #Selbständig #Buchhaltung #Österreich #Wien #DSGVO #Quittungen #Steuerberater`
- **EN:** `#receipts #expenses #freelance #smallbusiness #bookkeeping #taxtips #Austria`

Pick a relevant subset (IG 5–10, X 0–2). Never dump the whole list.

---

## 9. Hard don'ts

- CTA is always **"Try free for 30 days"** (real Stripe checkout) — never "buy now" as a hard
  sell, and never a waitlist (there isn't one; the trial is real and immediate).
- No invented features, prices, or launch dates.
- No medical/legal/tax *advice* framed as guaranteed — tips are general; final word is the user's Steuerberater.
- No competitor names. No claims about other tools.
- No stock photos of generic "happy office people". Use the brand image template.

---

## 10. How to make an image (for the agent)

Use `social-template.html` in this folder. Either:

1. **URL params** (best for headless rendering): open
   `social-template.html?format=square&theme=cream&eyebrow=BONVIO%20·%20TIPP&headline=Your%20headline&sub=Optional%20sub&footer=bonvio.eu`
   then screenshot the `#canvas` element.
2. **Edit the `POST` object** at the top of the file, open in a browser, screenshot.

- `format`: `square` (1080×1080, IG), `portrait` (1080×1350, IG), `x` (1600×900, X).
- `theme`: `cream` (light) or `green` (dark). Alternate themes across the week for variety.
- Keep headlines short — 3 to 8 words. The template is built to your type scale; don't override fonts or colours.
