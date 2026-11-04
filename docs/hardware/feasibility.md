# Hardware and power feasibility

**Status:** working feasibility. The Leo platform stack is quoted (**Q**, Fictionlab offer NK8/08/2026); other lines are list-price estimates (**E**). Nothing is bought until funded.

**Related:** [conceptual core](../concept/conceptual-core.md) · [open decisions](../open-decisions.md) (OD-013 platform, OD-014 cellular) · [Leo vs Raph comparison](leo-vs-raph.md)

---

## Scope

Fielding hardware comes in **two tiers**. They must not be conflated in public or application prose.

| Tier | Role | Status |
|------|------|--------|
| **1. Leo platform** | Fictionlab Leo 1.9 with dock: the supervised move, photograph, field-note loop; the Newfoundland winter test; consent-gated use on Pinchard's | Chosen (OD-013); purchase when funded |
| **2. Full Fielding build** | Custom winterized machine for long unattended presence on Pinchard's | Later version; paper design; wake and enclosure spikes open ([#18](https://github.com/adamsimms/rover/issues/18)) |

**Deployment:** use on Pinchard's is maintained, removable, consent- and site-access-gated, and leaves nothing behind (OD-012). On the Leo, unattended means on the dock or watched; off the dock it is supervised until return-to-dock is proven. Long unattended presence is the goal for the full build, not the Leo.

---

## Tier 1: Leo platform

Platform comparison, add-ons and the dock and LTE trade-offs: **[leo-vs-raph.md](leo-vs-raph.md)**.

**Stack (offer NK8/08/2026, about €7,589 with shipping):** Leo DIY 1.9, charging station, sandwich plate, Teltonika RUTX11 (LTE and GNSS), mast, RPLidar S3. Powerbox and a spare battery included. **Fixposition Vision-RTK 2 (€4,050) deferred.**

### Compute

| Choice | Lean |
|--------|------|
| Field-note software | Project software on the rover's computer; no vendor demo command-following |
| On-robot ML accelerator | **Not day one.** Prove the observation-to-note loop first; add an accelerator only if clearance and power budget allow. Onboard vs offboard serving is open (OD-004) |

### Cameras

Two jobs; one cheap sensor should not do both (OD-009; spike [#16](https://github.com/adamsimms/rover/issues/16)).

| Job | Lean | Confidence |
|-----|------|------------|
| Drive, obstacle avoidance, continuous feed | Leo stock camera and RPLidar S3 | Vendor spec |
| Exhibition stills (medium prints) | **Pi HQ Camera (CSI)**, about 13.5 × 10 in at 300 dpi | Direction only until the camera spike |
| High-MP USB or mirrorless | **Deferred** | Desk research |

NoIR / 850 nm / multiplexer path stays open until [#16](https://github.com/adamsimms/rover/issues/16) closes.

**Software levers for image quality (free, build in from day one):** long exposure (multi-second exposures via libcamera/Picamera2 — recovers dusk/dawn/overcast/moonlit-snow light; no help in true darkness) and HDR/exposure bracketing (2-3 shots merged for simultaneous detail in bright snow and dark shadow — directly useful for high-contrast winter scenes at low sun angle). Both apply to any CSI camera on this stack.

### Power and solar

The Leo runs on its battery and charges on the dock. Solar on the **rover** is a **parked trickle**, not driving power: motors outspend a ~10 W panel while moving. A ~10 W panel might give **~10–25 Wh/day** on a good coastal summer day and near zero when overcast (estimate). "Solar-powered" in public prose means that hedge, not autonomy.

### Cellular (spike open)

The RUTX11 in the offer is the LTE router. Canada bands and coverage at Pinchard's are not validated; do not assume cell service there without evidence ([#88](https://github.com/adamsimms/rover/issues/88), OD-014). Lowest energy is the modem **off** most of the time. LTE Cat-4 is enough for 480p teleop and note uplink; 5G is not needed.

---

## Tier 2: Full Fielding build (later)

Separate engineering spec (rocker-bogie with wheelchair motors, LiFePO₄ with heating, Witty Pi wake-on-charge, pod or shelter logic, larger solar). Public number from the earlier paper BOM:

| Band | Confidence | Notes |
|------|------------|-------|
| **~CAD 3,550–4,750** hardware (single unit, before shipping and tax) | **Estimate** | Dominant cost: custom chassis and drivetrain; see [#24](https://github.com/adamsimms/rover/issues/24) |

**Highest paper-only risk for long unattended operation:** Witty Pi wake-on-charge ([#18](https://github.com/adamsimms/rover/issues/18)). Treat as an active risk until bench evidence lands. The Leo does not validate this tier.

---

## Cost bands (summary)

Cross-link: [#24](https://github.com/adamsimms/rover/issues/24) build cost.

| Line | Band | Conf. |
|------|------|-------|
| Leo stack (offer NK8/08/2026) | **€7,589** | Q |
| Pi HQ Camera and lens | ~**CAD 100–200** | E |
| Raph assembled + DIY dock (comparison) | ~**€13,000+** | E |
| Lynx configured + dock options (comparison) | often **€15k–20k+** | Q |
| Full custom Fielding build | ~**CAD 3,550–4,750** | E |

**E** = estimate from list or vendor pages · **Q** = quote

Travel, site prep, contingency and carrier plans are separate ([#24](https://github.com/adamsimms/rover/issues/24)).

---

## Evidence still open

| Topic | Issue | What closes it |
|-------|-------|----------------|
| Cellular bands, coverage, duty cycle | [#88](https://github.com/adamsimms/rover/issues/88) | Bench mA plus site and carrier validation |
| Camera architecture | [#16](https://github.com/adamsimms/rover/issues/16) | Hands-on Pi HQ / NoIR / mux spike |
| Witty Pi wake-on-charge | [#18](https://github.com/adamsimms/rover/issues/18) | Bench test for the full build |
| Extended-stack ethics (energy line) | [guest protocol](../consent/guest-protocol-fielding.md) | Checklist citing power and cellular choices |

---

*Adapted from Milestone 1 hardware research. Do not invent site permissions, winter survival claims, or cellular coverage at Pinchard's.*
