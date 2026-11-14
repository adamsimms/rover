# Operating model

How Rover is managed in the open. One repo for the work; applications live elsewhere.

## One repository

`github.com/adamsimms/rover` holds the documentation now, and software and hardware notes as they become public-ready. Split into more repos only for a concrete reason (CI isolation, binary or CAD bloat, separate contributor tracks).

Applications, calls, residencies, budgets and the CV are kept in the artist's private studio repo, not here. This repo records the work: what it is, how it behaves, and the decisions that hold whatever happens to any application.

## Surfaces and jobs

| Surface | Job | Not this job |
|---|---|---|
| Issues | Atomic tasks about the work; **kind and priority on labels only** (`hardware`, `software`, `fabrication`, `docs`, `concept`, `site`, `consent`, `model`, …; `priority:urgent` / `high` / `medium` / `low`). No `[docs]`-style title prefixes | Decision log; application tasks or essays |
| Milestones | Groupings of issues | A second copy of every issue |
| Project ([R&D](https://github.com/users/adamsimms/projects/3)) | Public board; **Priority** field mirrors the labels | One issue on several boards |
| Discussions | Announcements (occasional journal); Ideas (open research before a decision) | Resolved decisions (those go in `docs/`) |
| `docs/` | Concept, ethics, hardware and model notes, the open-decisions register, the decisions log, generated bibliography | Working drafts, application history, ask amounts, contact details |

**Rule:** if two formats start tracking the same thing, one of them is wrong.

## Priority

| Level | Meaning |
|---|---|
| Urgent | Do next; blocks the work |
| High | Needed for the current milestone |
| Medium | Important but not blocking |
| Low | Can wait |

Keep the label and the Project field in sync.

## Private boundary

These stay out of this repo:

1. **Application material**: essays, ask amounts, budgets, correspondence with funders and hosts.
2. **Personal finances.** What the rover costs to build can be public maker-log content.
3. **Consent-sensitive discussion of living people**, including site strategies that name people who have not agreed to be discussed.
4. **Contact details** (phone, home address). A pre-commit guard blocks them.

Build costs, open engineering trade-offs, consent and governance *protocols* as practice, and research leads are fair game.

## Scratch and media

`Sketchpad/` is a git-ignored scratch folder; nothing in it is a source of truth. Renders, tests, photos and other media go to the project's media folder (`MEDIA_DIR`, see `.env.example`), which is pushed to off-site storage,, not to ignored folders in this repo.

## Schedule

Issues and milestones are the schedule. No phase timeline is kept in `docs/`: the work develops over years as it goes.

## License

Documentation: CC BY 4.0. Code: Apache-2.0. See [LICENSE](../LICENSE).
