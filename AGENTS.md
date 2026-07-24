# Agent notes

Rover is developed primarily with Cursor, in the open. Prefer **one milestone (or one issue) per chat** when the work is mechanical.

## Canonical docs

1. [docs/concept/conceptual-core.md](docs/concept/conceptual-core.md) — what the work is  
2. [docs/OPERATING-MODEL.md](docs/OPERATING-MODEL.md) — public GitHub surfaces and private boundary  
3. [docs/open-decisions.md](docs/open-decisions.md) — open decision register  
4. [docs/decisions/](docs/decisions/) — settled ADRs (when present)  

Also: [README.md](README.md), [CONTRIBUTING.md](CONTRIBUTING.md), [LICENSE](LICENSE), [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md), [SECURITY.md](SECURITY.md).

## GitHub Projects

| Board | Role |
|-------|------|
| **[Rover — R&D](https://github.com/users/adamsimms/projects/3)** | Concept, feasibility, spikes, permissions, consent docs |
| **[Rover — Funding](https://github.com/users/adamsimms/projects/4)** | Research/creation money/timeline/fit; Milestone 2 grant package |
| **[Rover — Residencies](https://github.com/users/adamsimms/projects/5)** | Shortlist, package resources, post-acceptance residency funding |

Do not invent additional boards without an explicit ask. Put Issues on the board that owns the track (an Issue should not live on all three).

## Hard rules

- Do **not** invent site permissions, family/community consent, funder commitments, or corpus/training rights.
- Do **not** commit training corpora, copyrighted dictionary/archive dumps, chassis CAD/HTML mockups, or large binaries unless an issue **explicitly** asks and the artist confirms.
- Do **not** publish Little Bay Islands consent-sensitive material or funder essay/ask amounts where terms restrict discussion. See the private boundary in [docs/OPERATING-MODEL.md](docs/OPERATING-MODEL.md).
- Device name **Fielding** may be used; do **not** expand the literary homage in public docs until permission is confirmed.
- Corpus: describe *intent* only until rights are cleared — never imply licensed training reuse.
- Dual license: docs/non-code → CC BY 4.0; software → Apache-2.0. See [LICENSE](LICENSE).
- Never use the word “master” in new user-facing text, docs, comments, or identifiers (prefer *default branch*, *canonical*, *primary*).
- Prefer label `software` (not `firmware`) for onboard/control code issues.

## Model routing (guidance)

| Prefer | When |
|--------|------|
| Judgment-heavy model | Concept, consent ethics, grant *task* framing, tone |
| Fast / mechanical model | Docs moves, templates, labels, git hygiene once decided |

Pattern: `Work issue #N — … Follow docs/concept/conceptual-core.md and AGENTS.md.`
