import sys,re,json,html,os
p,lbl=sys.argv[1],sys.argv[2]
s=open(p,encoding='utf-8',errors='replace').read()
m=re.search(r'<div id="__A11Y__"[^>]*>(.*?)</div>',s,re.S)
if not m:
    print(f"!! {lbl}: NO PROBE OUTPUT (page failed to load, navigated away, or script errored)")
    sys.exit(1)
env=json.loads(html.unescape(m.group(1)))
got=os.path.basename(env["page"]); want=f"page-{lbl}.html"
if got!=want:
    print(f"!! {lbl}: WRONG PAGE — probe ran on {got}, expected {want}"); sys.exit(2)
data=env["findings"]
if not data:
    print(f"=== {lbl} [{env['lang']}]: CLEAN — every text/background pair meets WCAG AA ==="); sys.exit(0)
print(f"=== {lbl} [{env['lang']}]: {len(data)} failing pairs ===")
for d in data:
    print(f"  {d['ratio']:>5.2f}:1 (need {d['need']}) {d['fg']} on {d['bg']}  {d['size']:.0f}px/{d['weight']}")
    print(f"          {d['sel']}   \"{d['text']}\"")
# Falling off the end here exited 0, so check-contrast.sh's `|| rc=1` never fired
# and it printed "all pages pass WCAG AA" underneath a list of failures.
sys.exit(1)
