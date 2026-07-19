# SCOREBOARD

*Auto-generated 2026-07-18T07:50:29Z — do not hand-edit.*

## Summary

| Metric | Value |
|--------|-------|
| Total bets | 14 |
| Resolved | 13 |
| Open | 1 |
| Hit rate (success / resolved) | 69% |
| Mean Brier loss | 0.142 (lower = better calibrated) |
| Successes / Partials / Fails | 9 / 1 / 3 |

## By Author

| Author | Resolved | Hit Rate | Mean Brier |
|--------|----------|----------|------------|
| Dee | 13 | 69% | 0.142 |

## Overconfident Misses (confidence ≥ 0.6, result = fail)

- **[462a157409a2]** conf=0.75 Brier=0.562
  Claim: the §0a framing 'human gaps are harder so the main lever is more AI assistance' is sound architecture
  Actual: all four brain-trust models independently flagged it as self-serving; more AI can atrophy/deepen the human gap; the real lever is better human-AI coupling WITH limits
  Notes: the architecture caught one node's structural bias — the system working as designed

- **[df729965ee29]** conf=0.7 Brier=0.490
  Claim: The gdoc-bridge append/write path works on existing creds (clasp OAuth)
  Actual: Docs WRITE hangs on auth: clasp token is Apps-Script-scoped, not a Docs-write token; two workers stalled, a direct self-test hung
  Notes: lesson: separate 'can create via Apps Script' from 'can append via Docs REST'; wire real Docs auth via Yeshie/clasp-AppsScript before relying on programmatic writes

- **[ebf4701f9cba]** conf=0.6 Brier=0.360
  Claim: blind-dispatching the Hermes kanban dashboard plugin fix to a worker will succeed
  Actual: two workers thrashed 7-16 min with zero writes; root cause was an undocumented internal-token auth layer
  Notes: lesson: don't blind-dispatch undocumented-system spelunking; front-load diagnosis or do it hands-on; see lesson/415f4c464af3

## Open Bets

- **[9ee32d628af6]** conf=0.7 author=Dee
  Ariadne persists across same-domain navigations per tab+domain (cross-page memory)
  horizon: Mike live test

