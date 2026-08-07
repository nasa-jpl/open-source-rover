# Logical Interfaces

**LA Layer — Logical Interface Register**

Logical Interfaces (LIFs) define the data and control flows between Logical Components. They are independent of physical technology — they describe what is exchanged, not how it travels.

## Interface Register

| ID | Interface | Source LC | Target LC | Data Exchanged | Direction |
|---|---|---|---|---|---|
| LIF-01 | Command Flow | LC-01 | LC-02 | Motion command (v, ω) | Unidirectional |
| LIF-02 | Halt Signal | LC-02 | LC-03 | Emergency stop flag | Unidirectional |
| LIF-03 | Motion Intent | LC-02 | LC-03 | (v_linear, v_angular) | Unidirectional |
| LIF-04 | Drive Setpoints | LC-03 | [Motor Interface] | 6× speed setpoint | Unidirectional |
| LIF-05 | Steering Setpoints | LC-03 | [Servo Interface] | 4× angle setpoint | Unidirectional |
| LIF-06 | Encoder Data | [Encoder Interface] | LC-04 | 6× tick count | Unidirectional |
| LIF-07 | IMU Data | [IMU Interface] | LC-04 | Accel (3-axis), Gyro (3-axis) | Unidirectional |
| LIF-08 | Motor Current | [Current Sensor] | LC-04 | 6× motor current (A) | Unidirectional |
| LIF-09 | State Estimate | LC-04 | LC-07 | Odometry, attitude, wheel speeds | Unidirectional |
| LIF-10 | State for Fault | LC-04 | LC-05 | Motor currents, attitude, battery | Unidirectional |
| LIF-11 | Fault Halt | LC-05 | LC-02 | HALT command | Unidirectional |
| LIF-12 | Fault Event | LC-05 | LC-07 | Fault type, timestamp | Unidirectional |
| LIF-13 | Battery State | LC-06 | LC-05 | Voltage, current, SoC% | Unidirectional |
| LIF-14 | Battery Telemetry | LC-06 | LC-07 | Voltage, current, SoC% | Unidirectional |
| LIF-15 | Telemetry Output | LC-07 | LC-01 | Full telemetry bundle | Unidirectional |
| LIF-16 | Video Stream | [Camera] | LC-01 | Compressed frames | Unidirectional |
| LIF-17 | Payload Power Cmd | LC-02 | LC-08 | Power enable request | Unidirectional |
| LIF-18 | Payload Data | LC-08 | LC-07 | Payload sensor output | Unidirectional |

## Interface Data Definitions

### LIF-01 — Command Flow

```
CommandMessage {
  linear_velocity  : Float32   # m/s, range [-0.5, +0.5]
  angular_velocity : Float32   # rad/s, range [-1.0, +1.0]
  timestamp        : Time
  sequence_number  : UInt32
}
```

### LIF-09 — State Estimate

```
RoverState {
  pose {
    x : Float64  # m
    y : Float64  # m
    heading : Float32  # rad
  }
  velocity {
    linear  : Float32  # m/s
    angular : Float32  # rad/s
  }
  attitude {
    roll  : Float32  # rad
    pitch : Float32  # rad
    yaw   : Float32  # rad
  }
  wheel_speeds[6] : Float32[]  # RPM per wheel
  timestamp : Time
}
```

### LIF-10 — State for Fault Monitor

```
FaultMonitorInputs {
  motor_currents[6] : Float32[]  # Amperes
  battery_voltage   : Float32   # Volts
  battery_current   : Float32   # Amperes
  roll              : Float32   # rad
  pitch             : Float32   # rad
  last_command_time : Time
}
```

### LIF-12 — Fault Event

```
FaultEvent {
  fault_type : Enum {
    MOTOR_OVERCURRENT,
    LOW_BATTERY_WARNING,
    LOW_BATTERY_CRITICAL,
    TILT_LIMIT,
    COMMAND_TIMEOUT,
    PAYLOAD_OVERCURRENT
  }
  affected_channel : UInt8   # motor index (0-5), or 0xFF for global
  value_at_fault   : Float32 # measured value that triggered fault
  timestamp        : Time
}
```

## Component Interaction Diagram

```
Ground Station
    │ (IF-01 Wi-Fi)
    ▼
LC-01 Communications Manager
    │ LIF-01 command
    ▼
LC-02 Command Processor ◄── LIF-11 HALT (from LC-05)
    │ LIF-03 motion intent
    ▼
LC-03 Mobility Controller
    │ LIF-04  LIF-05
    ▼         ▼
 [Motors]  [Servos]

LC-04 State Estimator ◄── LIF-06 encoders, LIF-07 IMU, LIF-08 currents
    │ LIF-09          │ LIF-10
    ▼                 ▼
LC-07 Telemetry    LC-05 Fault Monitor
    │ LIF-15           │ LIF-11 (to LC-02)
    ▼                  │ LIF-12 (to LC-07)
LC-01 ──► Ground       │
Station           LC-06 Power Manager
                      │ LIF-13 (to LC-05)
                      └ LIF-14 (to LC-07)
```
