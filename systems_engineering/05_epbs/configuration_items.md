# Configuration Items

**EPBS Layer — Configuration Item Register**

Configuration Items (CIs) are the procurable and deliverable items that make up the OSR system. Each CI has a defined part number (or reference), supplier, quantity, unit cost estimate, and acceptance test.

## CI-00 — OSR System (Top Level)

| Attribute | Value |
|---|---|
| **Kind** | SystemCI (complete integrated rover) |
| **Status** | Assembled from sub-CIs below |
| **Acceptance** | Full functional configuration audit (FCA) |

---

## CI-01 — Mechanical Assembly

### CI-01.1 — Body Frame Kit

| Item | Description | Supplier / Reference | Qty | Unit Cost (approx.) |
|---|---|---|---|---|
| 80/20 1010 extrusion | 1" × 1" aluminum T-slot, various lengths | 80/20 Inc. | ~8 pc | $5–15/pc |
| Body side plates | Laser-cut 6061 aluminum plate, 3 mm | Send-Cut-Send / OSR CAD files | 2 | $20–40 ea |
| Body top/bottom plates | Laser-cut 6061 aluminum plate | Send-Cut-Send / OSR CAD files | 2 | $15–30 ea |
| T-slot nuts (1/4-20) | For 1010 extrusion | 80/20 Inc. | 50 | Bulk |
| Electronics mounting standoffs | M3 × 10 mm hex standoffs | McMaster-Carr | 20 | $0.50 ea |

**Acceptance:** Assembled frame is rigid; no rack or twist > 2° across diagonal; all T-slot connections tight.

---

### CI-01.2 — Rocker-Bogie Suspension Kit

| Item | Description | Supplier / Reference | Qty | Unit Cost (approx.) |
|---|---|---|---|---|
| Rocker arm (×2) | Aluminum tube + plate, laser cut/bent | OSR CAD files | 2 | $25 ea |
| Bogie arm (×2) | Aluminum tube + plate | OSR CAD files | 2 | $20 ea |
| Differential bar | Aluminum flat bar | OSR CAD files | 1 | $10 |
| Shoulder screws M8 | Pivot pins for rocker/bogie joints | McMaster-Carr | 6 | $3 ea |
| Flanged bearings 8 mm bore | Pivot bearings | VXB / Amazon | 12 | $2–4 ea |
| Differential pivot shaft | 8 mm steel shaft, 200 mm | McMaster-Carr | 1 | $8 |

**Acceptance:** Both rocker assemblies articulate ±30° freely; differential bar equalizes rocker motion symmetrically when one side is displaced.

---

### CI-01.3 — Wheel Assembly Kit (×6)

| Item | Description | Supplier / Reference | Qty per wheel | Total Qty |
|---|---|---|---|---|
| Wheel hub | Aluminum, CNC turned | OSR CAD / SendCutSend | 1 | 6 |
| Tire | Rubber or TPU 3D-printed | Amazon / Printed | 1 | 6 |
| Drive motor | Nidec/Hurst DC motor w/ encoder, 12V | Nidec / OSR BOM | 1 | 6 |
| Motor mount bracket | Aluminum plate, laser cut | OSR CAD files | 1 | 6 |
| Motor shaft coupler | 6 mm to hub bore | Servocity | 1 | 6 |
| Wheel axle bearing | Flanged 6 mm | VXB | 2 | 12 |

**Acceptance:** Each wheel spins freely with < 1 N·m drag; encoder returns pulses when shaft rotated by hand.

---

### CI-01.4 — Corner Steering Assembly Kit (×4)

| Item | Description | Supplier / Reference | Qty per corner | Total Qty |
|---|---|---|---|---|
| Steering bracket | Aluminum plate, laser cut | OSR CAD files | 1 | 4 |
| Corner servo | Digital servo ≥ 15 kg·cm | Hitec / Savox | 1 | 4 |
| Servo horn | Aluminum, keyed | Servocity | 1 | 4 |
| Pivot bearing | Flanged 8 mm | VXB | 2 | 8 |
| Steering shaft | 8 mm steel | McMaster-Carr | 1 | 4 |

