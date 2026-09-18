# Operational Activities

**OA Layer — Operational Activity Register**

Operational Activities (OActs) describe **what must be done** in the operational world — independent of how the system does it. Each activity is owned by an Operational Entity and may exchange data or artifacts with other activities.

## Activity Hierarchy

```
Root Operational Activity (OAct-00)
├── OAct-01  Conduct Rover Mission
│   ├── OAct-01.1  Plan Traverse Route
│   ├── OAct-01.2  Command Rover Motion
│   ├── OAct-01.3  Monitor Rover State
│   ├── OAct-01.4  Respond to Hazard
│   └── OAct-01.5  Collect Sensor Data
├── OAct-02  Maintain Rover
│   ├── OAct-02.1  Charge Battery
│   ├── OAct-02.2  Inspect and Repair Hardware
│   └── OAct-02.3  Update Software
├── OAct-03  Build Rover
│   ├── OAct-03.1  Source Components
│   ├── OAct-03.2  Assemble Mechanical Structure
│   ├── OAct-03.3  Install Electrical System
│   └── OAct-03.4  Install and Configure Software
└── OAct-04  Extend Rover Capability
    ├── OAct-04.1  Design Payload or Modification
    ├── OAct-04.2  Integrate Payload
    └── OAct-04.3  Develop Custom Software
```

## Activity Descriptions

### OAct-01 — Conduct Rover Mission

The core operational scenario: a human operator directs the rover through a terrain environment to accomplish a task (traverse, exploration, demonstration, data collection).

#### OAct-01.1 — Plan Traverse Route
- **Owner:** Ground Operator
- **Inputs:** Terrain knowledge, mission objectives
- **Outputs:** Planned waypoints, go/no-go decision
- **Description:** Operator assesses terrain ahead of the rover and determines a path to traverse, avoiding obstacles that exceed the rover's mobility limits.

#### OAct-01.2 — Command Rover Motion
- **Owner:** Ground Operator → Ground Station → OSR System
- **Inputs:** Operator intent (gamepad axes/buttons)
- **Outputs:** Motion commands (velocity, steering angle)
- **Description:** Operator translates intended motion into commands. Ground station encodes and transmits these. The rover executes the commanded motion.

#### OAct-01.3 — Monitor Rover State
- **Owner:** Ground Operator
- **Inputs:** Telemetry from rover (battery voltage, motor currents, wheel speeds, IMU orientation)
- **Outputs:** Situational awareness, fault recognition
- **Description:** Operator continuously monitors rover health and position during the mission, watching for faults, battery depletion, or mechanical issues.

#### OAct-01.4 — Respond to Hazard
- **Owner:** Ground Operator
- **Inputs:** Hazard detection (visual inspection or telemetry anomaly)
- **Outputs:** Corrective commands (stop, reverse, new route)
- **Description:** When the operator detects a hazard (stuck wheel, tip risk, low battery), they take corrective action to protect the rover.

#### OAct-01.5 — Collect Sensor Data
- **Owner:** Ground Operator / Developer
- **Inputs:** Camera stream, optional payload sensor outputs
- **Outputs:** Recorded images, data logs
- **Description:** Operator captures data from onboard sensors during the traverse.

---

### OAct-02 — Maintain Rover

#### OAct-02.1 — Charge Battery
- **Owner:** Builder / Operator
- **Inputs:** Depleted battery pack
- **Outputs:** Charged battery, restored operational capacity
- **Description:** Remove or connect battery to charger; monitor charging state.

#### OAct-02.2 — Inspect and Repair Hardware
- **Owner:** Builder
- **Inputs:** Mechanical fault observation
- **Outputs:** Repaired assembly, replaced components
- **Description:** Inspect joints, fasteners, wheels, and wiring after operation; replace worn or damaged parts.

#### OAct-02.3 — Update Software
- **Owner:** Developer
- **Inputs:** New software version or bug fix
- **Outputs:** Updated rover firmware/software
- **Description:** Developer connects to the rover's onboard computer and deploys updated software packages.

---

### OAct-03 — Build Rover

#### OAct-03.1 — Source Components
- **Owner:** Builder
- **Inputs:** Parts list, budget
- **Outputs:** Procured parts kit
- **Description:** Builder orders mechanical hardware, electronics, motors, and compute components from suppliers.

#### OAct-03.2 — Assemble Mechanical Structure
- **Owner:** Builder
- **Inputs:** Procured parts, assembly instructions
- **Outputs:** Assembled chassis with rocker-bogie suspension and wheels
- **Description:** Builder follows step-by-step instructions to assemble the frame, rocker-bogie linkage, corner steering assemblies, and six wheel modules.

#### OAct-03.3 — Install Electrical System
- **Owner:** Builder
- **Inputs:** Electronics kit, wiring diagrams
- **Outputs:** Wired and powered electrical system
- **Description:** Builder installs PCB, motors, motor drivers, and power distribution; performs wiring per schematic.

#### OAct-03.4 — Install and Configure Software
- **Owner:** Developer / Builder
- **Inputs:** Software repository, Raspberry Pi
- **Outputs:** Operational rover with running software
- **Description:** Flash OS, clone software repo, configure network and ROS environment, test communication with ground station.

---

### OAct-04 — Extend Rover Capability

#### OAct-04.1 — Design Payload or Modification
- **Owner:** Developer / Engineer Contributor
- **Inputs:** Extension requirements, rover interface specs
- **Outputs:** Payload design (mechanical + electrical + software)

#### OAct-04.2 — Integrate Payload
- **Owner:** Builder
- **Inputs:** Payload hardware, rover mounting points
- **Outputs:** Rover with integrated payload

#### OAct-04.3 — Develop Custom Software
- **Owner:** Developer
- **Inputs:** Payload data interface, ROS APIs
- **Outputs:** Custom ROS nodes, behaviors, or autonomy modules

## Operational Scenario: Nominal Mission

```
Operator powers on rover
    └──► Rover boots, establishes wireless link
Operator verifies link via Ground Station
    └──► Telemetry stream confirmed
Operator commands forward motion
    └──► Rover traverses 2 m over flat surface
Operator commands left turn
    └──► Rover pivots 45°
Operator detects low battery warning
    └──► Operator commands stop and returns rover to start
Operator disconnects power and charges battery
```
