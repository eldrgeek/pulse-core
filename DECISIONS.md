# Decisions

*Auto-generated from store/events.jsonl — do not hand-edit.*

*2 records, newest first.*

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

