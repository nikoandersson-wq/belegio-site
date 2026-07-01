# bonvio-site

Public marketing site for Bonvio: landing page, legal pages (AGB/Datenschutz/Impressum, DE+EN), blog,
and the brand assets.

## Deploy
Static site served via GitHub Pages (`CNAME` pins the custom domain). Deploy is just:
```
git commit && git push
```
GitHub Pages rebuilds automatically. Verify the live site via Cloudflare by checking actual CSS/copy
changes, not just response size — caching can mask a stale deploy.

## Brand assets
`brand/` is the single canonical home for brand identity: `BRAND.md` (written spec) and
`Bonvio Brand Book.html` (visual reference), plus logo files. Don't create copies elsewhere (Desktop,
Downloads) — edit here only.

## Product code
The Lambda/backend lives in a separate repo (`receipt-mvp`), not here.
