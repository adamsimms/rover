# Hardware and power feasibility

**Status:** Working feasibility (2026-08-22). Figures are **estimates** from vendor pages and desk research until quotes ([#31](https://github.com/adamsimms/rover/issues/31)) and spikes close. Tracks Milestone 1 [#10](https://github.com/adamsimms/rover/issues/10).

**Related:** [conceptual core](../concept/conceptual-core.md) · [open decisions](../open-decisions.md) (OD-013 platform tiering, OD-014 cellular) · [Leo vs Raph grant-tier comparison](leo-vs-raph.md)

---

## Scope

Fielding hardware is planned in **three tiers**. They serve different milestones and must not be conflated in grant or residency prose.

| Tier | Role | Status |
|------|------|--------|
| **1. Year-1 PoC** | Supervised move → photograph → field-notes loop; optional summer Pinchard's and light snow tests | **Lean recorded** ([#87](https://github.com/adamsimms/rover/issues/87)); purchase not committed |
| **2. Grant-tier commercial** | Fictionlab Leo / Raph or Husarion Lynx if research/creation funding lands | Shortlist documented in [leo-vs-raph.md](leo-vs-raph.md) |
| **3. Full Fielding build** | Custom winterized machine for long unattended duty (separate engineering spec) | Paper design; Witty Pi and enclosure spikes open ([#18](https://github.com/adamsimms/rover/issues/18)) |

A commercial Year-1 test platform **does not** replace the custom full build for year-long zero-access deployment. It **defers** that path until funding and site consent catch up (OD-013).

**Deployment:** Pinchard's use is **maintained, removable, consent- and site-access-gated**, leave-no-trace (OD-012). Year-1 PoC is supervised only until permissions and build maturity allow more.

---

## Tier 1 — Year-1 proof of concept (lean)

### Mobility and chassis

**Lean:** [Waveshare UGV Beast ROS 2 kit](https://www.waveshare.com/product/robotics/mobile-robots/raspberry-pi-robots/ugv-beast-ros2-kit.htm) — **PT** (pan-tilt) + **Acce** (no stock Pi) + regional power plug.

| Factor | Beast (tracks) | Why not wheeled UGV Rover (same vendor) |
|--------|----------------|----------------------------------------|
| Ground | Grass, uneven, soft summer terrain; light snow tests | Wheeled kit faster (~1.3 m/s) but worse on rough / soft ground |
| Speed | ~0.35 m/s | Acceptable for observation pace |
| Sensors (ROS 2 kit) | RPLidar, **OAK-D Lite**, PT USB cam | Supports teleop, mapping, basic OA without a custom stack day one |
| Weather | **Not** winterized Fielding | Full IP / heating / burial logic stays on Tier 3 |

**Deferred for PoC:** Cobra Flex (overkill, not winterized), Jetson Orin Beast variant (only if heavy on-robot ML is required), AI-only kits without lidar path.

**Stability note (estimate):** PT mast raises center of mass. Treat side slopes above ~15–25° with caution until measured on site; stock **ICM-20948 IMU** can warn on roll/pitch in software.

### Compute

| Choice | Lean |
|--------|------|
| Host | **Raspberry Pi 5 8GB** (artist-supplied; kit is Acce) |
| On-robot ML accelerator | **Not day one** — prove observation → notes loop first; optional [AI HAT+ 2](https://www.raspberrypi.com/products/ai-hat-plus-2/) later if clearance and power budget allow |
| Field-notes LM | Project software on the Pi — not Waveshare demo command-following |

### Cameras

Two jobs; one cheap sensor should not do both (OD-009; spike [#16](https://github.com/adamsimms/rover/issues/16)).

| Job | Lean | Confidence |
|-----|------|------------|
| Drive, OA, continuous feed | Stock Beast PT **USB** cam + chassis **OAK-D Lite** | Vendor spec |
| Exhibition stills (medium prints) | **Pi HQ Camera (CSI)** on Pi 5 — ~13.5 × 10 in file dimensions @ 300 dpi | **Direction only** until camera spike |
| High-MP USB / mirrorless | **Deferred** (Arducam 64MP soft full-res; mirrorless on rails for grant tier or full build) | Desk research |

NoIR / 850 nm / multiplexer path remains **open** until [#16] closes.

### Power

**Stock Beast (vendor docs, estimate):**

- **3S UPS** — 3 × 18650 in series (**cells not included**); Waveshare recommends ≥2200 mAh, ≥4C discharge
- Charge: **12.6 V 2 A** via **DC5521** (center-positive); charge-while-running supported
- Pack energy: **~25–40 Wh** with typical 2500–3500 mAh cells
- Aggressive drive runtime: plan **~30–60 min** (motors dominate; vendor sheets often cite ~45–60 min on related UGVs)

**Chosen Year-1 extension path (estimate):**

1. Wall charge overnight (stock charger)
2. Daytime: compact **12 V Li-ion** pack (e.g. TalentCell class) → Beast **DC5521 charge jack** without opening chassis
3. Prefer chemistry that tops near **12.6 V** — avoid LiFePO₄ bricks that push ~14.6 V into the charge port
4. Charge port is ~**2 A** limited → expect **~1.5–2×** session assist, not 4× runtime while driving

**Rejected for PoC role:** 5 V-only USB banks as main robot power; Jackery-class stations (works electrically but too bulky for day-bag carry); bare panel → robot jack without Li-safe controller.

Wiki: [UPS Module 3S](https://www.waveshare.com/wiki/UPS_Module_3S)

### Solar (optional spike, parked only)

Solar on the **rover** is a **parked trickle**, not continuous driving power. Motors outspend a ~10 W panel while moving.

**Interesting PoC stack (estimate):**

| Component | Role |
|-----------|------|
| [WAVE-24167](https://abra-electronics.com/solar-products/solar-cells-chargers-modules/5-10-watts/wave-24167-semi-flexible-polycrystalline-silicon-solar-panel-18v-10w-supports-5v-regulated-output.html) semi-flex **18 V ~10 W** | Chassis-mount candidate (~435 × 200 mm) |
| **CN3722** (or equivalent) **3S 12.6 V** Li MPPT controller | **Required** — do **not** plug panel DC5521 (~18 V) straight into Beast charge jack |
| Beast DC5521 or TalentCell charge input | After fuse, polarity check, bench test |

**NL summer parked yield (estimate):** **~10–25 Wh/day** usable on a good coastal day; overcast near zero. One good day can roughly refill a stock Beast pack while parked; maybe **¼–⅓** of a ~70 Wh TalentCell class brick.

**Less DIY alternative:** Abra [KIT0210](https://abra-electronics.com/solar-products/solar-cells-chargers-modules/5-10-watts/kit0210-outdoor-solar-power-kit-10w-monocrystalline-panel-12v-5v-outputs.html) outdoor kit — verify 12 V rail vs 12.6 V Beast expectation before relying on it.

**Deprioritized:** ~100 W foldable + Jackery-class station (~CAD 370–450+ before tax) as base-camp power, not Year-1 day bag.

Safe wiring pattern: `Panel → fuse → 3S Li controller (12.6 V cutoff) → DC5521 into Beast` (or into TalentCell after verifying that brick's charge spec).

### Cellular (spike open)

Remote teleop and note uplink need validated **Canada bands and site coverage** — do not assume Pinchard's cell without evidence ([#88](https://github.com/adamsimms/rover/issues/88)).

**Desk lean (not bench-proven):**

| Path | PoC fit |
|------|---------|
| **USB LTE modem**, duty-cycled or switched off between uploads | **Preferred for PoC** — easier sealing on Beast |
| **Sixfab Base HAT + Quectel EC25** (NA/global SKU) | Best permanent Pi pattern — GPIO **HAT_PWR_OFF** hard power-cut |
| **Waveshare SIM7600G-H** | Same vendor ecosystem; ~50–150 mA online average (estimate) |

**Power principle:** lowest energy = modem **off** most of the time, not the lowest-idle HAT while always registered. LTE Cat-4 is sufficient for 480p teleop and field-note uplink; 5G not required.

---

## Tier 2 — Grant-tier commercial platforms

Side-by-side Fictionlab **Leo 1.9** vs **Raph 1.0**, Lynx peer, add-on stacks, EUR list bands, dock + LTE trade-offs: **[leo-vs-raph.md](leo-vs-raph.md)**.

**One-line read:** Leo + dock + integrations ≈ **€7.9k–8.5k** list (estimate); Raph ≈ **€13k+** with sensors in box; Lynx configured often **€15k–20k+** with stock LTE and industrial dock options (quotes required).

Grant funding would choose among these and/or fund a custom winter build (Tier 3).

---

## Tier 3 — Full Fielding build (long range)

Separate engineering spec (rocker-bogie wheelchair motors, LiFePO₄ + heating, Witty Pi wake-on-charge, pod/shelter logic, larger solar). Public numbers from earlier paper BOM:

| Band | Confidence | Notes |
|------|------------|-------|
| **~CAD 3,550–4,750** hardware (single-unit, pre-shipping/tax) | **Estimate** | Dominant cost: custom chassis/drivetrain; see [#24](https://github.com/adamsimms/rover/issues/24) |

**Highest paper-only hardware risk for unattended year-long operation:** Witty Pi wake-on-charge ([#18](https://github.com/adamsimms/rover/issues/18)) — treat as **active risk** until bench evidence lands.

This tier is **not** what the Beast PoC validates. It remains the target if grant work funds a purpose-built winter machine.

---

## Cost bands (summary)

Cross-link: [#24](https://github.com/adamsimms/rover/issues/24) build cost · [#31](https://github.com/adamsimms/rover/issues/31) quotes.

| Line | Band | Conf. |
|------|------|-------|
| Beast PoC kit + Pi 5 8GB + 18650s + Pi HQ | ~**USD/CAD 900–1,400** | E |
| TalentCell 12 V daytime extend | ~**CAD 80–150** | E |
| Optional solar spike (WAVE-24167 + CN3722) | ~**USD 40–55** | E |
| Cellular (USB or Sixfab + EC25) | ~**CAD 80–250** | E |
| Leo stack (dock + lidar + RUTX11 est.) | ~**€7,850–8,550** | E/Q |
| Raph assembled + DIY dock | ~**€13,000+** | E |
| Lynx configured + dock options | often **€15k–20k+** | Q |
| Full custom Fielding DIY | ~**CAD 3,550–4,750** | E |

**E** = estimate from list/vendor pages · **Q** = quote required

Travel, site prep, contingency, carrier plans, and grant ask amounts are separate ([#24](https://github.com/adamsimms/rover/issues/24)).

---

## Evidence still open

| Topic | Issue | What closes it |
|-------|-------|----------------|
| Public feasibility consolidation | [#10](https://github.com/adamsimms/rover/issues/10) | This doc + hedging review when spikes land |
| Platform tier lock | [#87](https://github.com/adamsimms/rover/issues/87) | Artist confirms tier strategy; purchase decision separate |
| Cellular modem + bands + duty cycle | [#88](https://github.com/adamsimms/rover/issues/88) | Bench mA + site/carrier validation |
| Camera architecture | [#16](https://github.com/adamsimms/rover/issues/16) | Hands-on Pi HQ / NoIR / mux spike |
| Witty Pi wake-on-charge | [#18](https://github.com/adamsimms/rover/issues/18) | Bench test for Tier 3 unattended path |
| Written supplier quotes | [#31](https://github.com/adamsimms/rover/issues/31) | Replace E bands with Q where possible |
| Extended-stack ethics (energy line) | [#84](https://github.com/adamsimms/rover/issues/84) | Checklist citing power/cellular choices |

---

## Year-1 buy summary (current lean, not an order)

1. UGV Beast PT ROS2 **Acce** + Pi 5 **8GB** + high-drain 18650s (2 sets optional)
2. **Pi HQ Camera** (+ CS/C lens later)
3. Power: wall overnight + **TalentCell 12 V → DC5521** daytime
4. Optional: **WAVE-24167** + **CN3722 12.6 V** parked solar spike
5. Cellular: after [#88](https://github.com/adamsimms/rover/issues/88) — USB modem or Sixfab + EC25
6. **Defer:** Jackery station, Arducam 64MP, AI HAT+ 2, mirrorless on rails, internal UPS surgery, full solar autonomy

---

*Adapted from Milestone 1 hardware research (2026-08-06 desk work, 2026-08-22 public consolidation). Do not invent site permissions, winter survival claims, or cellular coverage at Pinchard's.*
