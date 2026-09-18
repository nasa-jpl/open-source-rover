# Missions and Use Cases

**SA Layer — Mission Register**

Missions define the operational scenarios that the OSR system must support. Each mission describes the context, actors, preconditions, scenario flow, and success criteria.

## Mission Register

| ID | Mission | Primary Stakeholders | Frequency |
|---|---|---|---|
| M-01 | Nominal Terrain Traverse | Operator, Educator, Student | High |
| M-02 | Obstacle Negotiation | Operator | Medium |
| M-03 | Fault Recovery | Operator | Low |
| M-04 | Software Development and Test | Developer | High |
| M-05 | Classroom Demonstration | Educator, Student | High |
| M-06 | Payload Operation | Developer, Researcher | Low |
| M-07 | Build and Bring-Up | Builder | One-time per unit |

---

## M-01 — Nominal Terrain Traverse

**Scenario:** Operator drives the rover across a prepared surface (lab floor, gym, outdoor path) using a gamepad.

**Preconditions:**
- Rover is powered on and fully booted
- Ground station is connected and receiving telemetry
- Battery charge ≥ 50%

**Scenario Flow:**
1. Operator powers on rover; waits for boot (~30 s)
2. Operator launches ground station software
3. Ground station confirms telemetry stream (battery, orientation)
4. Operator commands forward motion with gamepad
5. Rover accelerates to commanded speed
6. Operator steers rover left/right to avoid obstacles
7. Operator monitors telemetry during traverse
8. Operator commands stop; rover decelerates to rest
9. Operator powers off rover; connects battery to charger

**Success Criteria:**
- Rover follows operator commands with ≤ 200 ms latency
- No wheel slip or stall on flat surface
- Telemetry updates continuously at ≥ 5 Hz
- Battery depletes predictably; low-battery warning displayed before cutoff

---

## M-02 — Obstacle Negotiation

**Scenario:** Rover traverses a surface with discrete obstacles (books, wooden blocks) up to ~75 mm height.

**Preconditions:** Same as M-01

**Scenario Flow:**
1. Operator positions rover 0.5 m from obstacle
2. Operator commands slow forward motion (< 0.1 m/s)
3. Lead wheels contact obstacle and begin to climb
4. Rocker-bogie suspension articulates passively — other wheels maintain ground contact
5. Rover crests obstacle; suspension returns to nominal
6. Operator continues traverse on far side of obstacle

**Success Criteria:**
- All six wheels maintain ground contact throughout
- Rover does not tip or lose traction
- No operator intervention required (passive suspension handles articulation)

---

## M-03 — Fault Recovery

**Scenario:** A motor stall or low-battery condition triggers the system safe stop.

**Scenario Flow:**
1. Rover is executing M-01 traverse
2. A wheel jams on an obstacle causing motor overcurrent
3. SF-06 Fault Detection triggers safe stop (all motors to zero)
4. Telemetry displays fault flag to operator
5. Operator acknowledges fault via ground station
6. Operator reverses rover slowly to free jammed wheel
7. Operator clears fault flag; rover returns to STANDBY state

**Success Criteria:**
- Safe stop occurs within 200 ms of fault detection
- Fault flag is visible on ground station within one telemetry cycle
- System recovers to STANDBY after operator acknowledgment

---

## M-04 — Software Development and Test

**Scenario:** Developer connects to rover over SSH and deploys new ROS node.

**Preconditions:**
- Rover on same Wi-Fi network as development laptop
- Rover is in STANDBY state

**Scenario Flow:**
1. Developer SSHs into Raspberry Pi (`ssh pi@rover.local`)
2. Developer pulls updated code from git repository
3. Developer builds and installs new ROS package (`catkin_make install`)
4. Developer launches new node and observes ROS topic output
5. Developer commands test motion and verifies new behavior
6. Developer commits and pushes changes

**Success Criteria:**
- SSH accessible without physical connection
- ROS build completes without errors
- New node subscribes/publishes on expected topics

---

## M-05 — Classroom Demonstration

**Scenario:** Educator demonstrates rover to students; students take turns operating.

**Preconditions:**
- Rover pre-configured and tested
- Clear area ≥ 4m × 4m available
- Ground station laptop set up and connected

**Scenario Flow:**
1. Educator powers on rover and confirms operation
2. Student 1 takes gamepad and drives rover forward/backward
3. Student 2 drives rover in a square path
4. Educator shows telemetry display explaining battery, motors, and IMU
5. Educator powers off rover

**Success Criteria:**
- No hardware damage during student operation
- All students successfully control rover within 2 minutes of instructions
- Telemetry display accessible to whole class

---

## M-06 — Payload Operation

**Scenario:** Developer installs a custom sensor (e.g., LIDAR, moisture sensor) and collects data during traverse.

**Scenario Flow:**
1. Builder mounts sensor to body plate using M3 bolt pattern
2. Developer connects sensor to USB or I²C interface
3. Developer installs ROS driver node for sensor
4. Operator drives rover while developer monitors sensor topic
5. Data is logged to disk for analysis

**Success Criteria:**
- Payload power supplied without voltage drop affecting drive motors
- Sensor data available on ROS topic at specified rate
- No interference between payload data and drive control

---

## M-07 — Build and Bring-Up

**Scenario:** Builder assembles rover from parts following documentation.

**Key Milestones:**

| Milestone | Description |
|---|---|
| M-07.1 | Mechanical assembly complete — chassis, rocker-bogie, wheels |
| M-07.2 | Electrical installation complete — PCB, motors, wiring |
| M-07.3 | Software installed — OS flashed, ROS configured |
| M-07.4 | First motion test — all 6 wheels drive on command |
| M-07.5 | Full integration test — telemetry, video, fault detection verified |

**Success Criteria:**
- Build completable by one person in ≤ 40 hours
- All M-07 milestones achievable without specialized equipment
- Rover passes M-01 scenario after M-07.5
