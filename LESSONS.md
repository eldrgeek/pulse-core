# Lessons

*Auto-generated from store/events.jsonl — do not hand-edit.*

*4 records, newest first.*

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

