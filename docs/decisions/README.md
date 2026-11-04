# Decisions

Work decisions: true whatever happens to any application. Each changes a doc's body in place; this log keeps one dated line per decision saying what changed and where. Delete a line when a later decision supersedes it (git keeps the history). Open questions stay in [open-decisions.md](../open-decisions.md).

## Log

- 2026-11-03: Teleop drive input uses the browser Gamepad API (standard USB/BT gamepad or on-screen touch virtual joystick); no dedicated hardware controller needed. [model/stack-research](../model/stack-research.md).
- 2026-11-03: Safety architecture: lightweight obstacle-veto failsafe (ultrasonic distance check refuses a forward drive command; never initiates movement; explicit override to proceed); not full autonomous navigation. Full Fielding build.
- 2026-11-03: Skip full autonomy, LIDAR, and depth cameras. Rover is teleoperated plus scheduled-capture; consumer/hobby LIDAR and active-IR depth cameras are unsuitable for coastal outdoor use; passive-stereo (ZED) requires Jetson-class compute. Full Fielding build.
- 2026-11-03: OTA firmware update mechanism and safe power-on default (sleep/report, don't drive, on unexpected reboot) are day-one requirements for any unattended deployment. Full Fielding build.
- 2026-11-02: The fragments restrict a capable model by lookup and citation; they are not training data. [conceptual-core](../concept/conceptual-core.md), [corpus-governance](../consent/corpus-governance.md), OD-004.
- 2026-11-02: Title is *Uncertain Field Notes*; the device is Fielding, held out of applications when the homage cannot be explained (was OD-011). [conceptual-core](../concept/conceptual-core.md).
- 2026-11-02: Platform is the Fictionlab Leo with dock for Year 1 and the winter test; the tracked Waveshare Beast proof of concept is dropped (was OD-013). [hardware/feasibility](../hardware/feasibility.md).
- 2026-11-02: Long unattended presence on Pinchard's is the goal for the full build; Year 1 is supervised and docked; always maintained and removable (OD-012 reworded). [hardware/feasibility](../hardware/feasibility.md), [guest protocol](../consent/guest-protocol-fielding.md).
- 2026-11-02: Photographing is opt-in: only where permission has been given. [guest protocol](../consent/guest-protocol-fielding.md) rule 2.
- 2026-11-02: Corpus governance: a consent-and-data protocol drafted with Newfoundlanders; the artist does not change the corpus alone. [corpus-governance](../consent/corpus-governance.md).
- 2026-11-02: At host residencies, local speech never enters the corpus and the place is not the subject; write Newfoundland (Ktaqmkuk). [guest protocol](../consent/guest-protocol-fielding.md) rules 7 and 8.
- 2026-11-02: No phase dates in the docs; the work develops over years as it goes. Dates live on issues. [open-decisions](../open-decisions.md).
- 2026-11-02: Corpus sources named so far: the Dictionary of Newfoundland English, published resettlement records, family oral history. [model/corpus-research](../model/corpus-research.md).
- 2026-08-18: Pinchard's use is maintained, removable, consent- and site-access-gated, and leaves nothing behind (OD-012).
- 2026-08: Device name Fielding (was OD-001).
