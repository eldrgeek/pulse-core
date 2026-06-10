# Artifacts

*Auto-generated from store/events.jsonl — do not hand-edit.*

*94 records, newest first.*

### [70cbf5fcc207] [build] pulse-mem ask (pulse-core/pulse-mem)
*2026-06-10T02:54:24Z* confidence=0.98

BM25-ranked natural-language query over Pulse Core store. Fable 5 lead designer, CCc implementer. Pure stdlib, <10ms on 135 events. --synthesize flag feeds top records to claude -p for cited paragraph answer. Commit 8fe4e31.

**Owner:** CCc+Fable5

**Freshness:** 2026-06-10


---

### [b8f4f3b57533] [build] pulse-mem ask (pulse-core/pulse-mem)
*2026-06-10T02:54:00Z* confidence=0.98

BM25-ranked natural-language query over Pulse Core store. Fable 5 lead designer, CCc implementer. Pure stdlib, <10ms on 135 events. --synthesize flag feeds top records to claude -p for cited paragraph answer. Commit 8fe4e31.

**Owner:** CCc+Fable5

**Freshness:** 2026-06-10


---

### [playcraft-staging-v1] [staging-deploy] https://soma-playwriting-staging.netlify.app
*2026-06-10T01:45:00Z*

Playcraft staging — SOMA manifest architecture instance #1. Public guide (Ariadne soma-guide FAB) + subscriber dramaturge (full-page chat, izzy-derived) with consult-and-relay. All in Netlify Functions (zero npm deps). Gate: unlisted URL. Verified: landing loads, guide answers how-to, dramaturge holds conversation, consult-and-relay returns source:guide-relay. Fable5 designed, CCc applied.


---

### [soma-transcripts-v1] [build] services/soma-transcripts/server.js
*2026-06-10T02:50:00Z*

soma-transcripts v1 LIVE: durable transcript store port 4250, Session Supervisor, schema v1 attribution fields, tenant isolation, feature flag, Izzy+soma-infer wired. Fable 5 lead designer. 2026-06-10.

**Owner:** CCc+Fable5


---

### [d7389d1df90a] [build] services/soma-transcripts/server.js
*2026-06-10T02:45:30Z* confidence=1.0

soma-transcripts v1 LIVE — durable transcript store (port 4250), Session Supervisor with namespace scoping + write-session lock + attribution validation. Schema v1: capability_id/auth_scope/source_provenance/relay_source on every message. Feature flag TRANSCRIPT_WRITE_ENABLED. Izzy (izzy-site relay) + soma-infer (all 5 chat paths) wired. Tenant isolation verified. Fable 5 lead designer. Deployed 2026-06-10.

**Owner:** CCc+Fable5


---

### [9ce4c5ebd87b] [build] services/soma-transcripts
*2026-06-10T02:45:13Z* confidence=0.95

soma-transcripts v1: durable transcript store, Session Supervisor, schema v1 with typed attribution (capability_id/auth_scope/source_provenance/relay_source), tenant isolation, feature flag. Port 4250. PM2+nginx. Izzy+soma-infer wired. Fable 5 lead designer. Deployed 2026-06-10.

**Owner:** CCc+Fable5


---

### [?] [?] soma-assistant-lib-scaffold
*2026-06-09T00:00:00.000Z*


---

### [261995d001fa] [report] /Users/mikewolf/Projects/SOMA/specs/fable-soma-plan.md
*2026-06-10T00:49:16Z*

SOMA×Fable5 plan doc (local md) — companion to GDoc; synthesized by Sonnet orchestrator from Fable5+Opie sessions


---

### [1721ee700f91] [report] https://docs.google.com/document/d/1SZD6JjfT2wrmOQX-_TCCqEjprfN3FFkMUjcP8LhdihQ/edit
*2026-06-10T00:49:16Z*

SOMA×Fable5 vision+gaps+roadmap — Fable5 articulation (vision/gaps/extensions/fleet-routing/roadmap), Opie dissent, phased plan June 2026; free window June 9-22


---

### [1c0a0e1e17a3] [report] ~/Projects/SOMA/state/proposals/player-benefits-portal-proposal.md
*2026-06-09T18:35:30Z* confidence=0.9

Proactive proposal to Greg: 5 enhancements to player-benefits.html (estimator, missed-benefits surfacer, contact router, checklists, printable summary) — all auto-green under ; awaiting Greg approval

**Owner:** AI-CCc

**Next:** Greg reviews and approves direction; AI team builds on green-light


---

### [af3a5013f94c] [report] claude-email-daemon--hermes-dispatch-stub
*2026-06-09T17:03:07Z* confidence=0.7

[half-built-feature | MED] Email dispatch daemon handles [DISPATCH:Mac] and [DISPATCH:VPS] subjects but [DISPATCH:Hermes] is a stub that falls back to VPS with a 'not yet implemented' message | Evidence: daemon.py: '# TODO: Hermes dispatch — not yet installed on VPS' and 'logging.info(f"[DISPATCH:Hermes] not yet implemented, notifying sender")' | Path: ~/Projects/claude-email-daemon/daemon.py

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** finish


---

### [a591330c5766] [report] mcp_agent_mail-vs-mcp_agent_mail_fresh--dual-active-copies
*2026-06-09T17:03:07Z* confidence=0.7

[half-built-feature | MED] Two copies of Agent Mail MCP server exist; _fresh appears to be the active fork with local patches (SQLite lock fixes, CORS hardening, health endpoint) on top of upstream | Evidence: mcp_agent_mail_fresh has commits: 'Update pyproject.toml and add local modifications' followed by fix commits; mcp_agent_mail appears to be unmodified | Path: ~/Projects/mcp_agent_mail/ and ~/Projects/mcp_agent_mail_fresh/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** archive


---

### [53f20941ed53] [report] pi-mono--badlogic-pi-coding-agent-upstream-fork
*2026-06-09T17:03:07Z* confidence=0.5

[built-then-abandoned | LOW] Fork of the pi monorepo (pi coding agent + multi-provider LLM SDK + TUI library); 3322 commits, tracking upstream | Evidence: README identifies it as shittycodingagent.ai / pi.dev project; recent commits are upstream bug fixes; not a SOMA-originated project | Path: ~/Projects/pi-mono/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** archive


