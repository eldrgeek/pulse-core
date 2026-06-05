# Lessons

*Auto-generated from store/events.jsonl — do not hand-edit.*

*9 records, newest first.*

### [31924b21e740]
*2026-06-05T20:53:02Z*

**What:** A cc_dispatch worker finished all edits (10 files, tests green on disk) but stalled before commit/deploy/report. Salvaged: killed it, ran the tests on the uncommitted state (242 pass), confirmed the key markers present, then committed+deployed myself.

**Why:** Worker output is recoverable even when the worker stalls at finalization — don't re-dispatch the whole task; verify the on-disk state and finish it.

**Apply:** On a stalled worker: check uncommitted changes + run the test gate; if coherent+green, commit/deploy yourself rather than redo.

**Source:** session 2026-06-05


---

### [5f1e0ca09244]
*2026-06-05T19:47:10Z*

**What:** Mike reported 4 'bugs' on the Ariadne extension + 1 on Legends; ALL were stale artifacts, not code defects. Extension: latest fixes were committed/on-disk but the auto-reload watcher (port 27183) wasn't running and the manifest change needed a full reload, so the OLD build was loaded — its symptoms exactly matched the reports. Legends: prod code was correct (Netlify Identity commented, SOMA Auth wired) but the browser had cached the pre-migration page.

**Why:** I almost dispatched another round of blind code fixes for bugs that were already fixed. The symptoms matching a KNOWN-PRIOR build state is the tell.

**Apply:** When a user reports symptoms that match a pre-fix state, FIRST verify the loaded/deployed artifact == committed code (grep on-disk extension, curl live prod) before treating it as a code bug. Auto-reload only works if the watcher is running — a manifest change always needs a full reload. Confirm artifact freshness, then debug.

**Source:** session 2026-06-05


---

### [496a34453a40]
*2026-06-05T17:23:07Z*

**What:** Part of my 'Yeshie nav is broken' diagnosis was a usage error: my payloads used step.value but the navigate/open_tab handlers only read step.url → url undefined → silent no-op. (Real bugs also existed: stale tabId after open_tab, missing await on tabs.update.)

**Why:** I attributed 100% to 'Yeshie broken' when ~part was my own wrong field name — a non-mutating check of the handler's expected fields would have caught it faster.

**Apply:** When a tool 'no-ops', check the handler's expected arg names against what you sent BEFORE concluding the tool is broken. The fix now accepts both url and value.

**Source:** session 2026-06-05 yeshie nav fix


---

### [fa3e997a30bb]
*2026-06-05T17:11:16Z*

**What:** Mapping economics, real data point (WEC): SSR sites (Squarespace/Wix/WP) map fully via plain HTTP fetch — no browser needed. Consistent nav means 1 fetch yields the full URL list; ~1 fetch per unique page after. WEC mapped in ~4 fetches, negligible inference.

**Why:** Confirms the brain-trust Scout→Sniper economics: cheap deterministic fetch first; browser only for JS-rendered/interactive pages.

**Apply:** Bill's auto-mapper: fetch-first, detect SSR vs SPA (empty body = JS-rendered), escalate to browser perception only when needed. Predict cost from page count × (cheap if SSR / dearer if SPA).

**Source:** WEC mapping 2026-06-05


---

### [04fcb83ee1d6]
*2026-06-05T17:04:54Z*

**What:** Yeshie's mapping capability splits cleanly: the PERCEIVE engine works well (structured affordance extraction per page — buttons/fields/headings/navLinks/forms/tables/title/url), but the relay-driven NAVIGATION is broken right now. 'navigate' returns ok after a fixed ~15s timeout WITHOUT changing the page (perceive then reads the stale active tab, e.g. status.claude.com); 'open_tab' creates a chrome:// tab without loading the target URL; targeting that tab errors 'Cannot access a chrome:// URL'.

**Why:** Determines the port decision: the valuable, reusable, working part of Yeshie-as-mapper is perceive (the 'guts'); navigation is the broken+replaceable part.

**Apply:** Port Yeshie's perceive/affordance-extraction engine into Bill as the mapping primitive; source navigation elsewhere (sitemap/link-crawl + the browser's own nav, or Claude-in-Chrome). To use Yeshie for live mapping today, the extension's navigation needs a reload/fix first.

**Source:** session 2026-06-05 WEC mapping probe


---

### [9dcaa9fbd03e]
*2026-06-05T12:34:10Z*

**What:** The gdoc bridge write path WORKED all along (Drive export→mutate→PATCH with drive-scoped token a worker auth'd at 08:25). I wrongly declared it 'blocked, needs Yeshie' after a hang that was actually a stale command name (append-suggestion vs append) + positional-vs--doc arg error.

**Why:** I jumped to a pessimistic diagnosis without checking the actual command signature or the token state — same overconfidence the scoreboard already flagged, in the failure direction this time.

**Apply:** Before declaring an integration 'blocked', verify the tool's real CLI signature + auth state with a non-mutating call (gdoc read worked instantly). Check assumptions both ways.

**Source:** session 2026-06-05


---

### [d5a5f40474ef] *(supersedes 0668d63e1f94)*
*2026-06-05T00:53:02Z*

**What:** codex exec fails outside a git/trusted dir — use --skip-git-repo-check

**Why:** codex enforces a git-repo trust model by default; running in /tmp or ad-hoc dirs silently fails or errors without an obvious message

**Apply:** Always pass --skip-git-repo-check when calling codex exec from dispatch scripts or outside a known repo root

**Source:** SOMA operational experience


---

### [0668d63e1f94]
*2026-06-05T00:52:46Z*

**What:**  fails outside a git/trusted dir — use --skip-git-repo-check

**Why:** codex enforces a git-repo trust model by default; running in /tmp or ad-hoc dirs silently fails or errors without an obvious message

**Apply:** Always pass --skip-git-repo-check when calling codex exec from dispatch scripts or outside a known repo root

**Source:** SOMA operational experience


---

### [415f4c464af3]
*2026-06-05T00:52:40Z*

**What:** cc_dispatch workers stall on over-broad VPS-investigation prompts; give concrete ordered steps + a known diagnosis, or they thrash

**Why:** Workers dispatched with vague instructions (e.g., 'investigate why X is slow') have no anchor — they loop on empty results, exhaust budget, and return nothing actionable

**Apply:** Scope tight: front-load what you already know, give ordered diagnostic steps, name the files/services to look at. Treat the dispatch prompt as a recipe, not a question.

**Source:** SOMA operational experience; brain-trust synthesis 2026-06-04


---

