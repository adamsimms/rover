#!/usr/bin/env bash
# Create Rover Milestone 1 issues, assign to adamsimms, add to Project 3.
set -euo pipefail
REPO="adamsimms/rover"
MS="Milestone 1 — Concept & feasibility"
ASSIGNEE="adamsimms"
PROJECT_NUM=3
OWNER="adamsimms"

created=()

create() {
  local title="$1"
  local labels="$2"
  local body="$3"
  local url
  url=$(gh issue create -R "$REPO" \
    --title "$title" \
    --label "$labels" \
    --milestone "$MS" \
    --assignee "$ASSIGNEE" \
    --body "$body")
  echo "$url"
  created+=("$url")
  gh project item-add "$PROJECT_NUM" --owner "$OWNER" --url "$url" >/dev/null
}

# --- A. Consolidation ---
create "[docs] Consolidate conceptual core into grant-ready statement" "docs,concept" "$(cat <<'EOF'
## Goal
Merge Conceptual Core, Failure as Artistic Material, and Cloudberry/Adrift continuity into one coherent grant-ready public writeup under `docs/concept/`.

## Done when
- Public `docs/` statement exists (single page or small linked set)
- README points at it
- No re-litigation of the settled “why” — consolidation only

## Notes
Vault drafts stay private; adapt outward. Soft Fielding naming; corpus = intent only until rights clear.
EOF
)"

create "[docs] Consolidate hardware + power/solar feasibility section" "docs,hardware" "$(cat <<'EOF'
## Goal
Pull mobility/chassis, power system, and solar structure notes into a public feasibility section. Confirm any “subject to confirmation” numbers before stating them as fact.

## Done when
- `docs/` feasibility writeup (or section) covers chassis/power/solar at grant-credible level
- Unconfirmed figures are explicitly hedged or confirmed
- Long-lead / rough BOM band cross-links to the build-cost issue where useful

## Notes
Decided-on-paper only until spikes close. Camera lock depends on the camera spike issue.
EOF
)"

create "[docs] Publish map — vault notes → docs/ this milestone" "docs,meta,decision" "$(cat <<'EOF'
## Goal
Decide and record which vault notes migrate into which `docs/` pages during M1, and what stays vault-only (private boundary).

## Done when
- Short publish map in `docs/` (or linked from OPERATING-MODEL)
- Clear: vault is not retired; public `docs/` are adapted canonical versions

## Notes
Private forever by default: funder-restricted application content, personal fallback finances, LBI consent-sensitive naming.
EOF
)"

create "[docs] Feasibility synthesis — lock M1 conclusions" "docs,decision" "$(cat <<'EOF'
## Goal
Single short synthesis: concept status, feasibility spikes outcomes, permissions status, residency shortlist status, rough money/time — handoff into Milestone 2 research/creation funding package.

## Done when
- `docs/` synthesis note exists
- Milestone 1 can close when this + key M1 decisions are done

## Notes
Does not replace the full M2 grant binder.
EOF
)"

create "[docs] Publish consent / ethical-AI framing to docs/" "docs,consent" "$(cat <<'EOF'
## Goal
Adapt the vault consent / ethical-AI / cultural-material framing into public `docs/` (e.g. `docs/consent/`). This is the public writeup, not the private named outreach.

## Done when
- Public consent/ethics pages exist and are linked from README or operating model
- No living-people names or LBI consent-sensitive detail

## Notes
Pairs with the personal-contributor consent *process* issue (task tracking).
EOF
)"

create "[docs] Ops architecture one-pager (teleop, veto, OTA)" "docs,software" "$(cat <<'EOF'
## Goal
Short public software/ops sketch for grant/residency feasibility: browser teleop, ultrasonic obstacle veto with override, stuck protocol, watchdog, safe power-on, OTA, dashboard-as-future — **not** storm-response logic.

## Done when
- One-pager (or section) in `docs/`
- Storm logic explicitly listed as later / active design problem

## Notes
Dashboard design remains a later milestone; mention only as planned.
EOF
)"

