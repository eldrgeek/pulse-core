# Decisions

*Auto-generated from store/events.jsonl — do not hand-edit.*

*5 records, newest first.*

### [ffb40cc85599] soma-owner: sync localStorage compare (build-time SHA-256) over runtime SubtleCrypto `green`
*2026-06-10T11:06:35Z*

**Context:** Owner mode identification for SOMA apps. Secret baked into CDN JS so any runtime crypto is theater. isOwner() must be sync to avoid FOUC.

**Options:** runtime SubtleCrypto HMAC (async, FOUC risk) / build-time SHA-256 comparison (sync, opaque stored token)

**Chosen:** build-time SHA-256; OWNER_TOKEN stored in localStorage; isOwner() is pure sync string compare

**Rationale:** No marginal security gain from runtime crypto when key material is client-side regardless. Sync API avoids race conditions and FOUC.


---

### [d9ce793848dd] SOMA Auth: build on Supabase, Legends = target zero, owned by Dee `yellow`
*2026-06-05T17:57:56Z*

**Context:** Mike 2026-06-04 discussed SOMA Auth (broker, don't hand-roll); 2026-06-05 flagged nobody was assigned + wants Legends first.

**Options:** Supabase (open GoTrue successor, owned, free) / Clerk (managed, faster, lock-in) / hand-roll (rejected)

**Chosen:** Supabase, Legends target zero

**Rationale:** Supabase = modern GoTrue → natural migration off Netlify Identity; owned + cheap + JWT fits the broker.


---

### [03369fe85492] Bill gets Yeshie's perceive engine (take the guts out), not a Yeshie dependency `yellow`
*2026-06-05T17:04:54Z*

**Context:** Mike: map WEC via Yeshie + port the mapping capability to Bill; his either/or = port capability vs transplant Yeshie's guts. Live probe found perceive works, Yeshie navigation broken.

**Options:** A) Bill calls Yeshie as a mapping service (depends on Yeshie nav, currently broken); B) Lift Yeshie's perceive engine into Bill + use independent navigation

**Chosen:** B — transplant the perceive guts into Bill; navigation is replaceable

**Rationale:** perceive is the working, valuable, portable primitive; Yeshie's nav is broken and not the moat. Bill owning perceive = the auto-mapper the product thesis needs, without a fragile cross-tool dependency.


---

### [2560a7d0a755] soma-guide unified into soma-platform monorepo + single CDN (soma-guide.netlify.app); both sites repointed `green`
*2026-06-05T00:52:20Z*

**Context:** Two separate repos (soma-guide and soma-platform) had diverged; deploying to both was friction; brain trust identified consolidation as highest-leverage cleanup

**Options:** A) Keep two repos in sync manually; B) Merge into soma-platform monorepo with soma-guide.netlify.app as canonical CDN

**Chosen:** B — merged into soma-platform monorepo

**Rationale:** Single repo, single deploy, single CDN endpoint. Both DNS names repointed. Eliminates the sync problem permanently.


---

### [6dc8f4312a24] Fleet org: Mike→Dee(brain trust)→Hermes(control plane)→executors; Hermes is NOT root of memory/truth/RSI `yellow`
*2026-06-05T00:52:14Z*

**Context:** 3-model brain-trust (Gemini, GPT, Claude) converged on this org structure; prior architecture had Hermes as root which created single-point-of-failure for institutional knowledge

**Options:** A) Hermes as root of all memory and truth; B) Flat peer model with no hierarchy; C) Layered: Mike→Dee→Hermes→executors with Pulse Core as source of truth for decisions/artifacts/lessons

**Chosen:** C — layered org with Pulse Core as substrate-independent truth layer

**Rationale:** 3-model brain-trust convergence. Hermes is a control plane and executor, not a memory root. Substrate independence means the store outlives any framework.

**Links:** ~/Projects/SOMA/state/braintrust-2026-06-bottleneck-tokens/SYNTHESIS.md


---

