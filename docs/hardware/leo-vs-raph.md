# Leo Rover 1.9 vs Raph Rover 1.0 (Fictionlab)

**Date:** 2026-08-06  
**Purpose:** Grant-tier Fictionlab shortlist: side-by-side platform, add-ons, cost stacks, and how they sit vs Husarion Lynx for dock + cellular.  
**Public canon** for this shortlist. Related vault notes (not a copy of this page): `Rover/MOCs/Rover - MOC - Chassis and Drivetrain.md`, `Rover/MOCs/Rover - MOC - Engineering Precedents.md`, `Rover/Notes/Rover - CITATION - Commercial rover survey findings - Leo Rover, Jackal, Husky, and others.md`. Dual-write a shortlist change to those MOCs in the same turn.  
**Related:** [conceptual-core](../concept/conceptual-core.md).

**Context (artist answers, 2026-08-06):** funding path TBD; lidar desirable; better still quality preferred; include charging/dock from day one; cellular vs solar Wi‑Fi open (may favor Lynx for LTE-in-box); ship to **Canada** unless Europe trip pickup.

Prices are Fictionlab/Husarion list **EUR** (2026-08); shipping, duty, tax, and CAD conversion extra. Verify before purchase.

---

## Quick verdict

| Prefer… | Lean toward |
|---------|-------------|
| Lower Fictionlab entry, best **stock stills**, mature **dock add-on** | **Leo 1.9** + charging station + Powerbox (+ DIY lidar) |
| Lidar + depth **in the box**, speed, hot-swap, IP54, ~€13k | **Raph 1.0** (dock is DIY/shelter — no Leo charging-station SKU) |
| **LTE in box** + industrial dock + huge Wh | **Lynx** (not Fictionlab; WiBotic wireless dock; ~€13.6k base) |

Leo and Raph share the Fictionlab ecosystem story (open ROS 2, battery culture, field R&D). Lynx wins remote-site cellular without a second radio project.

---

## Side-by-side — platforms