**Acceptance:** Each corner steers ±30° on servo command; no binding in pivot bearings.

---

## CI-02 — Electronics Assembly

### CI-02.1 — Compute Module

| Item | Description | Supplier | Qty | Unit Cost |
|---|---|---|---|---|
| Raspberry Pi 4B 4 GB | SBC | Raspberry Pi Ltd / Adafruit | 1 | ~$55 |
| MicroSD Card 32 GB+ | Storage | Samsung / SanDisk | 1 | $8–12 |
| USB-C Power Cable | 5V/3A, ≤ 0.5 m | Amazon | 1 | $5 |
| Heatsink kit | Passive cooling | Amazon | 1 | $5 |

**Acceptance:** RPi boots to Linux prompt; SSH accessible; Wi-Fi connects to test AP.

---

### CI-02.2 — Control PCB

| Item | Description | Supplier | Qty | Unit Cost |
|---|---|---|---|---|
| OSR Control PCB (bare) | Custom PCB gerbers | JLCPCB / OSH Park | 1 | $15–40 |
| DC-DC Buck Converter 5V | LM2596 or equivalent | OSR BOM | 1 | $5 |
| INA219 current sensor | I²C power monitor | Adafruit | 1 | $8 |
| XT60 female connector | Battery input | Amazon | 1 | $2 |
| Blade fuse holder + 30A fuse | In-line protection | Amazon | 1 | $3 |
| Screw terminals | Motor/power outputs | DigiKey | 10 | $0.50 ea |

**Acceptance:** 5V rail within ±0.25V under 3A load; INA219 readable over I²C; no shorts on motor outputs.

---

### CI-02.3 — Motor Controller Kit

| Item | Description | Supplier | Qty | Unit Cost |
|---|---|---|---|---|
| RoboClaw 2×15A | Dual DC motor controller | Basicmicro | 3 | ~$130 ea |
| USB-B cable | Controller connection | Amazon | 3 | $5 ea |

**Acceptance:** Each unit recognized at unique serial address; motor channels respond to speed commands; encoder counts increment correctly.

---

### CI-02.4 — Servo Driver

| Item | Description | Supplier | Qty | Unit Cost |
|---|---|---|---|---|
| PCA9685 16-ch PWM module | I²C servo driver | Adafruit #815 | 1 | $7 |

**Acceptance:** I²C communication confirmed; servo moves to commanded angle.

---

### CI-02.5 — IMU Module

| Item | Description | Supplier | Qty | Unit Cost |
|---|---|---|---|---|
| BNO055 9-DOF IMU breakout | Absolute orientation sensor | Adafruit #2472 | 1 | $35 |
| Qwiic/I²C cable | 100 mm | Adafruit / SparkFun | 1 | $3 |

**Acceptance:** BNO055 returns stable quaternion at 100 Hz; orientation matches physical rover attitude within 5°.

---

### CI-02.6 — Camera Module

| Item | Description | Supplier | Qty | Unit Cost |
|---|---|---|---|---|
| Raspberry Pi Camera Module 3 | 12 MP, CSI-2 | Raspberry Pi Ltd | 1 | $25 |
| CSI ribbon cable 200 mm | Camera to RPi | Amazon | 1 | $3 |
| Camera mount bracket | 3D-printed or aluminum | OSR CAD files | 1 | $2 |

**Acceptance:** Camera streams 1080p video at ≥ 15 fps; image focused at 0.5–2 m range.

---

### CI-02.7 — Wiring Harness Kit

| Item | Description | Gauge | Qty |
|---|---|---|---|
| Battery cable (12V main) | XT60 to PCB | 12 AWG silicone | 1 harness |
| Motor power cables | PCB to RoboClaw | 14 AWG | 3 harnesses |
| Motor lead cables | RoboClaw to motors | 18 AWG | 6 pairs |
| Servo extension cables | PCA9685 to servos | 22 AWG | 4 × 400 mm |
| I²C cables | RPi to IMU, PCA9685 | 24 AWG | 2 × 200 mm |
| GPIO ribbon | RPi to PCB | 26 AWG ribbon | 1 |

