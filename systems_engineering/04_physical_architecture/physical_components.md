# Physical Components

**PA Layer — Physical Component Register**

Physical Components (PCs) are the actual hardware items and software modules that implement the logical architecture. Each PC traces to one or more Logical Components.

## Compute Subsystem

### PC-COMP-01 — Raspberry Pi 4B (or equivalent SBC)

| Attribute | Value |
|---|---|
| **Type** | Single-board computer |
| **Processor** | Broadcom BCM2711, quad-core ARM Cortex-A72, 1.5 GHz |
| **RAM** | 4 GB LPDDR4 (minimum) |
| **Storage** | 32 GB microSD (minimum) |
| **OS** | Raspberry Pi OS (Bullseye / Bookworm) |
| **Software** | ROS Noetic / ROS 2 Humble |
| **Connectivity** | 802.11ac Wi-Fi, Bluetooth 5.0, USB 3.0 ×2, USB 2.0 ×2, GPIO 40-pin |
| **Power input** | 5V / 3A via USB-C |
| **Realizes** | LC-01, LC-02, LC-03, LC-04, LC-05, LC-07 |

**Deployed ROS Nodes:**

| Node | Logical Function | Description |
|---|---|---|
| `osr_control/command_node` | LC-02 | Receives `/cmd_vel`, applies limits, outputs to drive node |
| `osr_drive/drive_node` | LC-03 | Kinematics computation, publishes to RoboClaw and servo |
| `osr_state/imu_node` | LC-04 | IMU driver and attitude estimation |
| `osr_state/encoder_node` | LC-04 | Encoder reading and odometry integration |
| `osr_safety/fault_node` | LC-05 | Health monitoring and safe-stop logic |
| `osr_comms/telemetry_node` | LC-07 | Aggregates and publishes telemetry |
| `camera_node` | LC-01 | Video capture and streaming |

---

## Motor Control Subsystem

### PC-MCTL-01 — RoboClaw 2×15A Motor Controller

| Attribute | Value |
|---|---|
| **Type** | Dual-channel DC motor controller |
| **Channels per unit** | 2 |
| **Units installed** | 3 (total 6 drive channels) |
| **Max current per channel** | 15 A continuous, 30 A peak |
| **Input voltage** | 6–34 V DC |
| **Control interface** | USB Serial (USB-B to RPi) |
| **Feedback** | Quadrature encoder input (up to 2M pulses/s) |
| **Realizes** | LC-03 (SF-02.2 drive execution) |
| **Supplier** | Basicmicro (formerly Orion Robotics) |

**Channel assignment:**

| RoboClaw Unit | Channel 1 | Channel 2 |
|---|---|---|
| Unit 1 | Front Left Drive | Front Right Drive |
| Unit 2 | Middle Left Drive | Middle Right Drive |
| Unit 3 | Rear Left Drive | Rear Right Drive |

---

### PC-MCTL-02 — Corner Steering Servo

| Attribute | Value |
|---|---|
| **Type** | Digital PWM servo (high-torque) |
| **Quantity** | 4 (front-left, front-right, rear-left, rear-right) |
| **Stall torque** | ≥ 15 kg·cm |
| **Control** | 50 Hz PWM (1–2 ms pulse width) |
| **Interface** | PCA9685 I²C PWM driver → RPi I²C |
| **Realizes** | LC-03 (SF-02.3 steering) |

---

## Electronics / PCB Subsystem

### PC-PCB-01 — Custom OSR Control PCB

| Attribute | Value |
|---|---|
| **Type** | Custom designed PCB |
| **Function** | Power distribution, logic regulation, I/O breakout |
| **Input** | 11.1V 3S LiPo (XT60 connector) |
| **5V regulated output** | For RPi, logic, servos via DC-DC buck converter |
| **12V switched outputs** | For drive motors via RoboClaw units |
| **Current monitoring** | INA219 I²C current/voltage sensor |
| **Emergency stop** | Latching push-button circuit |
| **Connectors** | JST-PH for servos, screw terminals for motors, USB for RoboClaw |
| **Realizes** | LC-06 (SF-03 power management) |

---

## Sensor Subsystem

### PC-SENS-01 — Inertial Measurement Unit (IMU)

| Attribute | Value |
|---|---|
| **Model** | BNO055 (9-DOF, internal fusion) or MPU-6050 |
| **Interface** | I²C (address 0x28 / 0x29) |
| **Output** | Quaternion orientation, linear acceleration, angular velocity |
| **Sample rate** | Up to 100 Hz |
| **Mounting** | Body top plate, orientation-aligned with rover frame |
| **Realizes** | LC-04 (SF-04.1 sensor sampling) |