| | **[Leo Rover 1.9](https://fictionlab.pl/shop/leo-rover-1-9/)** | **[Raph Rover 1.0](https://fictionlab.pl/shop/raph-rover-1-0/)** |
|--|--|--|
| **List price** | DIY **~€4,799** / assembled **~€5,499** | Assembled only **~€12,950** |
| **Docs** | [Specs](https://docs.fictionlab.pl/leo-rover/documentation/specification) · [Addons](https://docs.fictionlab.pl/leo-rover/addons) | [Specs](https://docs.fictionlab.pl/raph-rover/documentation/specification) · [Docs hub](https://docs.fictionlab.pl/raph-rover) |
| **Weather** | **IP55** | **IP54** |
| **Mass / payload** | ~7 kg / ~5 kg | ~12.5 kg / ~10 kg |
| **Size (L×W×H)** | ~424×445×303 mm | ~559×474×255 mm |
| **Speed** | ~0.4 m/s | ~**1.8 m/s** |
| **Drive** | 4×4 rocker, differential | Steered (Ackermann-class); ~80 mm clearance |
| **Computer** | **Pi 5 4GB** + LeoCore; LeoOS / ROS 2 | **UP Board 7000** (Intel N100, 8 GB) + RaphCore; Ubuntu 24.04 / **ROS 2 Jazzy** |
| **Stock camera** | **Arducam 12.3MP** HQ-class (IMX477) + 158° M12 — best Fictionlab **stills** OOB | **OAK-D Pro W** — **12 MP** RGB + active stereo depth (vision/SLAM strong; print path different from Pi HQ) |
| **Stock lidar** | **None** — [integration docs](https://docs.fictionlab.pl/integrations/lidars) (e.g. RPLIDAR S3 DIY) | **RPLidar S3** included |
| **Battery** | 3S2P ~**73 Wh** standard; optional high-cap ~**160 Wh** | Dual hot-swap **6S ~86 Wh** each (~**173 Wh** with both) |
| **Runtime (vendor)** | Up to ~4 h standard; high-cap claims up to ~10 h drive | Up to ~4 h with 2 packs; hot-swap extends |
| **Network stock** | Wi‑Fi AP + join upstream | **Teltonika RUTX10** — Wi‑Fi / Ethernet (**not LTE**) |
| **Cellular** | DIY (USB modem / HAT) or quote RUTX11 integration | DIY / router swap — **no stock LTE** |
| **Charge interface** | 12.6 V class; Weipu battery connectors | External **12–27 V** charge/power; dual pack bays |
| **Official dock** | **Yes** — [Charging station](https://fictionlab.pl/shop/charging-station/) (€995) + pads cover | **No Fictionlab charging-station SKU** (Leo-labelled add-ons). Shelter + cable/hot-swap or custom dock |
| **Best for Rover** | Stills + notes + dock ecosystem at mid price | Field autonomy sensors OOB + speed if budget ~€13k Fictionlab |

---

## Add-ons — what you’d want day one

### Shared goals (from your answers)

- Lidar: yes  
- Image quality: as good as practical  
- Dock / safe-house charge: day one  
- Canada delivery (or Europe pickup for restricted batteries)  
- Cellular TBD — see LTE vs solar Wi‑Fi below  

### Leo — recommended add-on set

| Add-on | Why | List EUR | Link |
|--------|-----|----------|------|
| **DIY Leo 1.9** (Developer Kit) | Base platform (CALQ path) | 4,799 (assembled 5,499) | [Shop](https://fictionlab.pl/shop/leo-rover-1-9/) |
| **[Powerbox](https://fictionlab.pl/shop/powerbox/)** | 5 V/12 V taps, external battery access, charge-while-run / hot-swap assist | 195 | [Shop](https://fictionlab.pl/shop/powerbox/) |
| **[Charging station](https://fictionlab.pl/shop/charging-station/)** | Day-1 dock / safe-house; ArUco docking path | 995 | [Shop](https://fictionlab.pl/shop/charging-station/) |
| **[Electronics cover (charging pads)](https://fictionlab.pl/shop/electronics-cover-charging-pads/)** | Required path for station contact pads (with station kit practices) | 155 | [Shop](https://fictionlab.pl/shop/category/add-ons/) |
| **[Battery pack](https://fictionlab.pl/shop/battery-pack/)** (spare standard) | Swap / charge one while running | 185 | [Shop](https://fictionlab.pl/shop/category/add-ons/) |
| **[Sandwich plate](https://fictionlab.pl/shop/sandwich-plate/)** | Lidar / extra cam mounting | 80 | [Shop](https://fictionlab.pl/shop/category/add-ons/) |
| **[Universal camera mast](https://fictionlab.pl/shop/universal-camera-mast/)** | Better vantage / optional second stills body | 295 | [Shop](https://fictionlab.pl/shop/category/add-ons/) |
| **RPLIDAR S3** (or similar) + Fictionlab integration | Lidar day one (not stock) | ~400–600 street + DIY time | [Lidar integrations](https://docs.fictionlab.pl/integrations/lidars) |
| **[High capacity battery](https://fictionlab.pl/shop/high-capacity-battery/)** (~160 Wh) | Long sessions | 795 | **Inland Europe shipping only** — Canada: prefer Europe pickup or skip; use spare standard packs instead |

**Optional later:** Mecanum set (€460); OAK / RUTX11 integrations (price on request).

### Raph — recommended add-on set

Raph already includes dual batteries, OAK-D Pro W, RPLidar S3, industrial Wi‑Fi router, ROS 2 stack.

| Item | Why | List EUR | Notes |
|------|-----|----------|-------|
| **Raph 1.0 assembled** | Base | ~12,950 | [Shop](https://fictionlab.pl/shop/raph-rover-1-0/) |
| **Extra 6S battery pack(s)** | True hot-swap field endurance | Quote Fictionlab | Confirm spare-pack SKU / shipping to Canada |
| **Safe-house dock (DIY)** | No Leo charging-station compatibility claimed | Materials + PSU sized for **12–27 V / 6S** charge | Solar on shelter roof → charge spare packs or external port with proper Li management |
| **Stills upgrade (optional)** | You want max image quality | Pi HQ / mirrorless on payload plate | OOB OAK is strong for notes/vision; exhibition prints may still want dedicated stills cam |
| **LTE (optional)** | Remote NL | Quote router upgrade / integration | Stock is **RUTX10** (no LTE) |

Fictionlab [add-ons category](https://fictionlab.pl/shop/category/add-ons/) is labelled **Leo 1.8 / 1.9** for Powerbox, charging station, high-cap battery, mast, etc. Treat those as **Leo ecosystem**, not drop-in Raph unless Fictionlab confirms.

### Lynx dock equivalent (your Q5)

Yes. Husarion **[WiBotic WCH01 (on-robot) + WCH02 (ground station)](https://husarion.com/tutorials/ros-equipment/wch01-02/)** — wireless dock, ~200 W, optional with Lynx/Panther (IP66-compatible path). Price is **quote** via [sales / store](https://store.husarion.com/products/lynx), not a public Fictionlab-style €995 SKU.

| Dock story | Leo | Raph | Lynx |
|------------|-----|------|------|
| Official product | Charging station €995 + pads cover | None listed | WiBotic WCH01/02 (quote) |
| Autonomy helpers | ArUco on station | Custom | Husarion autonomy + AprilTag docking docs |
| Cable fallback | Stock 12.6 V charger | 12–27 V external | Stock cable charger |

---

## Cost comparison (EUR list, no shipping/duty)

### A — Leo “field notes + dock + LTE + lidar” stack (CALQ 1–4)

| Line | EUR |
|------|-----|
| Leo 1.9 DIY / Developer Kit | 4,799 |
| Powerbox | 195 |
| Charging station | 995 |
| Charging-pads cover | 155 |
| Spare battery pack | 185 |
| Cable-opening cover | 45 |
| Sandwich plate | 80 |
| Camera mast | 295 |
| RUTX11 Leo integration | ~500 quote |
| RPLIDAR S3 Leo integration | ~600 quote |
| **Subtotal (Canada-friendly, no high-cap)** | **~€7,850** |
| *If Europe pickup:* high-cap battery | +795 |
| *If assembled Leo instead:* | +700 |

Assembled Leo base (+€700) → ~**€8,550** before integration quote variance.

### B — Raph “sensors in box + shelter charge”

| Line | EUR |
|------|-----|
| Raph 1.0 | 12,950 |
| Spare pack(s) | quote |
| DIY dock / shelter PSU | DIY budget (e.g. 200–800 materials) |
| Optional stills cam | your kit |
| **Subtotal** | **~€13,000+** |

### C — Rough peer: Lynx “LTE + dock”

| Line | EUR |
|------|-----|
| Lynx base (RUTX11 4G in typical config) | ~13,600 |
| User PC / lidar / cam options | quote |
| WiBotic WCH01+WCH02 | quote |
| **Ballpark configured** | often **€15k–20k+** depending on options |

**Reading:** Leo DIY+addons (dock + RUTX11 + lidar + mast) can land around ~€7.9k list/est. and still keep Fictionlab dock + cellular. Raph jumps to ~€13k for integrated field sensors/speed. Lynx is similar € to Raph at base but buys **LTE + industrial mass/Wh** instead of Fictionlab camera/dock culture (Leo+RUTX11 closes the LTE gap at mid price).

---

## LTE in box vs solar-powered Wi‑Fi (your Q6)

Without LTE you need **some** backhaul for remote notes / teleop / forecast→home:

| Approach | Pros | Cons |
|----------|------|------|
| **Lynx stock LTE (RUTX11)** | Works where there is cell coverage; dual-SIM failover; GNSS on router; designed for field UGVs | Carrier plan cost; coverage holes; €13.6k+ platform; heavy (~40 kg) |
| **Fictionlab (Leo/Raph) + solar Wi‑Fi AP** | Keep Leo/Raph ecosystem; shelter can host router + panels; local teleop even offline | AP only covers **local** radius; uplink still needs LTE modem, Starlink, or nearby fibre; another system to power and weatherproof |
| **Fictionlab + USB LTE on Pi/UP** | Cheaper than Lynx jump | DIY antennas, power, IP sealing, software; Raph’s RUTX10 is Wi‑Fi-only until swapped |
| **Phone hotspot (supervised PoC)** | Cheap for park tests | Not unsupervised Pinchard’s |

**Trade-off in one line:** Leo/Raph optimize **platform + dock + imaging culture**; Lynx optimizes **remote connectivity + endurance** out of the crate. A solar Wi‑Fi shelter helps **local** ops and charging; it does **not** replace wide-area cellular unless the shelter itself has LTE/Starlink uplink.

If Pinchard’s / unsupervised remote is a near-term requirement, weight Lynx (or Fictionlab + paid LTE integration) higher. If Year-1 is supervised park + grant narrative, Leo+dock (or Raph) stays coherent and cellular can wait.

---

## Canada / Europe pickup (your Q7)

- **High-cap Leo battery (€795):** Fictionlab ships **inland Europe only** (UN3480). For Canada, plan **Europe trip pickup** or stick to **standard spare packs (€185)** + dock.  
- Raph dual 6S packs: confirm spare-pack export rules before assuming Canada delivery.  
- Duty/tax on €5k–13k robots: budget a contingency; ask Fictionlab for Canada quotes.

---

## Mapping to Rover concept

- Chassis still supports **observation → fragmentary field notes**, not perfection ([conceptual-core](../concept/conceptual-core.md)).  
- Dock + rain-detect→home remains compatible with non-winter Fielding.  
- Do not invent site permissions for Pinchard’s docks or cellular infrastructure.

---

## Suggested stacks (until funding path locks)

1. **Fictionlab mid (CALQ draft 2026-08-10):** Leo DIY / unassembled + Powerbox + charging station + pads cover + spare pack + cable-opening cover + sandwich plate + camera mast + RUTX11 + RPLidar S3 (~€7.9k list/est. + solar shelter separate).  
2. **Fictionlab high:** Raph (~€13k) + spare pack + shelter DIY dock; add stills payload if prints matter.  
3. **Remote-first:** Lynx + quote WiBotic + confirm Canadian LTE bands — if LTE-in-box outweighs Fictionlab camera/dock.

---

## Links

- [Leo shop](https://fictionlab.pl/shop/leo-rover-1-9/) · [Raph shop](https://fictionlab.pl/shop/raph-rover-1-0/) · [Add-ons](https://fictionlab.pl/shop/category/add-ons/)  
- [Lynx store](https://store.husarion.com/products/lynx) · [WiBotic guide](https://husarion.com/tutorials/ros-equipment/wch01-02/)  
- [Leo lidar integrations](https://docs.fictionlab.pl/integrations/lidars)

*Drafted from Cursor platform research, 2026-08-06. Prices approximate; verify with Fictionlab/Husarion before grant budgets.*
