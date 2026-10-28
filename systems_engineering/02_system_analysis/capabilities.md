# System Capabilities

**SA Layer — System Capability Register**

System Capabilities (SCs) define the **high-level abilities** the OSR system must possess. They are realized by combinations of System Functions and system components.

## Capability Register

| ID | Capability | Description | Realizes OC |
|---|---|---|---|
| SC-01 | **Six-Wheel Drive Mobility** | The system shall drive all six wheels simultaneously, providing redundant traction on uneven terrain | OC-01 |
| SC-02 | **Rocker-Bogie Passive Suspension** | The system shall maintain continuous ground contact for all six wheels over obstacles up to wheel-diameter height | OC-01, OC-08 |
| SC-03 | **Wireless Command Reception** | The system shall receive motion commands wirelessly from a ground station over Wi-Fi | OC-02 |
| SC-04 | **Motor Control Execution** | The system shall translate received commands into motor PWM signals within 100 ms | OC-02 |
| SC-05 | **Telemetry Reporting** | The system shall transmit rover state (battery, orientation, speeds, faults) to the ground station at ≥ 5 Hz | OC-03 |
| SC-06 | **Fault Detection and Safe Stop** | The system shall detect overcurrent, low battery, and excessive tilt; execute a safe stop autonomously | OC-04 |
| SC-07 | **Modular Assembly Architecture** | The system shall be assembled from bolt-together subassemblies without permanent joining (no welding) | OC-05 |
| SC-08 | **Programmable Onboard Computer** | The system shall host a general-purpose Linux computer accessible via SSH for software deployment | OC-06 |
| SC-09 | **Payload Interface** | The system shall expose switched power (5V, 12V) and a data bus (USB, I²C) for optional payloads | OC-07 |

## Capability Specifications

### SC-01 — Six-Wheel Drive Mobility

| Parameter | Requirement |
|---|---|
| Number of driven wheels | 6 |
| Drive motor type | DC brushed motor with encoder (e.g., Nidec/Hurst) |
| Maximum speed (flat ground) | ≥ 0.3 m/s |
| Minimum speed (controlled) | ≤ 0.05 m/s |
| Ground clearance | ≥ 100 mm |
| Maximum slope traversal | ≥ 20° incline |

### SC-02 — Rocker-Bogie Passive Suspension

| Parameter | Requirement |
|---|---|
| Suspension type | Passive rocker-bogie (no active actuation) |
| Maximum obstacle height | ≥ wheel radius (approximately 75 mm) |
| Wheel contact maintained | All 6 wheels, on surfaces up to ±30° individual wheel tilt |
| Mechanism fidelity | Mechanically equivalent to JPL Mars rover suspension topology |

### SC-03 — Wireless Command Reception

| Parameter | Requirement |
|---|---|
| Protocol | Wi-Fi 802.11 b/g/n |
| Command latency | ≤ 200 ms round trip (local network) |
| Operating range | ≥ 10 m (line of sight, indoor) |
| Command watchdog | Stop motors if no valid command in > 1.0 s |

### SC-04 — Motor Control Execution

| Parameter | Requirement |
|---|---|
| Command-to-motor latency | ≤ 100 ms |
| Steering corner response | ≤ 500 ms to reach target angle |
| PWM update rate | ≥ 20 Hz |

### SC-05 — Telemetry Reporting

| Parameter | Requirement |
|---|---|
| Telemetry rate | ≥ 5 Hz |
| Fields | Battery voltage %, motor currents, wheel speeds, IMU attitude, fault flags |
| Protocol | ROS topics over Wi-Fi |

### SC-06 — Fault Detection and Safe Stop

| Parameter | Requirement |
|---|---|
| Overcurrent threshold | Motor current > 10 A (per motor) |
| Low battery threshold | Battery voltage < 10.5 V (3S LiPo) |
| Tilt threshold | Roll or pitch > 35° |
| Safe stop response time | ≤ 200 ms after fault detection |

### SC-09 — Payload Interface

| Parameter | Requirement |
|---|---|
| Power outputs | 5V @ 2A (logic/sensor), 12V @ 3A (actuators) |
| Data interfaces | USB 2.0 ×2, I²C ×1, UART ×1 |
| Mechanical mounting | Standard M3 bolt pattern on body plate |
