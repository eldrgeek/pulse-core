# Lessons

*Auto-generated from store/events.jsonl — do not hand-edit.*

*3 records, newest first.*

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

