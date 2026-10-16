# Language-model stack research

Public pointers for training and serving software. **Does not close** [OD-004](../open-decisions.md) / [#15](https://github.com/adamsimms/rover/issues/15). Not a corpus. Not an assertion that any source is cleared to train on. Corpus rights stay on [#19](https://github.com/adamsimms/rover/issues/19)-[#21](https://github.com/adamsimms/rover/issues/21) (OD-003); archive leads live in [corpus-research.md](corpus-research.md).

Year-1 compute in public feasibility is a Raspberry Pi 5 8GB with no ML accelerator day one ([hardware/feasibility.md](../hardware/feasibility.md)). Studio-side training and onboard serving are different jobs.

## Pedagogy (learning lab, not Fielding's voice)

- [rasbt/LLMs-from-scratch](https://github.com/rasbt/LLMs-from-scratch) (Raschka, *Build a Large Language Model (From Scratch)*). Laptop-scale GPT pipeline. Useful for a Phase 0 lab. A tiny network trained from scratch fails because it is small and undertrained. That is not the artwork's linguistic incompleteness.

## Device agent (lookups and refusal, not the note)

- [cactus-compute/needle](https://github.com/cactus-compute/needle). Needle 2: 45M-parameter tool-calling model, 14 MB binary, about 28 MB RAM, Apache-2.0. Text in, JSON out. Grammar-constrained decode. Confidence-gated. Offline inference. Off-topic input returns an empty call.

  **Rover use:** gazetteer, weather, radio-down marking, and escalate-or-refuse routing on the device. **Not** the field-note writer: 256-token window, no free prose, no vision. Optional on a Pi 5 8GB. More interesting if a later duty cycle needs a tiny always-on router in front of a larger writer.

## Studio fine-tune and export (Path B shop)

Path B (still open): start from a capable small open model, then constrain or finetune on *cleared* fragments; serve onboard with something like llama.cpp / GGUF.

- [unslothai/unsloth](https://github.com/unslothai/unsloth). Local run-and-train stack (Desktop app, Studio web UI, Core library). LoRA / QLoRA and related fine-tunes; export to GGUF and other deploy formats. Vision notebooks exist. Core is Apache-2.0; Studio UI is AGPL-3.0.

  **Rover use:** studio-side Path B once rights clear: adapt a small open model, export GGUF for onboard serve. **Not** the onboard inference engine. **Not** a substitute for cited dictionary lookup. Do not treat Studio search / RAG / agent features as Fielding's method. If any Unsloth code enters this repo, prefer Core (Apache-2.0) so it matches Rover software licensing.

## Still open on [#15](https://github.com/adamsimms/rover/issues/15) (LM approach + Phase 0 samples)

- Model class for the writer (not the router)
- How bounded, cited fragments work mechanically
- Onboard vs offboard serving and power
- Photograph to field note
- Phase 0 samples suitable to cite in grants and residencies (include guest-speech refusals: defer / ask / contradict / withhold; see [guest protocol](../consent/guest-protocol-fielding.md))
