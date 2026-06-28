# Belegio — Brandbook

> Reference file for AI/agent content generation. Read this **before** writing any post,
> caption, or image. If a draft conflicts with anything here, the brandbook wins.
> Derived from the live site (belegio.eu / index.html).

---

## 1. What Belegio is (use for factual accuracy)

Receipt management by email. Photograph a receipt, email it to your personal Belegio
address, and it is stored, sorted, and searchable forever.

| Fact | Value |
|---|---|
| Price | €39,99 / year |
| Quota | up to 200 receipts / year |
| How it works | Photo → email → auto-extract (date, vendor, amount, VAT) → confirmation |
| Retrieval | email `EXPORT …` → get a ZIP + accountant-ready CSV |
| Categorisation | hashtags in the subject line (e.g. `#steuer`, `#auto`) |
| Storage | encrypted, EU servers in Frankfurt, GDPR-compliant |
| Retention | 7 years per §132 BAO (Austrian legal minimum) |
| Audience | private individuals · freelancers (Selbständige) · small businesses |
| Origin | Made in Vienna |
| **Status** | **Pre-launch.** Every CTA points to the **waitlist**, never "buy now". |

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
- No jargon, no growth-hacker tone, no fake urgency ("act now", countdowns).
- No overpromising on launch date — it's "soon" / "bald".

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
| Cream (background) | `#F4F3F0` | default light background |
| Paper | `#FBFAF7` | cards, receipt surfaces |
| Ink (text) | `#1A1A1A` | body + headlines on light |
| Warm near-black | `#1A1814` | alt dark text, warm headlines |
| Deep bottle green (**primary accent**) | `#1F4332` | buttons, badges, links, accent words, dark surfaces |
| Bottle green (darker) | `#0F2A1F` | large dark backgrounds, hover |
| **Gold (data accent)** | `#B8860B` | stat numbers, eyebrows, section numbers — **never fills or body text** |
| Bronze (gold on light) | `#7A5D1F` | gold at small sizes where `#B8860B` is too light to read |
| Warm wheat (accent on dark) | `#E0C896` | accent + CTA text on green surfaces |
| Pale green tint | `#CDE0D3` | subtle fills, badges on light |
| Sage (muted text) | `#6B6F6A` | secondary text, muted labels (warmer than neutral grey) |
| Warm hairline | `#E2E0DB` | card borders, dividers on light |

**The modernization (added 2026-06-27, from the Raiffeisen deck):** a disciplined **gold
data-accent** `#B8860B` and a warmer neutral-grey system (`#6B6F6A` text, `#E2E0DB` borders).
Green stays the soul of the brand — gold is *only* for numbers, eyebrows, and section
counters, never a second decorative colour and never a fill. Dark sections remain bottle
green `#1F4332` with wheat `#E0C896` on top.

**⚠ One inconsistency to resolve.** The CSS variable named `--rust` is actually the deep
green `#1F4332`, and it's the de-facto primary accent across the live site. But the
favicon/logo mark uses true **rust orange `#B4451F`** with cream text `#F4EFE2`. So your
browser-tab icon is orange while the on-page logo mark is green.
**Recommendation:** pick one. Either (a) commit to green `#1F4332` everywhere and update the
favicon, or (b) keep rust orange `#B4451F` as a logo-only signature colour. Until you decide,
**social images use green `#1F4332` as primary** (matches the live site).

---

## 5. Typography

Three roles, three faces — from the Raiffeisen deck (2026-06-27):

- **Display / headings:** **Cormorant** serif (Google Fonts). Weight **600–700**, tight
  tracking (**-0.022 to -0.025em**), line-height **0.98–1.05**. Accent word: *Cormorant
  italic, weight 400–500, in green*. Also carries large **Kennzahlen** (× €50/h, = €2,0 Mio.) —
  with the number itself in **gold `#B8860B`**.
- **Body & functional labels:** sans — `"Helvetica Neue", "Inter", -apple-system, Helvetica, Arial, sans-serif`.
  400/500, 14–19px, line-height 1.5–1.6.
- **Eyebrows / meta / dates / hashtags:** **monospace** (`"Courier New", ui-monospace, monospace`),
  UPPERCASE, wide tracking (**0.14–0.2em**), often in **gold**.

**Forbidden:** Roboto, Arial-as-display, Open Sans, Fraunces, Aptos. Don't bring back
Newsreader — Cormorant is the display serif now.

(For headless social-image rendering the template may keep a system-sans fallback so it
screenshots without loading web fonts — but the brand display face is Cormorant.)

---

## 6. Visual motifs (reuse these, don't invent new ones)

- **Dot grid** background texture (faint 4px radial dots).
- **Receipt paper:** monospace, perforated top/bottom edges, dashed rows, `SUMME / TOTAL`.
- **Numbered sections** `01`–`07` in a green mono badge.
- **Pill buttons**, fully rounded.
- **Trust strip:** *Aus Wien · Server in Deutschland · DSGVO & §132 BAO konform*.

---

## 7. Social post formulas

One blog post → 3 posts per platform per week. DE primary, EN variant.

| Day | Type | Shape | Link? |
|---|---|---|---|
| Mon | Announce post | hook (1–2 lines) + link | yes, blog URL |
| Wed | Standalone tip | one concrete tip from the post, value-first | no |
| Fri | Pain / question | a pain-point or question + soft waitlist CTA | waitlist |

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

- No "download / sign up / buy" — pre-launch CTA is **join the waitlist** only.
- No invented features, prices, or launch dates.
- No medical/legal/tax *advice* framed as guaranteed — tips are general; final word is the user's Steuerberater.
- No competitor names. No claims about other tools.
- No stock photos of generic "happy office people". Use the brand image template.

---

## 10. How to make an image (for the agent)

Use `social-template.html` in this folder. Either:

1. **URL params** (best for headless rendering): open
   `social-template.html?format=square&theme=cream&eyebrow=BELEGIO%20·%20TIPP&headline=Your%20headline&sub=Optional%20sub&footer=belegio.eu`
   then screenshot the `#canvas` element.
2. **Edit the `POST` object** at the top of the file, open in a browser, screenshot.

- `format`: `square` (1080×1080, IG), `portrait` (1080×1350, IG), `x` (1600×900, X).
- `theme`: `cream` (light) or `green` (dark). Alternate themes across the week for variety.
- Keep headlines short — 3 to 8 words. The template is built to your type scale; don't override fonts or colours.
