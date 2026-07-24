# Operating model

How Rover is managed in the open. One repo. No parallel public schedule elsewhere.

## One repository

`github.com/adamsimms/rover` holds documentation now and firmware/hardware notes as they become public-ready. Split into multiple repos only when there is a concrete reason (CI isolation, binary/CAD bloat, or separate contributor tracks).

## Surfaces and jobs

| Surface | Job | Not this job |
|---|---|---|
| Issues | Atomic tasks; track tags (`hardware`, `software`, `fabrication`, `testing`, `funding`, `docs`, `concept`, `site`, `consent`, `model`, `residency`, …); funding Issues track apply/submit/decision *tasks*, not essay content; residency-linked funding is separate from research/creation grant packages | Decision log; application essays |
| Milestones | Due-date groupings; manual buffer checkpoints (no external critical-path tool) | A second copy of every Issue description |
| Projects (Roadmap) | Public timeline/status by quarter | Automatic critical-path engine |
| Discussions · Announcements | Occasional public journal | Mirror of Issues |
| Discussions · Ideas | Open research before a decision (RFC) | Resolved ADRs (those go in `docs/`) |
| Wiki | Runbooks, glossary, FAQ, how-to-help (when seeded) | Duplicate of `docs/` |
| `docs/` | Parts/BOM notes, firmware reference, open-decisions register, settled decision records (ADR) | Private grant essays |

**Rule:** if two formats start tracking the same thing, one of them is wrong.

## Private boundary

Only these stay out of the public repo by default:

1. **Application content** (essays, exact ask amounts) where a funder’s terms restrict public discussion during review — check per program.
2. **Personal fallback financial numbers** — personal disclosure. What the rover *costs to build* can be public maker-log content.
3. **Consent-sensitive discussion of living people** (including site strategies that name people who have not consented to being discussed).

Build costs, open engineering tradeoffs, consent *protocols* (as practice, once published), and funding *tasks* are fair game.

## Vault → public

A private Obsidian vault holds working drafts. Specific notes are copied and adapted into `docs/` or the Wiki when public-ready. Originals stay in the vault. Nothing moves wholesale.

## Schedule of record

GitHub Issues (and Milestones once seeded) are the operational schedule. Do not maintain a second live public timeline by hand.

## License

Documentation: CC BY 4.0. Code: Apache-2.0. See root [LICENSE](../LICENSE).
