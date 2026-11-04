# Open decisions

Register of decisions that are still open in public. When something resolves, record it in the [decisions log](decisions/README.md), update the doc it changes, and remove it from this list.

| ID | Topic | Status | Notes |
|---|---|---|---|
| OD-002 | Device name literary homage / permission | Pending | Device name is Fielding; homage held until permission ([#23](https://github.com/adamsimms/rover/issues/23)) |
| OD-003 | Corpus rights | Open | [#19](https://github.com/adamsimms/rover/issues/19)–[#21](https://github.com/adamsimms/rover/issues/21). No permission or archive partnership exists yet. Intent only until cleared; [corpus governance](consent/corpus-governance.md); leads in [model/corpus-research.md](model/corpus-research.md) |
| OD-004 | Language-model serving stack | Open | Settled part: the fragments restrict a capable model by lookup and citation, not training (decisions log). Open: which model, onboard vs offboard serving, power. [#15](https://github.com/adamsimms/rover/issues/15); [model/stack-research.md](model/stack-research.md) |
| OD-005 | Monitoring dashboard design | Open | Later |
| OD-009 | Camera architecture lock | Open | Evidence spike [#16](https://github.com/adamsimms/rover/issues/16) |
| OD-010 | Witty Pi wake-on-charge | Open | [#18](https://github.com/adamsimms/rover/issues/18); full build only |
| OD-012 | Pinchard's Island deployment model | Settled, reworded | Maintained, removable, consent- and site-access-gated, leaves nothing behind. Year 1 (Leo): supervised, unattended only on the dock. Long unattended presence is the goal for the full build, still removable. |
| OD-014 | Cellular modem architecture | Open | RUTX11 in the Leo stack vs a Pi HAT (Sixfab Base HAT + EC25, or Waveshare SIM7600); Canada bands; power off between uploads. [#88](https://github.com/adamsimms/rover/issues/88) |
| OD-015 | Finished form | Open | Candidates named in applications: a living, self-revising record; a book or evolving glossary; curated photograph-and-note prints. Not decided. |
| OD-016 | Winter dormancy | Open | Whether Fielding keeps running through its first winter or goes dormant is unknown and the project is not designed toward either outcome. Dormancy is treated as material to work with, not lost time. Affects output timing and Residency B planning. |
| OD-017 | Full-resolution capture storage | Open | Local storage on the Pi as source of truth vs cellular upload; with a year between visits and no guarantee every capture clears LTE, full-res archival storage is a separate decision from the live-drive 480p stream (comfortably within LTE). Related to OD-014. |
| OD-018 | WebRTC signaling server hosting | Open | A small VPS or STUN/TURN provider for NAT traversal is required for teleop; must maintain uptime for the duration of unattended deployment. Hosting not yet decided. |

Add rows freely. Prefer Issues for *tasks* that implement a decision; keep this register for the decision itself. No phase dates here: the work develops over years as it goes, and dates live on issues.

Milestone: [Concept & feasibility](https://github.com/adamsimms/rover/milestone/2) · Project: [R&D](https://github.com/users/adamsimms/projects/3)
