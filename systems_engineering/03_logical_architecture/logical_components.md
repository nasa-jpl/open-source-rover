# Logical Components

**LA Layer — Logical Component Register**

Logical Components (LCs) are the **functional subsystems** of the OSR. They are defined by what they do, not by what physical hardware or software implements them. Each LC has a defined set of responsibilities, inputs, outputs, and interfaces.

## LC-01 — Communication Manager

**Responsibility:** All wireless data exchange between the rover and the ground station. Acts as the system's network gateway.

| Attribute | Detail |
|---|---|
| **Inputs** | Network packets from ground station (commands, developer SSH) |
| **Outputs** | Decoded command data to LC-02; outbound telemetry from LC-07; video from LC-07 |
| **Realizes** | SF-01 (reception), SF-04.3 (transmission), SF-05 (video stream) |
| **Watchdog role** | Times out command stream; notifies LC-02 if no packet in > 1 s |

**Sub-functions:**
- `receive_command_packet()` — listens on command socket/ROS topic
- `transmit_telemetry_packet()` — forwards serialized telemetry to ground
- `relay_video_stream()` — proxies camera data over network

---

## LC-02 — Command Processor

**Responsibility:** Validates incoming commands, enforces safety limits, and dispatches motion intents to the Mobility Controller.

| Attribute | Detail |
|---|---|
| **Inputs** | Raw command packets from LC-01 |
| **Outputs** | Validated motion intent (linear velocity, angular velocity) to LC-03; halt signal to LC-03 on timeout |
| **Realizes** | SF-01 |

**Sub-functions:**
- `decode_command()` — parses twist message into (v_linear, v_angular)
- `apply_velocity_limits()` — clamps to max speed/turn rate
- `handle_watchdog_timeout()` — outputs zero-motion intent if no command received
- `relay_acknowledgment()` — confirms command receipt to LC-01

---

## LC-03 — Mobility Controller

**Responsibility:** Converts commanded robot velocities into per-wheel drive and steering commands. Implements the kinematic model of the rocker-bogie platform.

| Attribute | Detail |
|---|---|
| **Inputs** | Motion intent (v_linear, v_angular) from LC-02 |
| **Outputs** | Six drive wheel speed setpoints; four steering angle setpoints |
| **Realizes** | SF-02.1, SF-02.2, SF-02.3 |

**Sub-functions:**
- `compute_wheel_speeds(v, ω)` — applies differential drive / Ackermann kinematics
- `compute_steering_angles(ω)` — derives per-corner servo positions
- `output_drive_commands()` — writes speed setpoints to motor control interface
- `output_steering_commands()` — writes angle setpoints to servo interface

**Kinematics notes:**
- The rocker-bogie geometry requires that each wheel pair (front, middle, rear) be driven at different speeds during a turn
- Corner wheels (front and rear) steer; middle wheels are fixed-heading
- Kinematic model accounts for rover wheelbase (L) and track width (W)

---

## LC-04 — State Estimator

**Responsibility:** Collects raw sensor data and produces a fused estimate of rover state (position, orientation, velocity). Feeds both telemetry and fault monitoring.

| Attribute | Detail |
|---|---|
| **Inputs** | Wheel encoder ticks (×6), IMU acceleration and gyroscope, motor current readings |
| **Outputs** | Odometry estimate (pose, velocity), attitude estimate (roll, pitch, yaw), per-wheel current |
| **Realizes** | SF-04.1, SF-04.2 |

**Sub-functions:**
- `sample_encoders()` — reads encoder counters at ≥ 20 Hz
- `sample_imu()` — reads accelerometer and gyroscope at ≥ 50 Hz
- `integrate_odometry()` — dead-reckoning from wheel encoder deltas
- `estimate_attitude()` — complementary filter (accelerometer + gyroscope)
- `publish_state()` — packages and sends state to LC-07 and LC-05

---

## LC-05 — Fault Monitor

**Responsibility:** Continuously watches system health indicators and triggers safe stop actions when thresholds are exceeded.

| Attribute | Detail |
|---|---|
| **Inputs** | Motor currents from LC-04, battery voltage from LC-06, attitude estimate from LC-04 |
| **Outputs** | Fault flags; halt command to LC-02; fault event to LC-07 |
| **Realizes** | SF-06 |

**Monitored conditions:**

| Condition | Threshold | Action |
|---|---|---|
| Motor overcurrent | Any motor > 10 A | Immediate safe stop + fault flag |
| Low battery (warning) | Voltage < 11.0 V | Warning flag published to telemetry |
| Low battery (critical) | Voltage < 10.5 V | Safe stop + fault flag |
| Excessive tilt | Roll or pitch > 35° | Safe stop + fault flag |
| Command watchdog | No command in > 1.0 s | Safe stop (no fault, standby) |

**Recovery:** Operator sends explicit clear command; LC-05 verifies condition resolved before clearing halt.

---

## LC-06 — Power Manager

**Responsibility:** Monitors battery and power rails; manages power distribution and protection.

| Attribute | Detail |
|---|---|
| **Inputs** | Battery terminal voltage (ADC), rail current sensors |
| **Outputs** | Battery state (voltage, current, SoC%) to LC-05 and LC-07; switched power enables to motor controllers and payload |
| **Realizes** | SF-03 |

**Sub-functions:**
- `read_battery_voltage()` — reads ADC at 1 Hz
- `estimate_state_of_charge()` — voltage-curve lookup for LiPo
- `monitor_rail_current()` — reads current sensor for total draw
- `control_power_switches()` — enables/disables load switches on fault

---

## LC-07 — Telemetry Publisher

**Responsibility:** Aggregates state estimates, fault flags, and sensor data; formats and forwards to LC-01 for transmission.

| Attribute | Detail |
|---|---|
| **Inputs** | State from LC-04, power data from LC-06, fault flags from LC-05 |
| **Outputs** | Serialized telemetry packets to LC-01 |
| **Realizes** | SF-04.3 |
| **Rate** | ≥ 5 Hz publish cycle |

**Published content:**
- Odometry (pose + velocity)
- IMU attitude
- Battery voltage, current, SoC%
- Per-wheel speeds
- Per-motor current
- Active fault flags
- Camera frame (if SF-05 enabled)

---

## LC-08 — Payload Manager

**Responsibility:** Controls power delivery to optional payload devices and routes payload data to the compute stack.

| Attribute | Detail |
|---|---|
| **Inputs** | Payload power enable request, payload data |
| **Outputs** | Switched 5V/12V power, routed data (USB/I²C) to onboard compute |
| **Realizes** | SF-07 |

**Sub-functions:**
- `enable_payload_power(rail, enable)` — controls load switch for payload power rails
- `monitor_payload_current()` — ensures payload draw does not exceed allocation
- `route_payload_data()` — logical pass-through of USB/I²C to compute

## Component Dependencies

```
LC-01 (Comms)
  └── LC-02 (Command Processor) ── LC-03 (Mobility Controller)
                                         │
                                  Motor/Servo outputs

LC-04 (State Estimator) ──► LC-05 (Fault Monitor)
        │                           │
        └──────► LC-07 (Telemetry) ◄┘
                        │
                   LC-01 (Comms) ──► Ground Station

LC-06 (Power Manager) ──► LC-05 (Fault Monitor)
                     └──► LC-07 (Telemetry)
                     └──► LC-08 (Payload Manager)
```
