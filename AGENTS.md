# Agent notes

Rover is developed primarily with Cursor, in the open. Prefer **one milestone (or one issue) per chat** when the work is mechanical.

## Canonical docs

1. [docs/concept/conceptual-core.md](docs/concept/conceptual-core.md) — what the work is  
2. [docs/OPERATING-MODEL.md](docs/OPERATING-MODEL.md) — public GitHub surfaces and private boundary  
3. [docs/open-decisions.md](docs/open-decisions.md) — open decision register  
4. [docs/decisions/](docs/decisions/) — settled ADRs (when present)  

Also: [README.md](README.md), [CONTRIBUTING.md](CONTRIBUTING.md), [LICENSE](LICENSE), [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md), [SECURITY.md](SECURITY.md), residency process [docs/residencies/](docs/residencies/) (incl. [application-craft.md](docs/residencies/application-craft.md)).

## Private vault, docs, and Sketchpad

Working notes live in a local Obsidian vault (not this repo). A gitignored Cursor rule names the path on this machine. Start at the Studio Vault Index, then the Rover project index, then one topical MOC. Sibling projects (Glowberry, Dreamberry, Camera Philosophies) share that vault in per-project folders. Filename prefixes stay (`Rover -`, `Glowberry -`, and so on). Do not copy restricted material into this repo. Public `docs/` are the adapted canon.

| Fact | Source of truth |
|------|-----------------|
| Tasks and dates | GitHub Issues |
| Public concept and submitted packets | `docs/` |
| Private reasoning, restricted asks, named people | Vault |
| Scratch files | `Sketchpad/`, then delete or promote |

**Dual-write:** when a chat changes a decision, apply-wave status, or hardware shortlist, update the vault note and the public `docs/` twin in the same turn. Do not keep a live copy in Sketchpad. Long application drafts stay in the vault (or Sketchpad) until submit; then a redacted packet goes to `docs/residencies/submissions/`.

`Sketchpad/` is a git-ignored local playground (drafts, images, spikes). Cursor may read it as context; never commit its contents. Create with `mkdir Sketchpad` if missing. Not a source of truth and not a substitute for the private boundary in [docs/OPERATING-MODEL.md](docs/OPERATING-MODEL.md).

## Bibliography / Zotero

Zotero is the PDF and source library (Rover collection, tags such as `rover`). The vault does not sync with it. CITATION notes may record optional `citekey` / `zotero` breadcrumbs. Do not query `~/Zotero/zotero.sqlite`. Do not invent citations or dump corpora. Sketchpad `import_*_to_zotero.py` scripts are one-shot imports, not agent tools.

## GitHub Projects

| Board | Role |
|-------|------|
| **[Rover — R&D](https://github.com/users/adamsimms/projects/3)** | Concept, feasibility, spikes, permissions, consent docs |
| **[Rover — Funding](https://github.com/users/adamsimms/projects/4)** | Research/creation money/timeline/fit; Milestone 3 grant package |
| **[Rover — Residencies](https://github.com/users/adamsimms/projects/5)** | Shortlist, package; Milestone 2 apply wave; post-acceptance residency funding |

Milestones: **1** Concept & feasibility → **2** Residencies → **3** Research & creation funding. Do not invent additional boards without an explicit ask. Put Issues on the board that owns the track (an Issue should not live on all three). Per-application Issues are created when targets are chosen. Priority: label + Project field (`priority:urgent` / `high` / `medium` / `low`) — see [docs/OPERATING-MODEL.md](docs/OPERATING-MODEL.md).

## Hard rules

- Do **not** invent site permissions, family/community consent, funder commitments, or corpus/training rights.
- Do **not** commit training corpora, copyrighted dictionary/archive dumps, chassis CAD/HTML mockups, or large binaries unless an issue **explicitly** asks and the artist confirms.
- Do **not** publish Little Bay Islands consent-sensitive material or funder essay/ask amounts where terms restrict discussion. See the private boundary in [docs/OPERATING-MODEL.md](docs/OPERATING-MODEL.md).
- Device name **Fielding** may be used; do **not** expand the literary homage in public docs until permission is confirmed.
- Prefer *rover*, *device*, or *machine* over *instrument* in application and public prose.
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
