# Lessons

*Auto-generated from store/events.jsonl — do not hand-edit.*

*13 records, newest first.*

### [05a4ad8822a1]
*2026-06-10T00:26:47Z*

**What:** A worker added resource-settings.js that require()d '@supabase/supabase-js', but the Legends repo's package.json has NO deps — Netlify's function bundler (zip-it-and-ship-it) failed with exit 2, breaking EVERY deploy for ~hours. All committed fixes (Ask Bill, tour, player-benefits, nav) silently never went live, so Greg kept seeing the old broken site.

**Why:** A broken Netlify build fails SILENTLY from the committer's view — git push succeeds, but the deploy errors and the live site stays stale. Easy to mistake 'fix didn't work' for 'fix didn't deploy.'

**Apply:** When a Legends/Netlify fix 'doesn't take' for the user, CHECK THE DEPLOY succeeded before re-fixing the code. Never add an npm require to a Netlify function unless the dep is in package.json (these function repos run deps-free, stdlib only). After adding any function, run a local 'netlify build' or check the deploy log. Build-green is part of 'done'.

**Source:** greg-ask-bill-refix, 2026-06-09


---

### [07453ba13ab2]
*2026-06-06T19:46:49Z*

**What:** Recurring this session: workers building a VPS service write the CORRECTED code locally but stall at the finalize step before redeploying to the VPS and/or committing — leaving a STALE/buggy version running (e.g. soma-knowledge deployed an early 'bad route' router while the fixed server.js sat uncommitted locally; frontend RAG wiring sat uncommitted).

**Why:** The deployed artifact silently diverges from the corrected local source, so health checks pass but real endpoints fail; and uncommitted frontend work never deploys.

**Apply:** When salvaging a stalled VPS-build worker: (1) diff deployed vs local (wc -l + grep a known marker), scp the corrected local file up, node --check, pm2 restart; (2) check git status for uncommitted frontend changes and commit+push; (3) verify the REAL endpoints (ingest/query), not just /health; (4) note env var names — soma-knowledge uses GEMINI_API_KEY (Gemini embeddings), not OpenAI.

**Source:** soma-knowledge-retrieval salvage, 2026-06-06


---

### [33ef5e795f5f]
*2026-06-06T17:35:03Z*

**What:** The gdoc-bridge Google project (1072944905499) has the Docs API DISABLED — only the Drive API is enabled. A worker tried to update a Google Doc in place via the Docs API batchUpdate and stalled on the 403 SERVICE_DISABLED.

**Why:** Docs were CREATED by Drive-importing markdown (Drive auto-converts md→Google Doc), so workers assume Docs API works — it doesn't for this project.

**Apply:** To update a Google Doc's content: use Drive API files().update(fileId, media_body=MediaFileUpload(md,'text/markdown'), body={mimeType:'application/vnd.google-apps.document'}) — re-imports/overwrites and re-converts. To READ a doc: drive files().export(mimeType='text/plain'). Never use docs.googleapis.com batchUpdate with this token. Token: ~/.config/gdoc-bridge/token.json (mw@mike-wolf.com, drive scope).

**Source:** soma-assistant-doc-revise worker stall, 2026-06-06


---

### [8b626afd88a3]
*2026-06-06T15:39:10Z*

**What:** Worker editing /opt/soma-infer/server.js via SSH wrote a single-quoted JS string with a raw apostrophe (shell-escape artifact don'''t) → SyntaxError → pm2 crash-loop (19 restarts) → 502 across Izzy/Bill/Ariadne. Same worker's tight-loop sshpass logins tripped fail2ban → port 22 refused ~10min, blocking recovery.

**Why:** Two compounding self-inflicted failures: an unverified code edit took prod down, and an SSH-hammering pattern locked us out of fixing it.

**Apply:** (1) node --check any JS edited on a server BEFORE pm2 restart; (2) use double-quotes/heredocs not nested-quote sed for code with apostrophes; (3) never tight-loop SSH at a fail2ban host — one key-auth connection or ControlMaster; (4) on 502 read pm2 error log first; (5) sync VPS hotfixes back to the repo to prevent redeploy drift.

**Source:** izzy-fixes-subscription-concise-voicecheck worker, 2026-06-06


---

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

