# Rover

*Uncertain Field Notes.* A solar- and cellular-powered rover for Pinchard's Island, Newfoundland (Ktaqmkuk), with a language model that writes field notes from what it photographs, held to a deliberately incomplete body of language and historical fragments. The work is not a claim of fluent belonging to the place — it is a machine trying, and often failing, to speak from fragments.

The proposed device name is **Fielding**. A fuller literary homage is parked until permission is confirmed.

## Core concept

The project's center is linguistic incompleteness. A capable model is restricted, by lookup and citation, to fragmentary Newfoundland language and historical materials (dictionary entries, resettlement-era records, family oral history) rather than a complete living inheritance. The fragments are not training data. Rights to use specific sources are **not yet cleared** and no archive partnership exists; this repo describes intent only and ships no corpus text.

In its best mode the system should mislabel, half-succeed, contradict itself, or ask questions instead of asserting descriptive authority. Field notes document uncertainty — they do not replace presence or inheritance.

## How this repository works

One public repo for the work: concept, ethics, hardware and model notes, and the decisions that hold whatever happens to any application. Issues are tasks; decisions go in [docs/decisions/](docs/decisions/README.md); open questions in [docs/open-decisions.md](docs/open-decisions.md). Applications and their records are kept privately, not here. Board: [Rover — R&D](https://github.com/users/adamsimms/projects/3). See [docs/OPERATING-MODEL.md](docs/OPERATING-MODEL.md).

## Documentation

- [Conceptual core](docs/concept/conceptual-core.md)
- [Hardware and power feasibility](docs/hardware/feasibility.md) (estimates until spikes close)
- [Leo vs Raph comparison](docs/hardware/leo-vs-raph.md)
- [Guest protocol for Fielding](docs/consent/guest-protocol-fielding.md) (draft)
- [Decisions log](docs/decisions/README.md) · [Open decisions](docs/open-decisions.md)
- [Corpus governance](docs/consent/corpus-governance.md)
- [Bibliography](docs/BIBLIOGRAPHY.md) (generated from Zotero)
- [Operating model](docs/OPERATING-MODEL.md)
- [Corpus research leads](docs/model/corpus-research.md) (intent only)
- [Language-model stack research](docs/model/stack-research.md) (does not close OD-004)

## Getting started

This first ship is documentation only. There is no runnable training pipeline or checked-in onboard software yet.

Hardware (high level): two tiers. A Fictionlab Leo with dock for Year 1 and the winter test, then a custom winterized Fielding build for long unattended presence. See [hardware feasibility](docs/hardware/feasibility.md).

Nothing large is kept in the repo. Renders, tests and photos live in the project's media folder (`MEDIA_DIR`, see `.env.example`); research sources are in the public Zotero library (Rover collection).

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md), [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md), and [SECURITY.md](SECURITY.md). Agents: start at [AGENTS.md](AGENTS.md). Do not open PRs that dump copyrighted training text or corpora.

## License

Dual license: **CC BY 4.0** for documentation and non-code content; **Apache-2.0** for source code. See [LICENSE](LICENSE).

## References

Links only — not an assertion of rights to use. Expanding research leads: [docs/model/corpus-research.md](docs/model/corpus-research.md). Stack software leads: [docs/model/stack-research.md](docs/model/stack-research.md).

- Dictionary of Newfoundland English (print and web editions; rights holders vary)
- Encyclopedia of Newfoundland and Labrador (ENL) — rights/access path open
- Dialect Atlas of Newfoundland and Labrador — see corpus research
- Newfoundland resettlement and outport historical records (archives vary by collection)
- MUNFLA / CNS / DAI / MUN ICH materials — see corpus research; [#20](https://github.com/adamsimms/rover/issues/20)
- Related vocabulary and place-based artistic research will be cited here as permissions allow
