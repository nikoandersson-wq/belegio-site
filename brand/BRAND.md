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
| Retention | 10 years — §132 BAO (Austria) / §147 AO (Germany) |
| Audience | private individuals · freelancers (Selbständige) · small businesses |
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

---

## 3. Language

- **German-first**, Austrian register (`de-AT`), informal **"du"**. English is the secondary variant.
- Produce **DE primary + EN variant** for every post.
- Currency German style: **€39,99** (comma). English: **€39.99**.

---

## 4. Colour palette

| Role | Hex | Use |
|---|---|---|
| Page (background) | `#F4F5F4` | default light background (cool, not cream) |
| Surface | `#FFFFFF` | cards, receipt surfaces |
| Ink (text) | `#14171A` | body + headlines on light |
| Deep bottle green (**the** accent) | `#1F4332` | buttons, totals, accent words, dark surfaces |
| Bottle green (darker) | `#0F2A1F` | large dark backgrounds, hover |
| Green tint | `rgba(31,67,50,0.08)` | pills, quiet emphasis, the total row |
| **Alert red (semantic only)** | `#B3261E` | needs-review, payment mismatch — **never decorative** |
| Muted text | `rgba(20,23,26,0.52)` | secondary text, labels |
| Hairline | `rgba(20,23,26,0.11)` | card borders, dividers |
| White on dark | `#FFFFFF` | text + CTA on green surfaces |

**The 2026-07-21 rebrand — why gold went.** The product read "luxury hotel / heritage bank"
rather than software. Three things caused it: **gold as a type colour** (`#E0C896` on green is a
heraldic pairing), **Courier New everywhere**, and decorative **wax seals + perforated borders**.
All three are retired.

**The rule is proportion, not hue.** Bottle green + gold + red is literally a coat of arms. The
escape: roughly **90 % white and near-black**, green as the single *structural* colour (it marks
what matters — the total, the action, the status), and red measured in pixels per screen.

**Retired — do not reintroduce:** gold `#B8860B`, bronze `#7A5D1F`, wheat `#E0C896`,
cream `#F4F3F0`, warm hairline `#E2E0DB`, warm ink `#1A1814`.

**Resolved 2026-08-01 — favicon/logo mismatch.** The rust-orange favicon (`#B4451F`) noted
below as an open inconsistency is gone. Nav mark and favicon are now the same asset (see
§6, "The B mark") in the one accent colour, `#1F4332`.

**The colour-off-by-default rule (2026-08-01).** Green had crept into places that aren't
structural: the hero headline's accent word, and two full-bleed `--green-deep` section
panels ("How it works," the closing CTA). Both read as "heavy," not premium. Fixed by
extending the proportion rule literally: **headline accent words are ink, not green** (weight
and italics carry the emphasis, not colour); and **no section background is a solid colour
fill any more** — those two panels are now `--surface` + hairline border, with green pulled
back to only the mono step-labels, the mark, and the button. A colour that touches
everything stops reading as an accent.