### PC-SENS-02 — Wheel Encoder (per drive motor)

| Attribute | Value |
|---|---|
| **Type** | Quadrature magnetic encoder |
| **Resolution** | ≥ 64 CPR (counts per revolution) at motor shaft |
| **Interface** | Differential quadrature to RoboClaw encoder input |
| **Quantity** | 6 (one per drive motor) |
| **Realizes** | LC-04 (SF-04.1 sensor sampling) |

### PC-SENS-03 — Battery Current/Voltage Monitor

| Attribute | Value |
|---|---|
| **IC** | INA219 (or INA226) |
| **Interface** | I²C |
| **Measurement** | Bus voltage (0–26V), shunt current via 0.1Ω resistor |
| **Accuracy** | ±1% full-scale |
| **Location** | On custom PCB |
| **Realizes** | LC-06 (SF-03.2 battery monitoring) |

---

## Camera Subsystem

### PC-CAM-01 — Onboard Camera

| Attribute | Value |
|---|---|
| **Options** | Raspberry Pi Camera Module 3 (CSI) or USB webcam |
| **Resolution** | ≥ 1920×1080 |
| **Frame rate** | ≥ 30 fps (video) |
| **Interface** | CSI ribbon or USB 2.0 |
| **Realizes** | LC-01 (SF-05 video streaming) |

---

## Power Subsystem

### PC-PWR-01 — Battery Pack

| Attribute | Value |
|---|---|
| **Chemistry** | Lithium Polymer (LiPo) |
| **Configuration** | 3S (3-cell series) |
| **Nominal voltage** | 11.1 V |
| **Capacity** | 5200 mAh (minimum) |
| **Max discharge** | ≥ 20C |
| **Connector** | XT60 |
| **Runtime (typical)** | ~1–2 hours moderate operation |

### PC-PWR-02 — Battery Charger

| Attribute | Value |
|---|---|
| **Type** | Balance charger (e.g., iCharger, SkyRC) |
| **Compatibility** | 3S LiPo |
| **Charge rate** | ≤ 1C (5.2A for 5200 mAh) |
| **Balance port** | Required (3-cell JST-XH) |

---

## Mechanical Subsystem

### PC-MECH-01 — Chassis / Body Frame

| Attribute | Value |
|---|---|
| **Material** | Aluminum extrusion and plate (6061-T6 or equivalent) |
| **Construction** | Bolt-together; no welding |
| **Dimensions** | Approximately 500 mm × 350 mm × 200 mm (L×W×H body) |
| **Mass** | ~5 kg (bare chassis) |

### PC-MECH-02 — Rocker-Bogie Suspension

| Attribute | Value |
|---|---|
| **Type** | Passive differential rocker-bogie |
| **Material** | Aluminum tube and plate |
| **Pivot joints** | Shoulder screws, flanged bearings |
| **Differential** | Cross-body differential bar (equalizes rocker pitch) |
| **Max obstacle** | ~75 mm (one wheel-radius) |

### PC-MECH-03 — Wheel Assembly (×6)

| Attribute | Value |
|---|---|
| **Wheel diameter** | ~150 mm |
| **Tire** | Rubber or 3D-printed TPU |
| **Hub** | Aluminum hub, keyed to motor shaft |
| **Drive motor mount** | Integrated into wheel bracket |

### PC-MECH-04 — Corner Steering Assembly (×4)

| Attribute | Value |
|---|---|
| **Type** | Servo-actuated pivot |
| **Steering range** | ±30° from center |
| **Construction** | Aluminum bracket, pivot bearing, servo horn |

---

## Physical Component Realization Traceability

| Physical Component | Logical Component Realized |
|---|---|
| PC-COMP-01 Raspberry Pi 4B | LC-01, LC-02, LC-03, LC-04, LC-05, LC-07 |
| PC-MCTL-01 RoboClaw (×3) | LC-03 |
| PC-MCTL-02 Corner Servos (×4) | LC-03 |
| PC-PCB-01 Control PCB | LC-06, LC-08 |
| PC-SENS-01 IMU | LC-04 |
| PC-SENS-02 Encoders (×6) | LC-04 |
| PC-SENS-03 Battery Monitor | LC-06 |
| PC-CAM-01 Camera | LC-01 |
| PC-PWR-01 Battery Pack | LC-06 (external) |
| PC-MECH-01 Chassis | LC-03 (structural host) |
| PC-MECH-02 Rocker-Bogie | LC-03 (passive mobility) |
| PC-MECH-03 Wheel Assembly (×6) | LC-03 |
| PC-MECH-04 Corner Assembly (×4) | LC-03 |
