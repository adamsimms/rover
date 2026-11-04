# Decisions

Work decisions: true whatever happens to any application. Each changes a doc's body in place; this log keeps one dated line per decision saying what changed and where. Delete a line when a later decision supersedes it (git keeps the history). Open questions stay in [open-decisions.md](../open-decisions.md).

## Log

- 2026-11-04: 6WD rocker-bogie over tracks; snow packing into sprocket teeth requires physical clearing — unavailable for a year. Full Fielding build. [hardware/feasibility](../hardware/feasibility.md).
- 2026-11-04: Hybrid build: suspension fabricated from open designs; motors sourced as IP65/67-rated industrial gearmotors (not hobbyist kit motors). Full Fielding build.
- 2026-11-04: Skip mecanum wheels; omnidirectional motion not needed on coastal terrain; angled-roller traction loss and debris jamming are disqualifying for outdoor unattended use. Full Fielding build.
- 2026-11-04: Airless/foam-filled tires; pneumatic puncture is an unrecoverable single point of failure at zero-access for 12 months. Full Fielding build.
- 2026-11-04: HQ Camera (IMX477) as primary sensor; 52% more light-gathering area than Module 3; manual focus acceptable since rover is parked for all capture cycles. Full Fielding build.
- 2026-11-04: Three fixed lenses (forward, down, sky) via camera multiplexer board; eliminates cold-weather servo failure mode. Full pan/tilt rejected: servo grease stiffens, plastic gears go brittle; reframing covered by rover mobility. Full Fielding build.
- 2026-11-04: NoIR module + 850 nm IR LEDs for true darkness; 850 nm preferred over 940 nm (better sensitivity; no covert-operation requirement here). Full Fielding build.
- 2026-11-04: Witty Pi 4 over PiJuice; onboard MCU fully cuts power between wake events; PiJuice wake-on-charge fails exactly when the battery dips but does not fully die — this build's real scenario. Wake-on-charge validation is the highest-priority pre-deployment bench test: failure is silent (rover fully charged, fully capable, permanently off with no visible indication). Full Fielding build. [hardware/feasibility](../hardware/feasibility.md).
- 2026-11-04: DIY silicone heating pad on 20–40 Ah LiFePO₄ (not factory self-heating); no factory self-heating SKU exists in Canada under 50 Ah. Full Fielding build.
- 2026-11-04: Firmware targets 50–80% SoC; LFP degrades at full charge in heat and at empty in cold; full discharge triggers BMS protection and may refuse to recharge. Full Fielding build.
- 2026-11-04: Solar panel stays on the rover; moving it to the pod would require docking contacts that survive ice and salt air. Full Fielding build. [hardware/feasibility](../hardware/feasibility.md).
- 2026-11-04: Storm pod is an enclosed shelter for burial and wind retreat only; not a charging location. Default rest position is a separate open-air graded charging pad (panel side facing south). Full Fielding build. [hardware/feasibility](../hardware/feasibility.md).
- 2026-11-04: Pod sits on a raised platform above the worst-case drift line; a ground-level shelter would be buried by the same drift it protects against. Full Fielding build.
- 2026-11-04: Snow survival uses all three strategies together: movement (ongoing accumulation), pod (storm/burial), localized lens heating (the failure mode neither other strategy covers). Full Fielding build. [hardware/feasibility](../hardware/feasibility.md).
- 2026-11-04: Rover parks with panel side south, mast side north; this is a site-planning requirement for the charging pad, not something the rover resolves alone. Full Fielding build.
- 2026-11-04: Camera mast at 30–50 cm above chassis; belly clearance of 13–18 cm means a ground-mounted camera reads like a photo taken lying on the ground (NASA rovers mount at human-eye-height for this reason). Full Fielding build.
- 2026-11-04: Pre-deployment test through a real cold snap and snow event is mandatory; must exercise real driving loads over actual terrain (NASA lesson 22401 on Curiosity wheel wear), not just a power-on function check. Full Fielding build.
- 2026-11-04: Deploy a fixed solar+LTE trail camera (Reolink Go line) at the site before the rover goes in; validates cellular coverage and solar viability before committing a year-long deployment. Full Fielding build.
- 2026-11-04: No commercial UGV fits year-long dormancy duty cycle; Rover Pro (IP67, $9,200 USD) maxes at 1–2 hr drive / 5 hr idle — structural gap, not a budget gap. Validates the DIY build approach. [hardware/feasibility](../hardware/feasibility.md).
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
