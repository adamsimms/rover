# Rover

A solar- and cellular-powered monitoring rover for Pinchard's Island, Newfoundland, paired with a language model that generates field notes from a deliberately incomplete linguistic and historical corpus. The work is not a claim of fluent belonging to the place — it is a machine trying, and often failing, to speak from fragments.

The proposed device name is **Fielding**. A fuller literary homage is parked until permission is confirmed.

## Core concept

The project's center is linguistic incompleteness. The model is intended to work from fragmentary Newfoundland language and historical materials (dictionary entries, resettlement-era records, and related archival vocabulary work) rather than from a complete living inheritance. Rights to use specific published sources for training are **not yet cleared**; until they are, this repo describes intent only and does not ship training corpora or claim licensed reuse.

In its best mode the system should mislabel, half-succeed, contradict itself, or ask questions instead of asserting descriptive authority. Field notes document uncertainty — they do not replace presence or inheritance.

## How this repository works

One public repo. Roles stay separate:

| Surface | Job |
|---|---|
| **Issues** | Atomic build/software/funding *tasks* (not essays or decision prose) |
| **Milestones** | Due-date groupings; manual schedule checkpoints |
| **Projects** | Public roadmap — see below |
| **Discussions** | Announcements (public journal) vs Ideas (open research before a decision) |
| **Wiki** | Runbooks / glossary / FAQ once seeded; prefer PRs to `docs/` for durable text |
| **`docs/`** | Canonical public write-ups and the open-decisions register |

Private working drafts stay in a local Obsidian vault and are published outward only when adapted. What stays out of this repo: funder-restricted application content, personal fallback finances, and anything that discusses living people in a consent-sensitive situation without their consent.

See [docs/OPERATING-MODEL.md](docs/OPERATING-MODEL.md).

## GitHub Projects

| Board | Role |
|-------|------|
| **[Rover — R&D](https://github.com/users/adamsimms/projects/3)** | Concept, feasibility, hardware/software spikes, permissions, consent docs |
| **[Rover — Funding](https://github.com/users/adamsimms/projects/4)** | Research/creation budgets, timeline, program fit; later Milestone 2 grant package |
| **[Rover — Residencies](https://github.com/users/adamsimms/projects/5)** | Shortlist, shared package, post-acceptance residency funding (CALQ/CAC etc.) |

Later (only if needed): Build, Deploy, Outputs.

## Documentation

- [Conceptual core](docs/concept/conceptual-core.md)
- [Open decisions](docs/open-decisions.md)
- [Operating model](docs/OPERATING-MODEL.md)

## Getting started

This first ship is documentation only. There is no runnable training pipeline or checked-in onboard software yet.

Hardware target (high level): Raspberry Pi 5, LTE modem, camera payload, LiFePO4 battery with heating, rover-mounted solar — designed for long unattended deployment. Details will land in `docs/` as decisions resolve.

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md), [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md), and [SECURITY.md](SECURITY.md). Agents: start at [AGENTS.md](AGENTS.md). Do not open PRs that dump copyrighted training text or corpora.

## License

Dual license: **CC BY 4.0** for documentation and non-code content; **Apache-2.0** for source code. See [LICENSE](LICENSE).

## References

Links only — not an assertion of training rights:

- Dictionary of Newfoundland English (print and web editions; rights holders vary)
- Newfoundland resettlement and outport historical records (archives vary by collection)
- Related vocabulary and place-based artistic research will be cited here as permissions allow