**One sanctioned exception (2026-08-01, evening): the green full stop.** Green may appear
in a headline on exactly one glyph — the full stop, and only where the sentence is a
*completion* ("Fertig." / "Done." / the closing CTA's last word). The full stop is the product
promise, so it's structural, not decorative. Words stay ink. See §6.

---

## 5. Typography

**Two roles, two stacks — and both ship with Microsoft 365** (2026-07-21):

```css
--sans: Aptos, "Segoe UI", system-ui, -apple-system, "Helvetica Neue", Arial, sans-serif;
--mono: Consolas, "Aptos Mono", ui-monospace, "SF Mono", Menlo, monospace;
```

- **Sans — everything.** Display: weight **600**, tracking **-0.021 to -0.025em**, line-height
  1.12–1.2. Body: 400/500, 15–18px, line-height 1.5–1.6. Labels/eyebrows: **sentence case,
  weight 600, no letterspacing** — the old UPPERCASE + wide-tracking treatment is what read as
  editorial/typewriter.
- **Mono — data only.** Email addresses, amounts, receipt IDs, and literal commands the user
  types. Amounts in mono also buy **tabular alignment** — the decimals line up in a column.
  Never body text; never section headings in product email. (A mono *eyebrow* is fine on the
  marketing site — with Consolas it reads technical, which Courier never did.)

**Why these two, specifically:** **Aptos** has been the Microsoft 365 default since 2024 and
**Consolas** ships with Office on Windows *and* Mac. So a PowerPoint or Gamma deck matches the
product with **no embedding, no subsetting, and no font remapping** — which is exactly the
breakage documented in the Gamma→PPTX export fix. Pick Aptos in PowerPoint and you're done.

**No webfonts anywhere.** Site and email load **zero** font files. Email clients strip
`@font-face` regardless, and the fallbacks (Segoe UI on Windows, SF on Mac) are the same
neutral grotesque, so it degrades invisibly. On perpetual Office (2019/2021) there's no Aptos —
it lands on Segoe UI, which is the point of the stack.

**Forbidden:** Cormorant, Newsreader, **Inter** (not in Office — this is what forced the font
surgery), **Courier New**, Roboto, Arial-as-display, Open Sans, Fraunces.

---

## 6. Visual motifs (reuse these, don't invent new ones)

- **The B mark (2026-08-01, third revision same day).** The brand mark: a rounded-square
  squircle in `#1F4332` with a bold letterform "B" (sans stack, weight 800) centered in
  `#F4F5F4`. It's the nav logo and the favicon — the same asset, not two. **Supersedes both
  the checkmark-cut squircle and the same-day paper-plane glyph.** The checkmark read as a
  generic tickbox icon; the plane was a considered attempt (it reused the hero's own send-glyph)
  but still read as "an icon," not a mark you'd recognize as Bonvio's. A plain, confident
  letterform is the more durable choice — it's what most SaaS marks that age well actually are.
  Don't design a new mark per campaign; don't relitigate this one without new user feedback,
  it's had three rounds in one day already.
- **The green full stop (2026-08-01).** The wordmark is "Bonvio**.**" — with a green period.
  The same green period ends the hero's last word ("Fertig**.**" / "Done**.**") and the closing
  CTA's final word. Static, no animation. Nowhere else: it marks *completion*, so it only ends
  sentences that mean "done." Max three instances per page (wordmark, hero, closing). This is
  the ownable signature — a full stop as brand mark for a product whose entire promise is
  "…and then you're done."
- **Dot grid** background texture. Two densities: a near-invisible 4px paper-grain sitewide,
  and a visible, load-bearing 22px grid specifically behind the hero — the hero's grid is
  allowed to be seen; the sitewide one isn't.
- **Phone mockup (un-retired 2026-08-01)** — the hero visual. A stylized phone frame
  (`var(--ink)` bezel, no literal iOS status bar/clock) showing the compose screen, static:
  mail bar (Abbrechen / Neue E-Mail / Senden), To/Subject fields, an itemized receipt
  thumbnail, a "Tippe auf Senden" hint pinned to the screen bottom, plus a speech-bubble
  callout for the hashtag-as-category mechanic and the caption "In Sekunden. Ohne dass du
  etwas tust." History: this replaced a flat "floating proof cards" collage from earlier the
  same day — abstract floating fragments had no product to anchor to — which had itself
  replaced a static phone. An animated compose→send→confirm demo loop was built and shipped
  the same evening, then **retired within the hour on founder feedback ("cool, just no
  motion")** — see the retired list below. If revisiting the hero: start from the static
  phone.
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
- **Autonomous page motion.** A full motion pass shipped on the evening of 2026-08-01 —
  self-playing phone demo loop (compose→send→confirm with a flying paper plane), staggered
  hero entrance, green period stamp-in, scroll-triggered step staggers, and an ink-sweep on
  the pain quote — and was retired the same evening on direct founder feedback: *"cool, just
  no motion."* The page is deliberately still. The only motion that stays: the pre-existing
  quiet `.reveal` scroll fade-ins and standard hover/active feedback on buttons and links.
  Don't re-add entrance choreography, looping demos, or scroll-triggered animation without
  new, explicit direction from Niko.
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
