#!/bin/sh
# WCAG AA contrast check for every page in this repo (BRAND.md §4.3b).
#
# Renders each page headless, walks every element that has its own text, composites the
# real background up the ancestor chain (alpha and inherited opacity included), and asserts
# 4.5:1 — 3:1 for >=24px, or >=18.66px bold. Exits non-zero on the first failing page.
#
#   ./scripts/check-contrast.sh              # all pages, desktop + mobile, DE + EN
#   ./scripts/check-contrast.sh index.html   # one page
#
# Needs a Chromium on PATH or at $CHROMIUM.
set -e
ROOT=$(cd "$(dirname "$0")/.." && pwd)
DIR="$ROOT/scripts/contrast"
WORK=$(mktemp -d); trap 'rm -rf "$WORK"' EXIT
BIN="${CHROMIUM:-$(command -v chromium || command -v chromium-browser || command -v google-chrome || echo /opt/pw-browsers/chromium)}"
[ -x "$BIN" ] || { echo "no chromium found; set \$CHROMIUM"; exit 127; }

probe() {  # $1 file  $2 label  $3 width  $4 lang
  cat "$1" "$DIR/head.js" "$DIR/probe.js" "$DIR/tail.js" > "$WORK/page-$2.html"
  "$BIN" --headless --user-data-dir="$WORK/prof-$2" --disable-gpu --no-sandbox \
    --hide-scrollbars --disk-cache-size=1 --lang="$4" --accept-lang="$4" \
    --window-size="$3",2400 --virtual-time-budget=8000 --dump-dom \
    "file://$WORK/page-$2.html" 2>/dev/null > "$WORK/dom-$2.html"
  python3 "$DIR/report.py" "$WORK/dom-$2.html" "$2"
}

PAGES="${*:-$(cd "$ROOT" && ls *.html)}"
rc=0
for f in $PAGES; do
  base=$(basename "$f" .html)
  # index.html, anleitung.html and the blog carry BOTH languages in one file and
  # switch them with a body class, so the filename says nothing about what renders.
  # Probing by filename alone measured only their German half and left every
  # English one unchecked — the pages are picked by what they contain, not by name.
  case "$base" in
    *-en) langs="en-US"; dual=0 ;;
    *)
      if grep -q 'lang-en-active' "$ROOT/$f"; then
        langs="de-DE en-US"; dual=1
      else
        langs="de-DE"; dual=0
      fi
      ;;
  esac
  for lang in $langs; do
    tag="$base"
    if [ "$dual" = "1" ] && [ "$lang" = "en-US" ]; then tag="$base-en"; fi
    probe "$ROOT/$f" "$tag"   1280 "$lang" || rc=1
    probe "$ROOT/$f" "m-$tag"  390 "$lang" || rc=1
  done
done
[ $rc -eq 0 ] && echo "contrast: all pages pass WCAG AA"
exit $rc
