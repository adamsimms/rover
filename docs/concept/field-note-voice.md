# Field-note voice (lookup prototype)

Working reference for how the rover writes a field note from a photograph. Locked in studio while drafting US Letter samples for applications (working title *Uncertain Field Notes*). Not an ADR. Not a claim that the Dictionary of Newfoundland English is cleared to train on ([#19](https://github.com/adamsimms/rover/issues/19)).

Public concept: [conceptual-core.md](conceptual-core.md). Application packets: [residencies/application-craft.md](../residencies/application-craft.md).

## What the mechanic is

The artist gives an image. The writer looks at it, opens Heritage NL DNE pages, MUN ELRC word-form slips (`elrcdne`), and (when trying grammar) the Dialect Atlas of Newfoundland and Labrador. The note may only lean on what was actually opened. That is **lookup and citation**, not training.

- Heritage: `https://www.heritage.nf.ca/dictionary/azlist/{a-z}.html` and `.../pages/{n}.html`
- MUN slip: `https://collections.mun.ca/digital/collection/elrcdne/id/{id}/`
- Atlas: `https://dialectatlas.mun.ca/` (grammar / pronunciation / words by community)
- Quote, do not scrape. Do not dump entries into the repo.
- Cite in the rail only the headwords and grammar tries opened for that note.
- Labrador and Indigenous forms: withhold even when an entry cites them.

## Page (US Letter sample)

Letter 816 x 1056 at 96 dpi. Left column: photograph as a plate, type below (header then note). Narrow right column runs the **full page height**: lookup terms, then the three Chicago citations at the foot. No column title (not **Aside**, not **Apparatus**). Folio one left-aligned line under the note: `UNCERTAIN FIELD NOTES • n`. No separate page number. No device sign-off on packets that hold the name out. Note body in roman, not italic. Foot padding 56 px, sides 32 px.

Hairline underline on lookup words in the note: 0.5 px, gray, offset 2 px, skip-ink. Do not underline place names as if they were DNE words.

Lookup rows are three lines: headword, short sense, identifier (`DNE {page}` and slip id when there is one; Atlas grammar tries use `Atlas grammar`). No held / refused / asked labels; the sense is enough. Full Chicago bibliography entries (with URLs) sit under a hairline at the foot of the right column.

Keep the whole letter on **one page**. If the looking wants more room, cut, do not overflow.

## CCA application citation (Chicago, once)

The letter’s right column carries the three full Chicago bibliography entries (URLs included). The application caption under the support image may repeat the same three so the portal still has them if the JPEG is tight.

The visual keeps the right column. Cite each source once, not per headword.

Story, G. M., W. J. Kirwin, and J. D. A. Widdowson, eds. *Dictionary of Newfoundland English*. 2nd ed. with supplement. Toronto: University of Toronto Press, 1990. Heritage Newfoundland and Labrador web edition. Accessed August 20, 2026. https://www.heritage.nf.ca/dictionary/.

English Language Research Centre, Memorial University of Newfoundland. *Dictionary of Newfoundland English Word Form Database*. Digital Archives Initiative. Accessed August 20, 2026. https://collections.mun.ca/digital/collection/elrcdne/.

Clarke, Sandra, and Philip Hiscock, dirs. *The Dialect Atlas of Newfoundland and Labrador*. St. John's: Memorial University of Newfoundland. Based on a grammar and pronunciation survey by Harold Paddock. Accessed August 20, 2026. https://dialectatlas.mun.ca/.

That is lookup, not a claim that the dictionary or atlas is cleared to train on ([#19](https://github.com/adamsimms/rover/issues/19)).

## Header

Three fields, then the note.

| Field | Rule |
|-------|------|
| DATE | Clock / camera when the file has it, with time. Do not invent season or tide from a missing clock. |
| LOCATION | GNSS first: always print the coordinates when the fix exists. Then a gazetteer lookup over LTE for a specific place name. If the radio is down, keep the coordinates. Do not invent a toponym. Mark that the name was not looked up. |
| WEATHER | Prefer a lookup for that time and place (observation or forecast). Sky, wind, precipitation, temperature as the record allows. If the radio is down, guess from the photograph, the way a field note does when the instruments are out: write what it looks like, and mark it as estimated / from looking / radio down. A DNE weather-word belongs in the note, where it can miss. |

The header can be precise while the note is still rummaging. They may disagree. That mismatch is allowed. The note may **feel** the weather (looked up or guessed) without reciting the station. Do not explain the network in the note. The mark that the radio was down belongs in the header, in field-note shorthand, not as a lecture.

A sample packet may override DATE on purpose (see [Sample exceptions](#sample-exceptions-letter-packet)). Mark that override; do not treat it as the default.

## Voice

Correspondent prose. Device as *I*. Fielding is not the artist (no grandmother, no Cloudberry, no Montreal). People unnamed; no faces; no clothes as identity. Named informants stay off the note (they belong on a slip, and even then not in the letter body unless a later series collects a spoken bit).

- Glue English stays grammatical correspondent English. Phonetic weight sits on the DNE words (`mash`, `landwash`, `lun`), not on the glue. Atlas morphosyntax may be tried as **learning**, not as native fluency: one new pattern per later note, twice at most, maybe wrong once. This Letter sample tries a few at once (`right` / `some` as DNE intensifiers; `I'm after looking`; `I likes`). Do not flood with *knowed*, *ye*, or dropped *is*.
- Questions take a `?`.
- Say **the dictionary** or **the words I have**. Never **the book**. Never **stretch** (studio word, not Fielding’s).
- No slips, cards, or apparatus talk in the note.
- Fragments are rare: one short failed word is fine; the default beat is a full sentence. Claim-check-refuse-period reads as a debug log, not a letter.
- Do not lecture every sense in the note (`in the dictionary X is Y`). Let a miss sit inline. The rail carries the sense.
- The dialect is fun, active, oral. Rummage. Do not mourn missing words. A miss can be a joke (moss coming back a child). A hit can be used twice, like you mean it.
- Pleased at being wrong and pleased when a word sits are both allowed. For a grant sheet, stop before it reads as a bit: one grin, not three bows.
- Collect sounds. A small spoken bit from a slip is allowed (one per note is enough). This Letter sample does **not** use *they*, including slip-*they*. Recast the spoken bit without a speaker (`Towed en down here in the landwash`). `En. I like en.` is the crush on the sound. Rail *en* (him / it; also *un*; DNE 5244).
- Later notes may remember earlier shores, and even lean toward a future one. A single application page must still read self-contained: no bakeapple, no last boat, no “two days ago.”
- Running misses may continue (the water-to-a-line has no large word yet). Name the hole without turning the page into elegy.
- If the picture has a made thing (planks, longers), lean in: someone built, someone left, no names.
- Evening light may work (thinning, the line getting harder). Clock time alone is also enough.
- A small fishery bounce is allowed as **joke**, not claim (`a small haul` when there is no fish; do not dress an empty shore as a going concern).
- Do not invent DNE words. If kelp is missing, that is a named hole, not a costume.
- Do not invent the tide. “I cannot tell the tide” is the gap.
- Prefer *rover*, *device*, or *machine* in surrounding application prose. In the note, the device is *I*.

## Lookup

Both surfaces, no vocab budget cap, neighbour search allowed to fail, DNE sense lock. At least one word that fits and at least one miss, or the page is only a caption or only a stutter.

Weather pass: header prefers the lookup. If the radio is down, the header guesses from the picture and marks that guess. The note may feel that record (or that guess) and may try a gloss (`lun`, `mauzy`, `dwy`, …). They may not match. “I do not have the weather-word” is still allowed. Do not reuse a pet word on every shore because it worked once (`civil` was retired for a later sample).

Do not print the word **Apparatus**. Dictionary fights live mostly in the rail. One or two searches may show in the note as rummaging, not as a glossary.

## Sample exceptions (Letter packet)

Used on the US Letter shore sample (working title *Uncertain Field Notes*; device name held out). Do not generalize until the artist says so.

- DATE invented as a summer evening when the chat file had no EXIF. Chosen so a weather lookup matches the still, pale picture (not 11 August, which was drizzle).
- LOCATION named in the header from the official gazetteer (Pinchard's Island), with coordinates. Not in the body.
- WEATHER from a lookup for that timestamp: 16 August 2026, 6:48 p.m.; mainly clear, about 14 °C, wind ENE 9 km/h. The note feels that (cool, only a little wind) and still tries *lun*.
- No *they*.
- Self-contained: no memory of other notes on this page.
- One page, plate left, type below.

## Related

- [#15](https://github.com/adamsimms/rover/issues/15) bounded, cited fragments
- [#19](https://github.com/adamsimms/rover/issues/19) DNE rights (intent only)
- [#23](https://github.com/adamsimms/rover/issues/23) device-name permission
