# Agent notes

Rover (*Uncertain Field Notes*), developed in the open. One milestone or one issue per chat when the work is mechanical.

## Hard rules

- Do **not** invent site permissions, family or community consent, funder commitments, or corpus rights. No archive partnership exists yet (OD-003).
- The fragments restrict the model by lookup and citation; never describe them as training data or imply licensed reuse.
- Do **not** commit corpora, copyrighted dictionary or archive text, chassis CAD or HTML mockups, or large binaries unless an issue explicitly asks and Adam confirms.
- Device name **Fielding** may be used; do not expand the literary homage until permission is confirmed ([#23](https://github.com/adamsimms/rover/issues/23)). Prefer *rover*, *device* or *machine* over *instrument*.
- Write Newfoundland (Ktaqmkuk) on first mention in public text.
- No phase dates in `docs/`; dates live on issues.
- Prefer the label `software` over `firmware`. Issue titles have no kind prefix; kind and priority live on labels.
- Dual license: docs and non-code CC BY 4.0, software Apache-2.0 ([LICENSE](LICENSE)).
- Secrets only via `.env`; see `.env.example`.

## Canonical docs

1. [docs/concept/conceptual-core.md](docs/concept/conceptual-core.md): what the work is
2. [docs/decisions/README.md](docs/decisions/README.md): decisions log, one dated line per change
3. [docs/open-decisions.md](docs/open-decisions.md): what is still open
4. [docs/consent/](docs/consent/): guest protocol, corpus governance
5. [docs/hardware/](docs/hardware/) and [docs/model/](docs/model/): feasibility and research leads
6. [docs/OPERATING-MODEL.md](docs/OPERATING-MODEL.md): surfaces and the private boundary

Docs policy and the decisions rule (work decision vs proposal choice vs option): [`.cursor/rules/docs.mdc`](.cursor/rules/docs.mdc).

## GitHub

Issues here are about the work. Applications, calls, residencies and their deadlines are tracked in the private studio repo, not here. One project board: [R&D](https://github.com/users/adamsimms/projects/3).

## Private material

Applications, organization and call records, the CV, contact details and private research notes (sources and correspondence in `research/rover/`) live in the private repo **adamsimms/studio** (`~/Documents/GitHub/studio`; read its `AGENTS.md` first). This project's applications are `applications/<cycle>-<call>-rover/`. Nothing from studio comes into this repo unless an issue says so and Adam approved it. Never put a phone number or home address here; a global pre-commit guard blocks them.

## Project media

Media (renders, maquettes, visual tests, experiment output, photos, video) never stays in this repo's ignored folders: they are not backed up. It goes to the project's synced Drive folder, `$MEDIA_DIR` (`30 STUDIO/32 PROJECTS/ROVER/`): `01 REFERENCES`, `02 STUDIES` (concept and visual exploration), `03 TESTS` (technical experiments), `04 ARTWORK` (the finished work's own media), `05 DOCUMENTATION` (one folder per activity, named like studio's). Inside 02 and 03, one dated folder per piece of work: `<YYYY-MM> <name>`. `Sketchpad/` is scratch.

## Bibliography / Zotero

Zotero is the source library (public library, Rover collection `33MT4SZP`). `docs/BIBLIOGRAPHY.md` is generated: `node ~/Documents/GitHub/studio/scripts/zotero/build-bibliography.mjs rover --out docs/BIBLIOGRAPHY.md`; never edit it by hand. Writing to Zotero is publishing: only approved batches. Never query `~/Zotero/zotero.sqlite`. Do not invent citations.

## Support

No funder support to acknowledge yet. When an award lands, add the funder and its acknowledgement wording here and in the README.