# --- B. Spikes / decisions ---
create "[model] Decide AI/LM technical approach + Phase 0 PoC samples" "model,decision,spike" "$(cat <<'EOF'
## Goal
Decide the language-model technical approach: model class, how “bounded, cited fragments” works mechanically, and a Phase 0 proof-of-concept path on existing hardware (no full production train).

## Done when
- Approach written in `docs/` or a decision record
- Short **LM PoC** note + sample field-note outputs suitable to cite in grants/residencies
- Open questions listed (serving, onboard vs offboard, etc.)

## Notes
LM PoC = language-model proof of concept. Corpus rights remain separate permission issues — do not imply licensed reuse.
EOF
)"

create "[hardware] Camera framework spike — Pi HQ / NoIR / 850nm / mux" "hardware,spike" "$(cat <<'EOF'
## Goal
Hands-on test pass to validate Pi HQ Camera, NoIR, 850nm illumination, and multiplexer direction before counting the camera system as locked (not just documented).

## Done when
- Spike notes posted (what worked / failed / next)
- Go / revise / later call on the documented architecture
- Feasibility docs updated if the spike changes the story

## Notes
Architecture is written down; this issue is evidence, not a blank redesign.
EOF
)"

create "[site] Location framing for grant and residency use" "site,consent,decision" "$(cat <<'EOF'
## Goal
Decide what can be honestly and accurately said *right now* about the deployment site in applications — without requiring the full Little Bay Islands consent conversation to be finished.

## Done when
- Short public framing language (and “do not say yet” list) recorded
- Aligned with private boundary in OPERATING-MODEL

## Notes
Pinchard’s Island primary remains the settled direction; this is disclosure framing, not site re-selection.
EOF
)"

create "[hardware] Witty Pi wake-on-charge validation spike" "hardware,spike" "$(cat <<'EOF'
## Goal
Validate (or bound the risk of) Witty Pi 4 wake-on-charge / power-management behaviour — the highest paper-only hardware risk for year-long unattended operation.

## Done when
- Bench or documented test result with confidence level
- Feasibility docs updated: confirmed, hedged, or alternate path noted

## Notes
Can remain “active risk” in prose until this closes; do not state as proven before evidence.
EOF
)"

# --- C. Permissions ---
create "[model] Confirm DNE licensing / permissions" "model,spike" "$(cat <<'EOF'
## Goal
Confirm Dictionary of Newfoundland English licensing/permissions path (UTP / Heritage NL as applicable) for the intended uses (quote vs train).

## Done when
- Outreach sent or documented next step with owners
- Status note: allowed / restricted / pending — without dumping corpus text into the repo

## Notes
Public task only; no training dumps in Issues or PRs.
EOF
)"

create "[model] Confirm MUNFLA / archive access path" "model,spike" "$(cat <<'EOF'
## Goal
Open a real access/relationship path for MUNFLA (or related archive) materials relevant to the fragmentary corpus — relationship first, not a bulk data request.

## Done when
- Contact/relationship step taken or scheduled
- Public status note of what’s possible vs blocked

## Notes
Do not commit archive files here.
EOF
)"

create "[model] Creates / vocabulary work — quote vs train rights" "model,spike" "$(cat <<'EOF'
## Goal
Resolve rights for Marlene Creates’s published ice/snow vocabulary work (*Brickle, Nish, and Knobbly* and related) — quoting in docs/grants vs any training use.

## Done when
- Clear allowed uses written
- Public materials only claim what is cleared

## Notes
Intent-only until cleared.
EOF
)"

create "[consent] Personal-contributor consent process (public task)" "consent,site" "$(cat <<'EOF'
## Goal
Track the *process* for personal-contributor consent (family/community) as a public checklist — no names, no private correspondence.

## Done when
- Process steps published or linked from `docs/consent/`
- Issue can close when process is defined and in motion; individual conversations stay private

## Notes
LBI living-people consent content stays out of this repo until people consent to being discussed.
EOF
)"

create "[concept] Fielding literary-homage permission outreach" "concept,spike" "$(cat <<'EOF'
## Goal
Seek permission for the fuller literary homage behind the device name Fielding. Until then, public docs keep the short hedged form only.