---

## CI-03 — Power Assembly

### CI-03.1 — Battery Pack

| Item | Description | Supplier | Qty | Unit Cost |
|---|---|---|---|---|
| 3S LiPo 5200 mAh 20C | Main rover battery | Zeee / Tattu / Gens ace | 1 | $30–50 |
| XT60 male plug | Battery pigtail | Amazon | 1 | $2 |

**Acceptance:** Charges to 12.6V; no swelling during charge; holds charge ≥ 6 hours on shelf.

---

### CI-03.2 — Battery Charger

| Item | Description | Supplier | Qty | Unit Cost |
|---|---|---|---|---|
| 3S LiPo balance charger | Up to 6A charge rate | SkyRC B6 / iCharger | 1 | $35–80 |
| Power supply (AC adapter) | For charger input | Included or separate | 1 | — |

---

## CI-04 — Software

### CI-04.1 — Raspberry Pi OS Image

| Attribute | Value |
|---|---|
| **Base OS** | Raspberry Pi OS Bullseye (64-bit) |
| **Version** | Latest at time of build |
| **Installation** | Raspberry Pi Imager → microSD |
| **URL** | https://www.raspberrypi.com/software/ |

### CI-04.2 — OSR ROS Software Package

| Attribute | Value |
|---|---|
| **Repository** | https://github.com/nasa-jpl/osr-rover-code |
| **Branch** | `master` |
| **ROS version** | Noetic (Ubuntu 20.04) or Humble (Ubuntu 22.04) |
| **Installation** | `git clone` + `catkin_make` per software README |
| **Nodes** | See [Physical Functions](../04_physical_architecture/physical_functions.md) |

---

## CI-05 — Fastener and Hardware Kit

### CI-05.1 — Structural Fasteners

| Item | Standard | Qty |
|---|---|---|
| M3 × 8 SHCS | DIN 912 | 50 |
| M3 × 12 SHCS | DIN 912 | 30 |
| M3 × 20 SHCS | DIN 912 | 20 |
| M3 hex nut | DIN 934 | 100 |
| M3 lock nut | DIN 985 | 50 |
| M4 × 10 SHCS | DIN 912 | 30 |
| M4 × 16 SHCS | DIN 912 | 20 |
| M4 hex nut | DIN 934 | 50 |
| 1/4-20 × 3/4 BHCS | Imperial, T-slot | 30 |
| 1/4-20 T-nut | For 1010 extrusion | 30 |
| M8 shoulder screw 30 mm | Pivot pins | 6 |

### CI-05.2 — Bearings and Inserts

| Item | Standard | Qty |
|---|---|---|
| Flanged ball bearing 8 mm bore | F608ZZ | 16 |
| Flanged ball bearing 6 mm bore | F606ZZ | 12 |
| M3 heat-set insert | For 3D-printed parts | 30 |

### CI-05.3 — Wiring Hardware

| Item | Description | Qty |
|---|---|---|
| XT60 connectors (pair) | Battery/motor power | 5 |
| JST-PH 2-pin | Signal/sensor power | 10 |
| Wire ferrules | For screw terminals | 50 |
| Zip ties 100 mm | Cable management | 50 |
| Cable sleeves | Braided, 6 mm | 1 m |
| Heat shrink (assorted) | 2–8 mm | 1 kit |

## Total Estimated Build Cost

| Category | Estimated Cost (USD) |
|---|---|
| Mechanical (CI-01) | $350–500 |
| Electronics (CI-02) | $600–800 |
| Power (CI-03) | $70–130 |
| Software (CI-04) | $0 (open source) |
| Fasteners (CI-05) | $80–120 |
| **Total** | **$1,100–1,550** |

*Costs vary by supplier, region, and whether optional parts (e.g., camera) are included.*