---

### [d6c74d7b1b0b] [report] wolfchat--livekit-video-chat-app-no-docs-no-git
*2026-06-09T17:03:07Z* confidence=0.7

[working-but-undocumented | MED] React + LiveKit video conference app targeting the VPS LiveKit instance (wss://vpsmikewolf.duckdns.org), with Netlify Functions token generation | Evidence: App.jsx is functional with full join/disconnect flow; connects to VPS LiveKit; no README, no git repo | Path: ~/Projects/wolfchat/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** document


---

### [a2470d25d924] [report] memoruptus--hallelujah-→-memoruptus-musicxml-transform
*2026-06-09T17:03:07Z* confidence=0.5

[working-but-undocumented | LOW] Python script using music21 to syllabically substitute 'Hallelujah' with 'Memoruptus' in Handel's Hallelujah Chorus MusicXML | Evidence: transform.py, source-hallelujah.musicxml, memoruptus-hallelujah.musicxml, and REPORT.md all present | Path: ~/Projects/memoruptus/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** archive


---

### [b3bfb05db9bc] [report] iris-app-web--clerk--stripe--supabase-product-shell
*2026-06-09T17:03:07Z* confidence=0.85

[half-built-feature | HIGH] Next.js 14 app with Clerk auth, Stripe billing (3 tiers), Supabase courses schema, dashboard, gallery, pricing page — real data fetch stubbed out | Evidence: dashboard/page.tsx has commented-out real fetch block: 'Real fetch would go here after auth integration'; 3 commits only, data fetch is demo-mode empt | Path: ~/Projects/iris-app-web/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** finish


---

### [cbe0cd081c5d] [report] error-mining-repo--orphaned-placeholder
*2026-06-09T17:03:07Z* confidence=0.5

[built-then-abandoned | LOW] Repo exists but README contains only the word 'sampling' — no discernible purpose or content | Evidence: README.md contains only 'sampling'; no other files evident in root listing | Path: ~/Projects/error-mining/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** archive


---

### [a56d4b0cd286] [report] mac-controller-axorcist-swift-rewrite-target
*2026-06-09T17:03:07Z* confidence=0.7

[idea | MED] AXorcist (Swift MIT, async/await, fuzzy matching) noted in KNOWLEDGE.md as a potential future rewrite target for claude_ax.py | Evidence: KNOWLEDGE.md External references section: 'AXorcist — potential future rewrite target' | Path: ~/Projects/mac-controller/KNOWLEDGE.md

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** resume


---

### [5256e1ad29a5] [report] wacli--released-whatsapp-cli-v081
*2026-06-09T17:03:07Z* confidence=0.85

[working-but-undocumented | HIGH] Full-featured WhatsApp CLI (Go/whatsmeow) — sync, send, search, groups, channels, media, webhooks — released on Homebrew tap | Evidence: git log shows 'chore: release 0.8.1' as HEAD; Homebrew tap steipete/tap/wacli; full docs at wacli.sh | Path: ~/Projects/wacli/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** document


---

### [932cb8964d4e] [report] yeshie-self-improvement-protocol-improvejs
*2026-06-09T17:03:07Z* confidence=0.85

[working-but-undocumented | HIGH] Post-run selector merge script that feeds resolved selectors and confidence scores back into payload and site model files — the core learning flywheel | Evidence: README.md documents the protocol in detail; 176/176 unit tests passing including unit/improve-script: 2/2 | Path: ~/Projects/yeshie/improve.js

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** harvest-pattern


---

### [edece11748a9] [report] yeshie-stale-docs---tracked-build-noise-cleanup
*2026-06-09T17:03:07Z* confidence=0.5

[half-built-feature | LOW] Repo contains already-tracked build/vendor files and doc divergence between SPECIFICATION.md (historical) and current extension/relay architecture | Evidence: PROJECT-STATE.md Next item 4 + SPECIFICATION.md header: 'This document is no longer the authoritative description' | Path: ~/Projects/yeshie/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** archive


---

### [47d4acd3cebb] [report] yeshie-expired-session-login-recovery-loop
*2026-06-09T17:03:07Z* confidence=0.7

[half-built-feature | MED] End-to-end login recovery when a session expires mid-payload — unit coverage exists but no integration run | Evidence: PROJECT-STATE.md Next item 2: 'Run the full expired-session login recovery loop end to end, not just unit coverage' | Path: ~/Projects/yeshie/PROJECT-STATE.md

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** finish


---

### [4f8d2b64693a] [report] yeshie-integration-setup-payload-05-never-run
*2026-06-09T17:03:07Z* confidence=0.7

[half-built-feature | MED] SCIM/API integration setup automation payload for YeshID — written but never validated against a real target | Evidence: PROJECT-STATE.md explicitly lists '05-integration-setup: NOT RUN' while tasks 01-04 all show PASS | Path: ~/Projects/yeshie/sites/yeshid/tasks/05-integration-setup.payload.json

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** finish


---

### [8a581b7073ac] [report] webwright--terminal-first-browser-web-agent-framework
*2026-06-09T17:03:07Z* confidence=0.85

[working-but-undocumented | HIGH] Microsoft Research open-source framework that turns coding models into browser agents via a terminal+Playwright environment; supports Claude Code, Codex, Hermes, OpenClaw as plugins | Evidence: 42 commits; active maintenance (trajectory comparison tool added May 2026); Claude Code skill at skills/webwright/; Task2UI mode added May 11; README  | Path: ~/Projects/Webwright/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** harvest-pattern


---

### [d2c41a86774e] [report] llms4elders--ai-compadre-landing-page-for-55-audience
*2026-06-09T17:03:07Z* confidence=0.7

[built-then-abandoned | MED] Landing page for 'Compadre' AI coaching product targeting seniors — reframed as relationship broker (not replacement); live at joyofinternet.com and llms4elders.netlify.app | Evidence: REWRITE_NOTES.md documents April 23 2026 reframe; CHAT-HANDOFF.md shows active copy-writing handoff in progress; thinking.html with strategic rational | Path: ~/Projects/llms4elders/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** document


---

### [866a6f0a5833] [report] lutomski-glass--stained-glass-portfolio-site
*2026-06-09T17:03:06Z* confidence=0.5

[working-but-undocumented | LOW] Static stained glass artist portfolio: single-page index.html + main.js + style.css + photos dir + netlify.toml | Evidence: Netlify deploy config present; photos/ dir; minimal 1-commit repo; no README | Path: ~/Projects/lutomski-glass/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** archive


---

### [39c14d6c7464] [report] nbarpa2--nbarpa-supabase-rewrite-with-guided-onboarding
*2026-06-09T17:03:06Z* confidence=0.85

[half-built-feature | HIGH] 68-commit rewrite of NBARPA using Supabase, Tailwind, React Router with individual pillar routes and a COMMENT_RECORDER_PLAN.md for a planned comment-recording feature | Evidence: 68 commits; supabase/ dir; COMMENT_RECORDER_PLAN.md; last commit fixes missing Play import — active work; pillar navigation routes added recently | Path: ~/Projects/NBARPA2/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** resume


---

### [2fc4061a5fb0] [report] nbarpa--nba-retired-players-association-firebase-app
*2026-06-09T17:03:06Z* confidence=0.5

[built-then-abandoned | LOW] React app with Firebase backend for NBA retired players association with onboarding flow, PDF report features, autocomplete, auto-advance | Evidence: 21 commits; extensive docs; Superseded by NBARPA2 (68 commits) which migrated to Supabase + React Router | Path: ~/Projects/NBARPA/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** archive


---

### [97b43659d01d] [report] second-breakfast-circle--3d-virtual-circle-room-app
*2026-06-09T17:03:06Z* confidence=0.85

[half-built-feature | HIGH] React Three Fiber + Supabase app rendering a 3D circular meeting room with talking stick, participants, audio controls, onboarding tour, and admin panel — a virtual council/meeting space | Evidence: 12+ components including CircularRoom, TalkingStick, Participants, AudioControls, OnboardingTour, AdminPanel, SettingsDialog; Supabase dir present; 1  | Path: ~/Projects/Second-Breakfast-Circle/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** resume


---

### [885ff1f1400e] [report] flywheel-skills--flywheel-orchestration-skill-stubs
*2026-06-09T17:03:06Z* confidence=0.5

[half-built-feature | LOW] Skill stubs for code-space-orchestrator, planning-orchestrator, and requirement-extraction with a REVIEW-AND-CHANGES.md audit file | Evidence: ls shows 3 skill dirs + REVIEW-AND-CHANGES.md; 1 commit; duplicates some content in draft-skills | Path: ~/Projects/flywheel-skills/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** archive


---

### [0a0984625008] [report] pi-skills--cross-agent-skill-collection
*2026-06-09T17:03:06Z* confidence=0.7

[working-but-undocumented | MED] Skills for pi-coding-agent, Codex CLI, Amp, Droid, and Claude Code: brave-search, browser-tools, gccli, gdcli, gmcli, transcribe, vscode, youtube-transcript | Evidence: README has full install docs for 5 agent platforms; 24 commits; upstream repo badlogic/pi-skills; Claude Code symlink instructions included | Path: ~/Projects/pi-skills/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** harvest-pattern


---

### [c1ad7adc268a] [report] draft-skills--unfinished-claude-code-skills
*2026-06-09T17:03:06Z* confidence=0.7

[half-built-feature | MED] Draft versions of 4 skills: claude-email, code-space-orchestrator, requirement-extraction, spec-writer — each with only a SKILL.md stub and scripts/ dir | Evidence: ls shows only SKILL.md + scripts per skill dir; no README; 1 commit; some overlap with flywheel-skills | Path: ~/Projects/draft-skills/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** document


---

### [e3394484e6bb] [report] autoimprove--autonomous-agent-self-optimization-loop-skill
*2026-06-09T17:03:06Z* confidence=0.85

[working-but-undocumented | HIGH] Claude Code skill that scaffolds an eval harness, establishes baselines, proposes+commits changes, runs tests, reverts on regression — full autonomous improvement loop | Evidence: README is detailed and production-quality; has skills/ dir and docs/; 20 commits; inspired by Karpathy autoresearch | Path: ~/Projects/autoimprove/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** harvest-pattern


---

### [90756a1f6b13] [report] dunnett-companion--dorothy-dunnett-reader-companion-site
*2026-06-09T17:03:06Z* confidence=0.5

[working-but-undocumented | LOW] Birthday gift site for Jan Fergus with character browser, timeline, and ask-the-book AI; live at dunnett.netlify.app; improve.md suggests iteration intent | Evidence: Live Netlify URL in README; has characters.html, timeline.html, ask.html, birthday-song.mp3, improve.md; 18 commits | Path: ~/Projects/dunnett-companion/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** archive


---

### [662098eba463] [report] singalong--browser-multi-track-overdub-recorder
*2026-06-09T17:03:06Z* confidence=0.85

[half-built-feature | HIGH] Web Audio API + MediaRecorder overdub recorder with reference track + layered recordings; full rewrite from Firebase/Overmind legacy; 48 unit + 21 Playwright E2E tests written | Evidence: 48 commits; SPECIFICATION.md fully resolved; test suite exists; roadmap items (waveforms, export, video, WebRTC shared sessions) not yet built | Path: ~/Projects/singalong/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** resume


---

### [42a4a2a4de54] [report] origink--voice--image-interview-app
*2026-06-09T17:03:06Z* confidence=0.7

[half-built-feature | MED] React/Vite app with Auth, Gallery, and Interview pages plus ImageAnnotator and VoiceButton components — AI-assisted interview/annotation tool for images | Evidence: Has ProtectedRoute auth flow, interview/:id route, ImageAnnotator and VoiceButton components; dist/ and netlify.toml present suggesting partial deploy | Path: ~/Projects/origink/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** document


---

### [bdc13cd60953] [report] pom--tauri-desktop-app-scaffold
*2026-06-09T17:03:06Z* confidence=0.5

[half-built-feature | LOW] Tauri + React + TypeScript desktop app named 'pom', at version 0.1.0 with only the default Vite/Tauri scaffold — no app logic written | Evidence: README is unmodified Tauri template; src/ contains only App.tsx, App.css, main.tsx, vite-env.d.ts — no feature code; 2 commits total | Path: ~/Projects/pom/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** archive


---

### [9d88c9dbb68e] [report] cc-dispatch--local-pi-rpc-dispatch-cli-undocumented-in-som
*2026-06-09T17:03:06Z* confidence=0.85

[working-but-undocumented | HIGH] Bash+Python CLI wrapping pi RPC for warm-context multi-turn agent delegation with HUD notification and structured report writing | Evidence: KNOWLEDGE.md shows full architecture; bash+Python+lib/ structure present; SOMA-STATE and CLAUDE.md reference it as canonical dispatch tool. cc-dispatc | Path: ~/Projects/cc-dispatch/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** document


---

### [77ca2f1ef5a6] [report] siliconchildrencollab--multi-model-roundtable-runner
*2026-06-09T17:03:06Z* confidence=0.7

[half-built-feature | MED] Bun/TS orchestrator that injects prompts into ChatGPT/Grok/Gemini tabs via MCP browser control, captures responses, runs synthesis rounds, and posts to Discord | Evidence: PLAN.md checklist: ChatGPT/Grok/Gemini inject-and-capture scripts all unchecked; 'workflow orchestrator' unchecked; index.ts contains only 'console.lo | Path: ~/Projects/SiliconChildrenCollab/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** finish


---

### [b952cc5ed1af] [report] yeshid-docs--acimplus-v2-design--yeshid-strategy-docs
*2026-06-09T17:03:06Z* confidence=0.7

[spec/design | MED] ACIMPlus v2 mobile-first spiritual practice app design (Supabase, PWA, 365-lesson AI authoring pipeline) plus YeshID LLM Readiness Strategy docs | Evidence: ACIMPlus-v2-design.md is a full locked design doc (status: 'open questions resolved, decisions locked'); YeshID_LLM_Readiness_Strategy.docx and Making | Path: ~/Projects/yeshid/docs/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** document


---

### [e24cf575f3f1] [report] soma-alarm--build-artifact-only
*2026-06-09T17:03:06Z* confidence=0.5

[built-then-abandoned | LOW] Contains only a build/app directory with no source, README, or CLAUDE.md; purpose unknown | Evidence: ls shows only 'build' directory; no README, no source files, no git history accessible | Path: ~/Projects/soma-alarm/build/app/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** archive


---

### [eb0dab43026e] [report] jiminy--promise-tracking---proof-of-work-daemon
*2026-06-09T17:03:05Z* confidence=0.85

[half-built-feature | HIGH] SQLite-backed daemon that registers PoW artifact paths for cc-dispatch jobs and nags Mike via cc hud-ask when deadlines pass without artifact arrival | Evidence: DESIGN.md status 'Scaffold (not yet installed)'; jiminy.py and jiminy-promise CLI exist; jiminy.db present (WAL files indicate it ran at least once);  | Path: ~/Projects/jiminy/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** finish


---

### [66c319b2d2ec] [report] agent-stuff--pi-skills--extensions-library-mitsupi-npm-pa
*2026-06-09T17:03:05Z* confidence=0.7

[working-but-undocumented | MED] Published npm package of Claude Code / Pi skills (18 skills including web-browser CDP, sentry, mermaid, ghidra) and Pi coding agent extensions (TUI todos, session cost, multi-edit, notify) | Evidence: 203 commits; package published as mitsupi; latest commit dff57a9; actively maintained. Not referenced in SOMA-STATE or CLAUDE.md skills inventory. | Path: ~/Projects/agent-stuff/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** harvest-pattern


---

### [2e3217b6ff83] [report] web-automate--learn-execute-heal-browser-automation-framewo
*2026-06-09T17:03:05Z* confidence=0.85

[working-but-undocumented | HIGH] Browser automation framework that learns tasks via DOM inspection, stores them as YAML scripts, and self-heals on selector failure; 40 YAMLs authored for app.yeshid.com | Evidence: 9 commits; 15 YAML automations for yeshid.com confirmed; SKILL.md present and usable; latest commit 'Add Yeshie implementation plan' suggests it was p | Path: ~/Projects/web-automate/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** resume


---

### [cdd03dfcdeb2] [report] claude-collab-bridge--a2a-multi-agent-thread-store
*2026-06-09T17:03:05Z* confidence=0.7

[half-built-feature | MED] HTTP + CLI bridge that keeps persistent named threads for Claude/Codex/OpenAI agent pairs, with A2A Agent Card and JSON-RPC endpoint | Evidence: 2 commits (f508b6e Add multi-agent bridge, ad2686e Add Codex MCP adapter); full module structure exists (a2a.py, adapters.py, claude_cli.py, server.py | Path: ~/Projects/claude-collab-bridge/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** harvest-pattern


---

### [f9336a36b508] [report] cie--collective-intelligence-engine-fan-out
*2026-06-09T17:03:05Z* confidence=0.85

[working-but-undocumented | HIGH] Python CLI that fans questions out to Claude/GPT/Gemini/Groq/Ollama in parallel with distinct personas, synthesizes structured research reports | Evidence: Single commit 'CIE MVP' (2026-04-06); README shows full quick-start + stub mode; untracked intoo-questions file suggests it was actually used for INTO | Path: ~/Projects/cie/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** resume


---

### [50cb6a26d604] [report] autoloop--agent-iterative-optimization-runtime
*2026-06-09T17:03:05Z* confidence=0.85

[working-but-undocumented | HIGH] Rust CLI that installs agent wrappers (Codex, Claude Code, Cursor, etc.) and runs bounded metric-driven optimization loops on arbitrary repos; published to crates.io and npm at v0.1.3 | Evidence: No TODOs/FIXMEs found in src/; CHANGELOG shows 0.1.3 released 2026-04-02; fully featured (baseline, eval, keep, discard, learn, finalize, doctor comma | Path: ~/Projects/autoloop/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** document


---

### [0095710d2198] [report] career-ops-dashboard-tui--built-but-usage-undocumented
*2026-06-09T17:03:05Z* confidence=0.5

[working-but-undocumented | LOW] Terminal UI to browse, filter, and sort the job pipeline. Listed in README feature table but no dedicated docs. | Evidence: README feature table lists 'Dashboard TUI' as a feature; dashboard/ directory present; no dedicated usage doc or skill command for it | Path: career-ops/dashboard/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** document


---

### [c6df62d89629] [report] sidekick-android--b2-b3-morning-brief-and-end-of-day-prep-m
*2026-06-09T17:03:05Z* confidence=0.7

[half-built-feature | MED] Morning routine alarm fires at 7am but doesn't display today's agenda (B2) or an end-of-day prep alarm (B3). Calendar data available; a today's-agenda card and second alarm slot are the gaps. | Evidence: SOMA-ALARM-GAP.md section 2.1 explicitly lists B2 and B3 as hard gaps; home_page.dart has calendar data via device_calendar | Path: Sidekick-android/lib/src/home_page.dart

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** finish


---

### [c77e583a5fbd] [report] lumen--medical-portal-aggregator-1-commit-scaffold-only
*2026-06-09T17:03:05Z* confidence=0.5

[half-built-feature | LOW] Next.js + Supabase project described as a medical portal aggregator. 1 commit — just the standard Next.js scaffold. | Evidence: git log shows 1 commit; directory has next-env.d.ts, next.config.ts, tailwind.config.ts — standard Next.js scaffold; no README found | Path: LUMEN/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** archive


---

### [e4636324cccc] [report] sidekick-mac-cli--attention-icon--http-endpoint-built
*2026-06-09T17:03:05Z* confidence=0.7

[working-but-undocumented | MED] Menu-bar app with red-dot attention indicator driven by attention.json state file, plus HTTP endpoint for external control. 700+ LOC CLI and 634 LOC GUI. | Evidence: IMPLEMENTATION-NOTES.md documents Feature A (icon state) and Feature B (popup notifications) as newly added; SOMA-ALARM-GAP.md shows significant unfin | Path: Sidekick/sidekick_gui.py

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** document


---

### [6320fd2977ea] [report] sidekick-android-pulsecard-widget--action-handler-not-wired
*2026-06-09T17:03:05Z* confidence=0.7

[half-built-feature | MED] Full PulseCard data model and widget rendering 8 card types with FCM push integration mentioned, but checklist item toggle action handler has a TODO stub. | Evidence: pulse_card_widget.dart: '// TODO: update local state, call onAction with checklist item toggle'; card types and rendering complete | Path: Sidekick-android/lib/src/pulse_card_widget.dart

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** finish


---

### [2eb8a96e47a5] [report] sidekick-android-voice-capture-kvoicecaptureenabled=false
*2026-06-09T17:03:05Z* confidence=0.85

[half-built-feature | HIGH] Flutter voice capture button backed by speech_to_text package, gated behind kVoiceCaptureEnabled=false. RECORD_AUDIO permission needed. | Evidence: kVoiceCaptureEnabled = false; TODO comment: 'set kVoiceCaptureEnabled = true once RECORD_AUDIO permission is confirmed'; pubspec already has speech_to | Path: Sidekick-android/lib/src/voice_capture.dart

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** finish


---

### [b37c31ee4c1b] [report] soma-platform-guide-extension--ariadne-chrome-extension
*2026-06-09T17:03:05Z* confidence=0.7

[half-built-feature | MED] Chrome extension that injects the SOMA guide widget (persona: Ariadne) into any webpage on toolbar click. Follow-ups: distinct ElevenLabs voice, auto-mapper from Yeshie perceive engine, site-aware handoff. | Evidence: manifest.json, background.js, ariadne-config.js, perceive.js all exist; README lists 3 explicit follow-up items as not done; voiceAgentId placeholder  | Path: soma-platform/packages/guide-extension/

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** finish


---

### [961630b70c6a] [report] soma-platform-auth-package--supabase-magic-link-widget
*2026-06-09T17:03:05Z* confidence=0.7

[working-but-undocumented | MED] Standalone Supabase magic-link auth ES module (+ IIFE build) with getRole() support, designed for CDN deployment alongside soma-guide. | Evidence: index.js and soma-auth.iife.js both exist; schema.sql present; soma-auth-config.js present; consuming sites not confirmed integrated | Path: soma-platform/packages/auth/index.js

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** document


---

### [90d07429e548] [report] intoo-lead-gen-system-built-on-career-ops
*2026-06-09T17:03:05Z* confidence=0.85

[half-built-feature | HIGH] B2B outplacement lead-gen system: scans for layoff signals (layoffs.fyi, news), scores prospects A-F, generates personalized LinkedIn+email outreach for INTOO's CHROs. Smoke test ran and produced Oracle report. | Evidence: reports/ contains 001-oracle-2026-04-06.md and INTOO-SMOKE-TEST-REPORT.md; INTOO-CLAUDE.md defines 6 slash commands; trigger-sources.yml and intoo-pro | Path: career-ops/INTOO-LEADGEN-SPEC.md

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** finish


---

### [875c464ef75e] [report] greta-multi-script-engine--career_growth-wellness-onboard
*2026-06-09T17:03:04Z* confidence=0.7

[spec/design | MED] Greta's InterviewScript is designed to be pluggable for different verticals. Only ai_skilling script is implemented. | Evidence: SPEC.md lists future scripts: 'career_growth, product_onboarding, wellness'; greta/lib/src/scripts/ directory exists with only ai_skilling | Path: greta/SPEC.md

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** resume


---

### [db1e148ef39a] [report] greta-profilebuilder-v05--answer-analysis-engine
*2026-06-09T17:03:04Z* confidence=0.85

[spec/design | HIGH] Separate ProfileBuilder class that analyzes interview answers and produces structured tags, skill recommendations, and personalized output kit. | Evidence: SPEC.md: 'ProfileBuilder: Not a separate class in v0 — profile is constructed inline on InterviewRunner.done. In v0.5, ProfileBuilder will analyze ans | Path: greta/SPEC.md

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** resume


---

### [7918d335894f] [report] greta-v05--voice-path-tts--stt
*2026-06-09T17:03:04Z* confidence=0.85

[half-built-feature | HIGH] Greta's voice layer: Gemini TTS (Aoede voice) reads each question aloud; Flutter speech_to_text lets users answer by voice. v0 ships text-only; v0.5 is the voice path. pubspec already has speech_to_text dep. | Evidence: SPEC.md explicitly marks: 'Voice Path (deferred to v0.5)'; Flutter app is built and running; speech_to_text package added to pubspec but not wired | Path: greta/SPEC.md

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** resume


---

### [6d1f9efa31f2] [report] frontrow-mcp-server-integration
*2026-06-09T17:03:04Z* confidence=0.5

[half-built-feature | LOW] MCP server added to the FrontRow dev stack (start_dev.py --full) for AI integration, but only documented as a setup step with no implemented tools surfaced. | Evidence: MCP_CURSOR_SETUP.md exists; start_dev.py --mcp-only flag present; no MCP tool definitions found in source scan | Path: FrontRow/MCP_CURSOR_SETUP.md

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** archive


---

### [1d75c2d3e812] [report] frontrow-phase-2--5-feature-theater-expansion
*2026-06-09T17:03:04Z* confidence=0.85

[spec/design | HIGH] Detailed spec for background removal (MediaPipe), house-manager config panel, backstage room, reaction system via LiveKit DataChannel, and curtain/entrance animations — none of Phase 2 is built. | Evidence: SPEC-PHASE2.md status field: 'Draft'; success-criteria checkboxes all unchecked; BackstageRoom.tsx and HouseManagerApp.tsx exist as stubs in front-row | Path: FrontRow/SPEC-PHASE2.md

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** resume


---

### [d16f6fb75751] [report] pulse-fcm-client-handler--mac-offline-alert
*2026-06-09T17:03:04Z* confidence=0.7

[half-built-feature | MED] Pulse client-side handler for mac-offline-alert events from the VPS watchdog (ntfy.sh); watchdog is installed and firing, but Pulse does not surface the alert natively | Evidence: 'BACKLOG P2. Mac offline watchdog (installed 2026-05-13 on VPS) fires ntfy.sh alerts. Pulse client should receive and surface FCM/ntfy mac-offline-ale | Path: ~/Projects/SOMA/state/backlog.md

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** finish


---

### [e866adec7028] [report] greta-v1--bidirectional-voice-mode
*2026-06-09T17:03:04Z* confidence=0.85

[half-built-feature | HIGH] Greta voice agent with STT layer to receive Zoom guest audio and feed transcript back to context; v0.5 (TTS-only over BlackHole) shipped for Eric Kohner meeting | Evidence: 'Greta v0.5 launched for Eric Kohner meeting 2026-05-13 (TTS over BlackHole → Zoom). v1 means bidirectional: Greta speaks AND listens via STT.' BACKLO | Path: ~/Projects/SOMA/state/backlog.md

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** finish


---

### [30e1341b1e22] [report] soma-app-one-prompt-generator
*2026-06-09T17:03:04Z* confidence=0.85

[idea | HIGH] Single-prompt coordinator that orchestrates 9 specialist AI agents to generate a complete SOMA app (all nine surfaces); manual parallel dispatch was used for the medical aggregator but the coordinator itself was not built | Evidence: 'BACKLOG | P2. The true SOMA-app generator doesn't exist yet. The spec and 9 specialist designs are complete; the coordinator is the missing piece.' | Path: ~/Projects/SOMA/state/backlog.md

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** resume


---

### [45ba6caf4c0b] [report] pulse-kanban-board
*2026-06-09T17:03:04Z* confidence=0.85

[idea | HIGH] Kanban-style Pulse panel showing in-flight dispatch jobs, which worker is on each, with drill-down; visualization layer over existing cc-dispatch ledger | Evidence: 'Status: BACKLOG | Priority: P2'. 'The data is there; the work is the Pulse UI view + a lightweight aggregator. Teams too busy.' | Path: ~/Projects/SOMA/state/backlog.md

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** resume


---

### [484415c4b1cb] [report] estimation-protocol-v1--calibration-loop-not-wired
*2026-06-09T17:03:04Z* confidence=0.7

[working-but-undocumented | MED] Operating doctrine for task estimation using three-point estimates; the calibration feedback loop (comparing estimates to actuals) is not wired | Evidence: 'Will revise as the calibration loop accumulates lived data.' No mechanism captures estimate vs actual data. | Path: ~/Projects/SOMA/specs/estimation-protocol-v1.md

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** document


---

### [6598a55a7ad1] [report] pulse-r8--personal-health--reminders-tracks
*2026-06-09T17:03:04Z* confidence=0.85

[spec/design | HIGH] Four-track parallel build scaffold for Pulse r8: Track A (Reminders), Track B (web_shell + artifact viewer), Track C (Personal Health), Track D (Soma Net spec doc) | Evidence: 'until they exist, PersonalHealthScreen shows the stub widget' — implies Track C endpoints not yet built. Pulse Kanban Board listed as P2 BACKLOG sepa | Path: ~/Projects/SOMA/specs/pulse-r8-scaffold-v1.md

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** resume


---

### [2eb97a84a044] [report] soma-mobile-master--limitless-pendant-api-w14
*2026-06-09T17:03:04Z* confidence=0.7

[half-built-feature | MED] Limitless Pendant API integration for SOMA mobile (pendant-pull.py); W1.5 complete, W1.6 gated, W1.4 has immediate actions listed but pendant-pull.py not built | Evidence: W1.4 (Limitless API) has immediate actions listed; no audit shows pendant-pull.py was built. Backlog P3. | Path: ~/Projects/SOMA/specs/soma-mobile-master.md

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** finish


---

### [ba5c34675a51] [report] soma-mail-server-v1--dns-cutover-pending
*2026-06-09T17:03:04Z* confidence=0.85

[half-built-feature | HIGH] Stalwart multi-tenant mail server running on VPS with 3 domains and 13 forwarding aliases; outbound via Postmark relay pending DNS cutover and Postmark credentials | Evidence: 'Status: Stalwart running on VPS. Mail ports bound. UFW blocking externally until DNS cutover.' Open actions: Postmark credentials pending, DNS cutove | Path: ~/Projects/SOMA/specs/soma-mail-server-v1.md

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** finish


---

### [ea8418bd95ce] [report] soma-mail-server-v0
*2026-06-09T17:03:04Z* confidence=0.5

[built-then-abandoned | LOW] First-pass design for Docker-based Stalwart multi-tenant mail server on VPS; DNS not yet cut over at time of writing | Evidence: 'Status: Design + first-pass Docker install (no live DNS yet)'. Superseded by v1. | Path: ~/Projects/SOMA/specs/soma-mail-server-v0.md

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** archive


---

### [e18d414cc549] [report] permission-nag-system-v1
*2026-06-09T17:03:04Z* confidence=0.85

[spec/design | HIGH] Pulse UI component polling mcp__hermes__permissions_list_open every 10s to surface pending Cowork approval requests with allow-once/allow-always/deny buttons; escalation ladder keyed to focus-hud state | Evidence: 'Status: draft — 2026-05-10'. Implementation plan Day 1–3 with open questions unresolved. No audit shows this was built. | Path: ~/Projects/SOMA/specs/permission-nag-system-v1.md

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** resume


---

### [00523814d88c] [report] heartbeat-pattern-v1--phase-2-expansion
*2026-06-09T17:03:04Z* confidence=0.7

[half-built-feature | MED] Bash-script heartbeat envelope pattern for always-on VPS agents; Phase 1 (sources defined) marked built, Phase 2+ (additional sources) planned but not built | Evidence: 'Phase 2+ (planned, not built)' sections present. | Path: ~/Projects/SOMA/specs/heartbeat-pattern-v1.md

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** document


---

### [3cb46d094eca] [report] conversational-latency--elevenlabs-soft_timeout-fix
*2026-06-09T17:03:03Z* confidence=0.85

[spec/design | HIGH] Recommendation to wire ElevenLabs soft_timeout at 2.5s for canned-acknowledgement layer to eliminate 9-second dead hangs in Dewey/Bill/Iris voice agents | Evidence: 'Spec v1.0 | 2026-05-21'. 'wire this up immediately'. 'ElevenLabs already ships a built-in soft_timeout primitive.' No audit shows this was implemente | Path: ~/Projects/SOMA/specs/conversational-latency-architecture.md

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** finish


---

### [ad3c64c04fb6] [report] full-app-capability-spec-9-surface-coordinator
*2026-06-09T17:03:03Z* confidence=0.85

[spec/design | HIGH] Meta-spec defining nine surfaces (marketing, onboarding, core app, admin, payments, notifications, support, infrastructure, data) that any complete SOMA app must address; the coordinator that runs 9 specialist agents is the missing piece | Evidence: 'Status: Draft for the propose-then-bulletproof loop.' Backlog: 'The coordinator that orchestrates them from a single prompt is the missing piece.' | Path: ~/Projects/SOMA/specs/full-app-capability-v1.md

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** resume


---

### [f38b98b81de2] [report] location-tracking-v1-esp32--tasker
*2026-06-09T17:03:03Z* confidence=0.7

[spec/design | MED] ESP32-based room-level presence detection using ESPresense BLE scanning + Pixel Tasker car-zone detection, writing atomic location.json readable by HUD and SOMA agents | Evidence: 'status: draft'. Hardware not purchased. Acceptance criteria 1–6 all unmet. 'Total hardware spend: under $50' and '~3 hours total install' | Path: ~/Projects/SOMA/specs/location-tracking-v1.md

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** resume


---

### [91986dc5978a] [report] tab-harvest-v1--round-2-improvements
*2026-06-09T17:03:03Z* confidence=0.7

[working-but-undocumented | MED] Chrome tab harvester core is SHIPPED (round 1, 2026-05-10). Round 2 recommendations listed: Pulse Harvested-Tabs panel, auto-sweeper, first-opened estimate, per-domain age override — none yet built. | Evidence: 'Spec status: SHIPPED — round 1 (2026-05-10)'. Round 2 recommendations listed but not implemented. | Path: ~/Projects/SOMA/specs/tab-harvest-v1.md

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** finish


---

### [e7fb501c32b6] [report] vps-agent-migration
*2026-06-09T17:03:03Z* confidence=0.85

[half-built-feature | HIGH] Three-phase migration plan to move Dewey and other Mac-only agent processes to the VPS so they are always-on; Phase 1 eliminates the opie reverse-SSH tunnel | Evidence: 'Status: Design spec — RESEARCH ONLY, no migration executed'. But spec confirms: Claude Code CLI, OAuth credentials, and cc-dispatch are already insta | Path: ~/Projects/SOMA/specs/vps-agent-migration-v1.md

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** finish


---

### [ab0d400b6565] [report] daniel-compute-workload-manager
*2026-06-09T17:03:03Z* confidence=0.7

[spec/design | MED] Time-sharing macOS menu-bar app (Python rumps) that lets Mike submit ML/heavy CPU jobs to Daniel's M4 Mac Studio during off-hours with a control surface Daniel can use to evict jobs in under 30 seconds | Evidence: 'Status: Draft, opinionated. Ready for Daniel review.' No audit or build artifact referenced. | Path: ~/Projects/SOMA/specs/daniel-compute-workload-manager-v1.md

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** resume


---

### [df30fd023c92] [report] focus-hud-v1
*2026-06-09T17:03:03Z* confidence=0.85

[spec/design | HIGH] Mac HUD process modeling attention across four states (reflective_focus, reflective_drift, reactive_distraction, reactive_focus) and reflectively prompts at attention transitions | Evidence: 'status: draft'. 'supersedes: ad-hoc Sidekick focus/Pomodoro UX'. Target is hud.py which exists, but no evidence Focus HUD state machine was implement | Path: ~/Projects/SOMA/specs/focus-hud-v1.md

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** resume


---

### [892f0a171490] [report] 3d-cafe--soma-campus-walkable-room
*2026-06-09T17:03:03Z* confidence=0.85

[spec/design | HIGH] Browser-deliverable Three.js/R3F scene on FrontRow's /cafe route where visitors walk through a warm coffeehouse, encounter 6 SOMA personas as avatars, and trigger pre-rendered persona audio intros | Evidence: 'Status: Design draft. Approved in concept by Mike 2026-05-07 night. Implementation pending the open-questions resolution below.' Full build sequence  | Path: ~/Projects/SOMA/specs/3d-cafe-v1.md

**Owner:** mike

**Freshness:** 2026-06-09

**Next:** resume


---

### [a212d85f7aed] [build] https://izzy-assistant.netlify.app
*2026-06-06T14:43:56Z*

Izzy v1 — Witness Projection AI collaborator for Eric (chat UI + /chat endpoint on soma-infer VPS, Sonnet 4.6, persona+knowledge pack). GitHub: eldrgeek/izzy-assistant. Voice hook ready, TBD.

**Owner:** Mike+Claude


---

### [38d61d559a71] [report] https://docs.google.com/document/d/12_YL95N9lmQ0LbTauthorDKGztxgIOEvVPnCjPoiybM/edit?usp=drivesdk
*2026-06-06T14:27:36Z*

Izzy setup guide (Eric): persona, voice-clone+consent, Drive->Izzy; shared with eric@ekosystem.com

**Owner:** Dee


---

### [a659fd1a7391] [build] https://vpsmikewolf.duckdns.org/infer/ask
*2026-06-06T14:13:43Z*

SOMA inference endpoint (VPS, Haiku-backed, public, rate-limited): always-on Q&A for Bill + Ariadne + any SOMA site. Replaces Mike's localhost. Key server-side only.

**Owner:** Dee


---

### [f4d5f5fc4a59] [build] /Users/mikewolf/Projects/soma-platform/packages/auth
*2026-06-05T18:27:33Z*

SOMA Auth v1 (Supabase): wrapper lib + schema + Legends integration (email magic-link, role-gated), graceful-degrading

**Owner:** Dee


---

### [95de09078ad5] [report] /Users/mikewolf/Projects/SOMA/SOMA-AUTH-PLAN.md
*2026-06-05T17:57:56Z*

SOMA Auth build plan: Supabase foundation, Legends target zero, provisioning checklist (Mike: create project + enable Google), broker architecture.

**Owner:** Dee

**Next:** Mike provisions Supabase project → build packages/auth + Legends integration


---

### [f1f4449d699e] [build] /Users/mikewolf/Projects/soma-platform/packages/guide-extension
*2026-06-05T17:19:39Z*

SOMA Guide browser extension (Ariadne): injects the soma-guide widget into any page on toolbar click; MV3, least-privilege, bundled engine. UC2 of Bill-as-product.

**Owner:** Dee


---

### [ca4abadb4e3f] [map] /Users/mikewolf/Projects/SOMA/state/wolf-ed/WEC-sitemap.md
*2026-06-05T17:11:16Z* confidence=0.8

WEC (wolfeducationalconsulting.com) site map v1: nav tree, page purposes, conversion flow (call→intake→client form→match), resource-guide categories. Mapped via HTTP fetch (SSR).

**Owner:** Dee

**Next:** wolf-ed product logic (brain trust); port perceive to Bill


---

### [8cd5d2b8d181] [build] /Users/mikewolf/Projects/SOMA/tools/gdoc-bridge
*2026-06-05T12:28:54Z*

gdoc bridge v0: CLI for AIs to write attributed suggestions into shared Google Docs (Drive HTML approach, clasp OAuth); v1=per-AI service accounts

**Owner:** Dee


---

### [87c0ed0cc1d2] [build] /Users/mikewolf/Projects/SOMA/tools/gdoc-bridge
*2026-06-05T12:27:06Z*

gdoc bridge (append-only, Docs API): AIs write attributed blocks into shared Google Docs; used to post the 4 brain-trust critiques into the cog-arch doc

**Owner:** Dee


---

### [41d6c77abbc9] [report] https://docs.google.com/document/d/1nUKBj9QCyTyeA2P87bNwnLLVUe0Y6QaSWmv4B9eHSqc/edit
*2026-06-05T11:59:33Z*

Cognitive Architecture doc v1.1 (editable Google Doc, comment-shared)

**Owner:** Dee


---

### [f28870d1dd3f] [report] /Users/mikewolf/Projects/SOMA/COGNITIVE-ARCHITECTURE.md
*2026-06-05T11:42:35Z* confidence=0.6

First-cut SOMA cognitive-architecture doc: team-as-distributed-mind, divergence/convergence thesis, component complementarity, system-survival (keep Mike healthy + add humans), function gap-map

**Owner:** Dee

**Next:** brain-trust widen+critique → v2


---

### [50827769e54b] [report] ~/Projects/SOMA/state/braintrust-2026-06-bottleneck-tokens/SYNTHESIS.md
*2026-06-05T00:52:34Z* confidence=1.0

Brain-trust synthesis: 3-model convergence on SOMA bottlenecks — identified Pulse Core (substrate-independent memory) as #1 missing piece and 'the only thing you can't afford to rent'

**Owner:** Gemini / GPT / Claude brain trust

**Freshness:** 2026-06-04

**Next:** Use as seed doc for pulse-core README and initial seeding


---

### [7b2b7a056d34] [build] https://levinese-preview.netlify.app
*2026-06-05T00:52:28Z* confidence=0.85

Proteus on Levinese — production corpus search and transcript explorer for the Levinese language documentation project

**Owner:** Mike / Levinese team

**Freshness:** 2026-06-04


---

### [3cc3e2cbd736] [build] https://vpsmikewolf.duckdns.org/board/
*2026-06-05T00:52:24Z* confidence=0.9

Dee Board — live VPS supervision dashboard showing worker status, completions, spend, and active agents

**Owner:** Dee

**Freshness:** 2026-06-04

**Next:** Integrate pulse-core artifact/decision counts as dashboard panel


---

