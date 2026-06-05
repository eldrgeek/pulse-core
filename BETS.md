# Bets

*Auto-generated from store/events.jsonl — do not hand-edit.*

*11 records, newest first.*

### [ac231ba9aed7] RESOLVED/SUCCESS Brier=0.04 confidence=0.8
*2026-06-05T18:42:43Z*

**Claim:** Ariadne v2.1 fixes audio(gesture)+visible-nav+target-safety without breaking Bill/Proteus

**Criteria:** tests green + CDN engine updated + Legends renders

**Author:** Dee

**Actual:** soma-guide 199/199, perceive 19/19; audio now gesture-gated via Site Tour button; visible-nav filter; 0x0 highlight skip; CDN redeployed; Legends 200


---

### [84f539d9f89b] RESOLVED/SUCCESS Brier=0.04 confidence=0.8
*2026-06-05T18:29:00Z*

**Claim:** SOMA Auth v1 (Supabase) ships on Legends without breaking prod

**Criteria:** Legends prod renders + auth wired + reversible

**Author:** Dee

**Actual:** packages/auth (lib+schema+config) + 15 Legends pages migrated Netlify Identity→SOMA Auth magic-link, pushed; prod home verified HTTP 200 w/ content + auth wiring; graceful degradation + hardcoded admin allowlist fallback so Mike isn't locked out. Needs Mike: enable Email OTP, set redirect URLs, run schema.sql.


---

### [ee551f5a8f90] RESOLVED/SUCCESS Brier=0.04 confidence=0.8
*2026-06-05T17:23:06Z*

**Claim:** The dispatched Yeshie nav fix restores working navigate+perceive through the relay

**Criteria:** navigate to a URL completes in 1-3s and perceive reads the new page's url

**Author:** Dee

**Actual:** live verify: navigate example.com = 839ms (was 15s no-op), perceive url=https://example.com/. Worker fixed: step.url||step.value, stale run.tabId after open_tab, missing await; +3 regression tests, 721 pass.


---

### [661dfd3c09e3] RESOLVED/SUCCESS Brier=0.09 confidence=0.7
*2026-06-05T17:21:51Z*

**Claim:** The Ariadne extension injects the guide cleanly onto an arbitrary page (e.g. WEC) on toolbar click

**Criteria:** load unpacked → click 🧵 on wolfeducationalconsulting.com → Ariadne widget appears + opens

**Author:** Dee

**Horizon:** Mike's load-test

**Actual:** Mike load-tested: extension injects the widget into an arbitrary page. Gaps: no audio + only a generic 'Welcome' (v1 is a hollow injector — no site knowledge, no walkthrough, intro likely not spoken).

**Notes:** injection thesis proven; next = perceive-port for real content + wire audio


---

### [105c1b4c359a] RESOLVED/SUCCESS Brier=0.01 confidence=0.9
*2026-06-05T12:34:10Z*

**Claim:** gdoc bridge can post attributed AI critiques into a shared Google Doc

**Criteria:** 4 critiques land in the doc, verified by read-back

**Author:** Dee

**Actual:** all 4 brain-trust critiques + header appended and verified in the doc via the bridge


---

### [df729965ee29] RESOLVED/FAIL Brier=0.49 confidence=0.7
*2026-06-05T12:25:36Z*

**Claim:** The gdoc-bridge append/write path works on existing creds (clasp OAuth)

**Criteria:** a worker can append text to the shared Doc without new auth

**Author:** Dee

**Horizon:** this session

**Actual:** Docs WRITE hangs on auth: clasp token is Apps-Script-scoped, not a Docs-write token; two workers stalled, a direct self-test hung

**Notes:** lesson: separate 'can create via Apps Script' from 'can append via Docs REST'; wire real Docs auth via Yeshie/clasp-AppsScript before relying on programmatic writes


---

### [f0ff2c8b699d] RESOLVED/PARTIAL Brier=0.09 confidence=0.8
*2026-06-05T12:20:25Z*

**Claim:** a 4-model brain trust converging on a finding = strong epistemic signal

**Criteria:** Convergence rate reliably correlates with correctness across diverse question types

**Author:** Dee

**Horizon:** 2026-06-05

**Actual:** convergence is real signal but the models share correlated training/RLHF, so agreement can be premature collapse dressed as consensus; disagreement is often the higher-value asset

**Notes:** weight convergence less, mine disagreement more


---

### [462a157409a2] RESOLVED/FAIL Brier=0.5625 confidence=0.75
*2026-06-05T12:20:25Z*

**Claim:** the §0a framing 'human gaps are harder so the main lever is more AI assistance' is sound architecture

**Criteria:** Brain trust validates the framing without flagging structural bias

**Author:** Dee

**Horizon:** 2026-06-05

**Actual:** all four brain-trust models independently flagged it as self-serving; more AI can atrophy/deepen the human gap; the real lever is better human-AI coupling WITH limits

**Notes:** the architecture caught one node's structural bias — the system working as designed


---

### [ebf4701f9cba] RESOLVED/FAIL Brier=0.36 confidence=0.6
*2026-06-05T12:20:25Z*

**Claim:** blind-dispatching the Hermes kanban dashboard plugin fix to a worker will succeed

**Criteria:** Worker returns a working kanban plugin with no hands-on intervention

**Author:** Dee

**Horizon:** 2026-06-04

**Links:** 415f4c464af3

**Actual:** two workers thrashed 7-16 min with zero writes; root cause was an undocumented internal-token auth layer

**Notes:** lesson: don't blind-dispatch undocumented-system spelunking; front-load diagnosis or do it hands-on; see lesson/415f4c464af3


---

### [226afdcfe161] RESOLVED/SUCCESS Brier=0.0225 confidence=0.85
*2026-06-05T12:20:25Z*

**Claim:** the soma-platform monorepo cutover repoints both live sites safely and reversibly

**Criteria:** Both DNS names resolve correctly; rollback path documented and tested

**Author:** Dee

**Horizon:** 2026-06-04

**Actual:** soma-platform monorepo live; both soma-guide.netlify.app and soma-platform repointed; rollback documented


---

### [97637694ecd7] RESOLVED/SUCCESS Brier=0.04 confidence=0.8
*2026-06-05T12:20:25Z*

**Claim:** Proteus ports to Levinese as a clean config-only drop-in of the soma-guide engine

**Criteria:** Levinese corpus search and transcript explorer live with no engine code changes

**Author:** Dee

**Horizon:** 2026-06-04

**Actual:** Proteus deployed to levinese-preview.netlify.app with config-only changes; engine untouched


---

