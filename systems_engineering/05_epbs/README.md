# EPBS Architecture — End Product Breakdown Structure

**Arcadia Layer 5 of 5**

The EPBS Architecture answers the question: **WHAT is actually built and delivered?** It defines the **product breakdown structure** — the configuration items (CIs) that are procured, manufactured, or integrated to produce the final system.

## Purpose

The EPBS provides the formal breakdown of the OSR into deliverable, controllable items. It is the bridge between engineering models and the physical "thing you can put on a shelf." Each Configuration Item (CI) traces to a Physical Component and can be independently:

- **Identified** (part number, supplier reference)
- **Acquired** (purchased or manufactured)
- **Tested** (acceptance criteria)
- **Replaced** (in case of failure)

## Documents

| Document | Contents |
|---|---|
| [Configuration Items](configuration_items.md) | Complete product breakdown with part numbers |

## Product Tree (Top Level)

```
OSR System (CI-00)
├── CI-01  Mechanical Assembly
│   ├── CI-01.1  Body Frame Kit
│   ├── CI-01.2  Rocker-Bogie Suspension Kit
│   ├── CI-01.3  Wheel Assembly Kit (×6)
│   └── CI-01.4  Corner Steering Assembly Kit (×4)
├── CI-02  Electronics Assembly
│   ├── CI-02.1  Compute Module (Raspberry Pi 4B)
│   ├── CI-02.2  Control PCB
│   ├── CI-02.3  Motor Controller Kit (RoboClaw ×3)
│   ├── CI-02.4  Servo Driver (PCA9685)
│   ├── CI-02.5  IMU Module
│   ├── CI-02.6  Camera Module
│   └── CI-02.7  Wiring Harness Kit
├── CI-03  Power Assembly
│   ├── CI-03.1  Battery Pack (3S LiPo)
│   └── CI-03.2  Battery Charger
├── CI-04  Software
│   ├── CI-04.1  Raspberry Pi OS Image
│   └── CI-04.2  OSR ROS Software Package
└── CI-05  Fastener and Hardware Kit
    ├── CI-05.1  Structural Fasteners
    ├── CI-05.2  Bearings and Inserts
    └── CI-05.3  Wiring Hardware
```

## CI Realization Traceability

| CI ID | Configuration Item | Physical Component Realized |
|---|---|---|
| CI-01.1 | Body Frame Kit | PC-MECH-01 |
| CI-01.2 | Rocker-Bogie Suspension Kit | PC-MECH-02 |
| CI-01.3 | Wheel Assembly Kit (×6) | PC-MECH-03 |
| CI-01.4 | Corner Steering Assembly Kit (×4) | PC-MECH-04 |
| CI-02.1 | Raspberry Pi 4B | PC-COMP-01 |
| CI-02.2 | Control PCB | PC-PCB-01 |
| CI-02.3 | RoboClaw 2×15A (×3) | PC-MCTL-01 |
| CI-02.4 | PCA9685 Servo Driver | PC-MCTL-02 support |
| CI-02.5 | IMU Module | PC-SENS-01 |
| CI-02.6 | Camera Module | PC-CAM-01 |
| CI-02.7 | Wiring Harness | PC wiring |
| CI-03.1 | Battery Pack | PC-PWR-01 |
| CI-03.2 | Battery Charger | PC-PWR-02 |
| CI-04.1 | RPi OS Image | PC-COMP-01 software |
| CI-04.2 | OSR ROS Package | LC-01 through LC-08 |

## Acceptance Criteria by CI Class

### Mechanical CIs (CI-01.x)
- All fasteners present and torqued per assembly guide
- Rocker-bogie articulates freely through full range with no binding
- All six wheels spin freely; no axial play > 1 mm

### Electronics CIs (CI-02.x)
- PCB passes continuity check on power rails
- Each RoboClaw recognized by Basicmicro Motion Studio
- IMU returns valid quaternion data at ≥ 50 Hz
- Camera streams video at ≥ 10 fps

### Power CIs (CI-03.x)
- Battery charges to full (≥ 12.6V for 3S) without swelling
- Charger terminates correctly at full charge

### Software CIs (CI-04.x)
- RPi boots to ROS environment without error
- All ROS nodes launch and advertise expected topics
- Test traverse: rover drives 1 m forward and returns on command

## Build Readiness Reviews

| Review | Milestone | Gate Criteria |
|---|---|---|
| **MRR** — Mechanical Readiness Review | After CI-01 assembly | All wheels ground-contacting on flat surface; suspension articulates |
| **ERR** — Electrical Readiness Review | After CI-02 assembly | All motor controllers powered; RPi accessible via SSH |
| **SRR** — Software Readiness Review | After CI-04 install | All nodes running; `/cmd_vel` commands produce motor motion |
| **FCA** — Functional Configuration Audit | After full integration | All M-01 scenario success criteria met |
