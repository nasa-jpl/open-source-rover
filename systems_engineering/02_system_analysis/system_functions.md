# System Functions

**SA Layer — System Function Register**

System Functions (SFs) define **what the OSR system does** at its boundary. Each SF receives inputs from outside and produces outputs that go outside the system, or internally transforms state to enable other functions. Functions are decomposed hierarchically from a root.

## Function Hierarchy

```
Root System Function (SF-00)
├── SF-01  Receive and Decode Command
├── SF-02  Execute Mobility
│   ├── SF-02.1  Compute Drive Commands
│   ├── SF-02.2  Drive Wheels
│   └── SF-02.3  Steer Corner Wheels
├── SF-03  Manage Power
│   ├── SF-03.1  Distribute Electrical Power
│   ├── SF-03.2  Monitor Battery State
│   └── SF-03.3  Protect Against Overcurrent/Short
├── SF-04  Process and Publish Telemetry
│   ├── SF-04.1  Sample Sensors
│   ├── SF-04.2  Estimate Rover State
│   └── SF-04.3  Transmit Telemetry
├── SF-05  Capture and Stream Video
├── SF-06  Detect and Handle Faults
│   ├── SF-06.1  Monitor Motor Currents
│   ├── SF-06.2  Monitor Battery Voltage
│   ├── SF-06.3  Detect Tip Risk (IMU)
│   └── SF-06.4  Execute Safe Stop
└── SF-07  Support Payload Interface
    ├── SF-07.1  Provide Power to Payload
    └── SF-07.2  Route Payload Data
```

## Function Descriptions

### SF-01 — Receive and Decode Command

| Attribute | Value |
|---|---|
| **Inputs** | Encoded command packet (Wi-Fi / serial) |
| **Outputs** | Decoded motion intent (linear velocity, angular velocity) |
| **Realizes** | OAct-01.2 Command Rover Motion |
| **Notes** | Handles ROS topic subscription; validates packet integrity; applies watchdog timeout (stop if no command received within 1 s) |

---

### SF-02 — Execute Mobility

| Attribute | Value |
|---|---|
| **Inputs** | Decoded motion intent |
| **Outputs** | Motor PWM signals, wheel rotation |
| **Realizes** | OAct-01.2 Command Rover Motion |

#### SF-02.1 — Compute Drive Commands
- Converts linear + angular velocity into per-wheel speed setpoints
- Applies rocker-bogie kinematics model for differential drive

#### SF-02.2 — Drive Wheels
- Sends PWM signals to motor controllers for all six drive wheels
- Enforces maximum speed limits

#### SF-02.3 — Steer Corner Wheels
- Positions four corner wheel servo motors to achieve commanded heading
- Computes Ackermann steering angles from rover geometry

---

### SF-03 — Manage Power

| Attribute | Value |
|---|---|
| **Inputs** | Raw DC from battery, load current demands |
| **Outputs** | Regulated voltages to all subsystems, battery state data |
| **Realizes** | OAct-02.1 Charge Battery (monitoring); OAct-01.3 Monitor Rover State |

#### SF-03.1 — Distribute Electrical Power
- Steps down battery voltage to regulated rails (5V logic, 12V motor supply)
- Provides switched outputs to motors and compute

#### SF-03.2 — Monitor Battery State
- Reads battery voltage and current via ADC / INA sensor
- Computes state-of-charge estimate
- Publishes battery percentage to telemetry stream

#### SF-03.3 — Protect Against Overcurrent/Short
- Implements fuse and/or software overcurrent cutoff
- Triggers SF-06.4 Safe Stop on detected fault

---

### SF-04 — Process and Publish Telemetry

| Attribute | Value |
|---|---|
| **Inputs** | Sensor samples (IMU, encoders, current monitors) |
| **Outputs** | Telemetry packet (orientation, wheel speeds, battery, faults) |
| **Realizes** | OAct-01.3 Monitor Rover State |

#### SF-04.1 — Sample Sensors
- Reads IMU (accelerometer + gyroscope) at ≥ 10 Hz
- Reads wheel encoder ticks at ≥ 20 Hz
- Reads motor current at ≥ 10 Hz

#### SF-04.2 — Estimate Rover State
- Integrates encoder data for odometry (dead-reckoning position estimate)
- Applies complementary filter or Madgwick filter for attitude estimate

#### SF-04.3 — Transmit Telemetry
- Serializes state estimate and sensor data as ROS messages
- Publishes over Wi-Fi to ground station subscriber

---

### SF-05 — Capture and Stream Video

| Attribute | Value |
|---|---|
| **Inputs** | Camera sensor data |
| **Outputs** | Compressed video stream (MJPEG or H.264) |
| **Realizes** | OAct-01.5 Collect Sensor Data |
| **Notes** | Optional function; enabled when camera is installed |

---

### SF-06 — Detect and Handle Faults

| Attribute | Value |
|---|---|
| **Inputs** | Motor current readings, battery voltage, IMU roll/pitch |
| **Outputs** | Fault flags, safe-stop command |
| **Realizes** | OAct-01.4 Respond to Hazard |

#### SF-06.4 — Execute Safe Stop
- Immediately sets all drive motor setpoints to zero
- Publishes fault event to telemetry
- Holds SAFE STOP state until operator acknowledges

---

### SF-07 — Support Payload Interface

| Attribute | Value |
|---|---|
| **Inputs** | Payload power request, payload data output |
| **Outputs** | Switched 5V/12V power, routed data bus (USB / serial / I²C) |
| **Realizes** | OAct-04.2 Integrate Payload |

## Function-to-Operational-Activity Traceability

| System Function | Realized Operational Activity |
|---|---|
| SF-01 | OAct-01.2 Command Rover Motion |
| SF-02 | OAct-01.2 Command Rover Motion |
| SF-03 | OAct-02.1 Charge Battery, OAct-01.3 Monitor Rover State |
| SF-04 | OAct-01.3 Monitor Rover State |
| SF-05 | OAct-01.5 Collect Sensor Data |
| SF-06 | OAct-01.4 Respond to Hazard |
| SF-07 | OAct-04.2 Integrate Payload |
