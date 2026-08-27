#!/usr/bin/env sh
# Regenerate /og.png (1200x630) from brand/og-template.html.
# og.png is a GENERATED artifact — edit the template, never the PNG.
# The webfont is inlined into a temp copy first: headless Chromium cannot reach
# fonts.googleapis.com here, and without this the card renders in a fallback face.
set -e
DIR="$(cd "$(dirname "$0")/.." && pwd)"
CHROME="${CHROME:-/opt/pw-browsers/chromium}"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

python3 - "$DIR" "$TMP" <<'PY'
import re, sys, base64, subprocess, io, os
src, tmp = sys.argv[1], sys.argv[2]
UA = ("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 "
      "(KHTML, like Gecko) Chrome/120 Safari/537.36")
html = io.open(os.path.join(src, "brand/og-template.html"), encoding="utf-8").read()
link = re.search(r'<link rel="stylesheet" href="(https://fonts\.googleapis\.com[^"]+)">', html)
faces = []
if link:
    css = subprocess.run(["curl", "-sS", "-A", UA, link.group(1)],
                         capture_output=True, check=True).stdout.decode()
    for b in re.findall(r"@font-face\s*\{(.*?)\}", css, re.S):
        ur = re.search(r"unicode-range:\s*([^;]+);", b)
        if not ur or "U+0000-00FF" not in ur.group(1):
            continue                                  # latin subset only
        fam = re.search(r"font-family:\s*'([^']+)'", b).group(1)
        wt = re.search(r"font-weight:\s*([^;]+);", b).group(1).strip()
        url = re.search(r"url\((https://[^)]+\.woff2)\)", b).group(1)
        raw = subprocess.run(["curl", "-sS", url], capture_output=True, check=True).stdout
        faces.append("@font-face{font-family:'%s';font-style:normal;font-weight:%s;"
                     "font-display:swap;src:url(data:font/woff2;base64,%s) format('woff2');}"
                     % (fam, wt, base64.b64encode(raw).decode()))
    html = html.replace(link.group(0), "<style>%s</style>" % "\n".join(faces))
print("inlined %d font face(s)" % len(faces), file=sys.stderr)
io.open(os.path.join(tmp, "og.html"), "w", encoding="utf-8").write(html)
PY

"$CHROME" --headless --disable-gpu --no-sandbox --hide-scrollbars \
  --force-device-scale-factor=1 --window-size=1200,630 \
  --virtual-time-budget=5000 \
  --screenshot="$DIR/og.png" "file://$TMP/og.html" 2>/dev/null
echo "wrote $DIR/og.png"
