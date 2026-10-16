# Operating model

How Rover is managed in the open. One repo. No parallel public schedule elsewhere.

## One repository

`github.com/adamsimms/rover` holds documentation now and firmware/hardware notes as they become public-ready. Split into multiple repos only when there is a concrete reason (CI isolation, binary/CAD bloat, or separate contributor tracks).

## Surfaces and jobs

| Surface | Job | Not this job |
|---|---|---|
| Issues | Atomic tasks; **kind and priority on labels only** (`hardware`, `software`, `fabrication`, `testing`, `funding`, `docs`, `concept`, `site`, `consent`, `model`, `residency`, …; `priority:urgent` / `high` / `medium` / `low`). Do not prefix titles with `[docs]`, `[funding]`, `[residency]`, etc. Funding Issues track apply/submit/decision *tasks*, not essay content; residency-linked funding is separate from research/creation grant packages | Decision log; application essays |
| Milestones | Due-date groupings; manual buffer checkpoints (no external critical-path tool) | A second copy of every Issue description |
| Projects (Roadmap) | Public boards by track: R&D, Funding, Residencies; **Priority** field (Urgent → Low) mirrors the issue labels | Automatic critical-path engine; one Issue on every board |
| Discussions · Announcements | Occasional public journal | Mirror of Issues |
| Discussions · Ideas | Open research before a decision (RFC) | Resolved ADRs (those go in `docs/`) |
| Wiki | Runbooks, glossary, FAQ, how-to-help (when seeded) | Duplicate of `docs/` |
| `docs/` | Parts/BOM notes, software reference, open-decisions register, settled decision records (ADR), as-submitted residency packets (redacted) | Working drafts; restricted ask amounts; unredacted contact details |

**Rule:** if two formats start tracking the same thing, one of them is wrong.

## Priority

Use the same four levels on issue labels and on each Project’s **Priority** field:

| Level | Meaning |
|---|---|
| Urgent | Do next — blocks the critical path into residencies or grant packages |
| High | Soon — needed for the current milestone’s outcomes |
| Medium | Important but not blocking |
| Low | Can wait / nice-to-have |

Keep the label and the Project field in sync when priority changes.

## Project automations

Each board (R&D, Funding, Residencies) keeps Status and issue open/closed in sync via built-in workflows:

| Workflow | Effect |
|---|---|
| **Auto-close issue** | Status → Done closes the Issue |
| **Item closed** | Closing the Issue sets Status → Done |
| **Pull request merged** | Merged PR sets Status → Done |
| **Item added to project** | New items start as Todo |

Configure under each Project’s **⋯ → Workflows**. No custom Actions required for this.

## Private boundary

Only these stay out of the public repo by default:

1. **Restricted application content** — exact ask amounts (and essays) where a funder’s terms restrict public discussion during review — check per program. After submit, as-submitted residency essays may be archived under `docs/residencies/submissions/` once phone, street address, and still-restricted amounts are redacted.
2. **Personal fallback financial numbers** — personal disclosure. What the rover *costs to build* can be public maker-log content.
3. **Consent-sensitive discussion of living people** (including site strategies that name people who have not consented to being discussed).

Build costs, open engineering tradeoffs, consent *protocols* (as practice, once published), and funding *tasks* are fair game.

## Vault / Sketchpad → public

| Layer | Job |
|-------|-----|
| Private Obsidian vault | Reasoning, restricted material, atomic research. Start at the Studio Vault Index, then the Rover project index. |
| `docs/` | Public canon. Adapt outward; never copy the vault wholesale. |
| GitHub Issues | Schedule and tasks. |
| `Sketchpad/` | Throwaway spikes and images. Not a third source of truth. |

**Dual-write:** if a decision, apply-wave status, or hardware shortlist changes, update the vault note and the public `docs/` twin in the same turn. Do not keep a live copy in Sketchpad.

**On residency submit**, promote a redacted as-submitted packet into `docs/residencies/submissions/` so the record is referenceable in git. Originals stay in the vault. Nothing moves wholesale.

## Schedule of record

GitHub Issues (and Milestones once seeded) are the operational schedule. Do not maintain a second live public timeline by hand.

## License

Documentation: CC BY 4.0. Code: Apache-2.0. See root [LICENSE](../LICENSE).
