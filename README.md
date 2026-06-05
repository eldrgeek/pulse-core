# Pulse Core

Portable, substrate-independent decision + artifact + lesson memory for SOMA.

**The only thing you can't afford to rent.** Hermes, cc_dispatch, and every model CLI are _clients_. This store is the source of truth. The board and Hermes memory are views, not roots.

---

## Design principles

- **Append-only.** `store/events.jsonl` is never rewritten. Corrections are new records with `supersedes: <id>`.
- **Zero external deps.** Python 3 stdlib only. Runs anywhere Python runs.
- **Concurrency-safe.** `fcntl` exclusive lock on append — Hermes hooks and cc_dispatch workers can call this simultaneously without corrupting the log.
- **Human-readable indexes.** `INDEX.md`, `DECISIONS.md`, `ARTIFACTS.md`, `LESSONS.md` are auto-generated from the JSONL and committed alongside it. Never hand-edit them.
- **Schema we own.** No database, no web server, no ORM. A flat file you can `cat`, `grep`, and `git log`.

---

## Storage layout

```
pulse-core/
  store/
    events.jsonl        ← append-only log (source of truth)
  INDEX.md              ← all records, newest first (auto-generated)
  DECISIONS.md          ← decision records only (auto-generated)
  ARTIFACTS.md          ← artifact records only (auto-generated)
  LESSONS.md            ← lesson records only (auto-generated)
  pulse-mem             ← CLI (executable Python 3 script)
  README.md
```

---

## Record schema

Every record is a single JSON object on one line in `events.jsonl`.

### Common fields (all types)

| Field | Type | Required | Description |
|---|---|---|---|
| `id` | string | auto | 12-char hex UUID fragment |
| `ts` | string | auto | ISO 8601 UTC timestamp |
| `type` | string | yes | `decision` \| `artifact` \| `lesson` |
| `supersedes` | string | no | id of the record this one replaces |

### `decision` — why we chose what we chose (ADR-style)

| Field | Description |
|---|---|
| `title` | Short name for the decision |
| `context` | Situation that forced a choice |
| `options` | Alternatives considered |
| `chosen` | What was picked |
| `rationale` | Why |
| `reversibility` | `green` (easy to undo) \| `yellow` \| `red` (irreversible) |
| `links` | Related docs, PRs, audits |

### `artifact` — the registry of what exists and where

| Field | Description |
|---|---|
| `kind` | `map` \| `audit` \| `report` \| `dataset` \| `skill` \| `build` |
| `ref` | Path or URL |
| `summary` | One-sentence description |
| `freshness` | ISO date or relative ("weekly") |
| `owner` | Agent or person responsible |
| `confidence` | 0.0–1.0 trust in the artifact's accuracy |
| `next` | What should happen to this artifact next |

### `lesson` — propagatable RSI substance

| Field | Description |
|---|---|
| `what` | The lesson in one sentence |
| `why` | Why this matters / what went wrong |
| `apply` | When and how to apply it |
| `source` | Where it was learned |

---

## CLI reference

The CLI is `./pulse-mem` (or add the repo dir to PATH).

### Add a decision

```sh
pulse-mem decision add \
  --title "Short title" \
  --context "What forced this choice" \
  --options "A, B, C" \
  --chosen "B" \
  --rationale "Because B satisfies X without Y cost" \
  --reversibility yellow \
  --links "path/to/doc.md"
```

### Add an artifact

```sh
pulse-mem artifact add \
  --kind build \
  --ref "https://example.netlify.app" \
  --summary "The Dee board — live VPS dashboard" \
  --owner Dee \
  --confidence 0.9 \
  --freshness "2026-06-04"
```

### Add a lesson

```sh
pulse-mem lesson add \
  --what "Overly broad VPS prompts cause cc_dispatch workers to thrash" \
  --why "Workers have no context on what to look for and loop on empty results" \
  --apply "Give concrete ordered steps + a known diagnosis in every dispatch prompt" \
  --source "SOMA brain-trust synthesis 2026-06-04"
```

### Query

```sh
# Human-readable
pulse-mem query --type decision
pulse-mem query --type artifact --kind build
pulse-mem query --text "Hermes"

# JSON lines for agent consumers
pulse-mem query --type lesson --json
```

### Reindex (usually automatic)

Every mutating command auto-reindexes. To force:

```sh
pulse-mem reindex
```

---

## Integration contract

**Hermes and cc_dispatch are clients. This store is the source of truth.**

- Hermes memory (MemoryBank, etc.) = **view** — syncs from here, does not own.
- The supervision board = **view** — renders from here.
- Git history of `events.jsonl` = the full audit trail.

### Calling from Hermes hooks

```sh
/path/to/pulse-mem decision add --title "..." --chosen "..." --rationale "..." --reversibility green
```

Exit 0 = success; nonzero = failure. No interactive prompts. Safe for cron and hook execution.

### Calling from cc_dispatch workers

Pass the absolute path to `pulse-mem` or ensure the repo's directory is on PATH. The fcntl lock means concurrent workers from different dispatch jobs won't corrupt the log.

---

## Future record types (not yet implemented)

- `eval` — RSI scoreboard entry: a test run result bound to a named hypothesis.
- `signal` — lightweight event marker for time-series correlation.