## Done when
- Outreach completed or documented next step
- Public README/docs updated if permission status changes

## Notes
Device name Fielding may already be used; this issue is the homage paragraph / Custodian parallel, not renaming the rover.
EOF
)"

# --- D. Research/creation budget & timeline ---
create "[funding] Build cost + contingency (BOM band, travel, site prep)" "funding,spike" "$(cat <<'EOF'
## Goal
Public maker-log cost picture for the rover build: confirm ~CAD 3,550–4,750 hardware band (or revise), plus travel, site prep, contingency. Include high-level long-lead part identification and SIM/data cost band if known.

## Done when
- Cost table in `docs/` or on this issue with confidence notes
- Personal fallback finances stay private
- Exact research/creation *ask* amounts stay for M2 / private as funder terms require

## Notes
Residency funding is a separate track (residency funding applications issue).
EOF
)"

create "[funding] Rough ~2 year timeline — feasibility through early outputs" "funding,spike" "$(cat <<'EOF'
## Goal
Coarse **~2 year** timeline: feasibility → residencies → build → deploy → early outputs. Feeds residency planning and M2 grant calendar.

## Done when
- Simple phased timeline posted in `docs/` or on this issue
- Residencies visible as a track without duplicating the residency shortlist issue

## Notes
Assume ~2 years overall unless later revised.
EOF
)"

create "[funding] Program / discipline fit check (CC / CALQ path)" "funding,spike" "$(cat <<'EOF'
## Goal
Confirm research/creation program and discipline framing (e.g. Digital Arts vs Visual Arts) and whether a short program-officer conversation is needed before M2 drafting.

## Done when
- Recommended discipline/program notes recorded
- Next action clear (M2 can draft against it)

## Notes
Tracks *fit*, not the full application binder (Milestone 2).
EOF
)"

# --- E. Residencies ---
create "[residency] Shortlist — eligibility, prioritization, deadlines" "residency,decision" "$(cat <<'EOF'
## Goal
Build and validate the residency shortlist: eligibility, prioritization, deadline validation. No per-program apply Issues yet — those come after this shortlist is selected.

## Done when
- Shortlist table: program, fit, eligibility, deadline, priority
- Clear which calls are in/out for the near window

## Notes
Montreal-first preference and NL site-linked calls may appear; keep essays and private contacts out of the issue.
EOF
)"

create "[residency] Package resources — proposal, statement, timeline, materials" "residency,docs" "$(cat <<'EOF'
## Goal
Compile shared residency application resources reusable across calls: project proposal, artist statement, timeline, and supporting materials (not the post-acceptance funding ask).

## Done when
- Package checklist + drafts location recorded (public `docs/` and/or private vault pointers without leaking private content)
- Materials are ready enough to adapt per call after shortlist

## Notes
Individual residency submissions are separate Issues after the shortlist is chosen.
EOF
)"

create "[residency] Funding applications — CALQ / CAC after acceptance" "residency,funding" "$(cat <<'EOF'
## Goal
Track residency-**linked** funding applications (e.g. CALQ or Canada Council) submitted **once accepted** to a residency. Separate from research/creation grant packages (Milestone 2) and from the shared residency package resources.

## Done when
- Process/checklist for post-acceptance funding asks exists
- Concrete submit Issues can be opened per acceptance without redesigning the wheel

## Notes
Exact ask amounts may stay private if funder terms restrict discussion; track the task publicly.
EOF
)"

# --- F. Setup ---
create "[docs] Create docs/bibliography.md (living bibliography)" "docs,concept" "$(cat <<'EOF'
## Goal
Create `docs/bibliography.md` as the living bibliography page. Content grows continuously; this Issue is the one-time setup (structure + seed entries). Ongoing additions can be PRs or comments.

## Done when
- File exists and is linked from README or conceptual docs
- Seed structure (sections + a few starter entries) in place

## Notes
Lives in `docs/`, not the Wiki.
EOF
)"

echo "Created ${#created[@]} issues:"
printf '%s\n' "${created[@]}"
