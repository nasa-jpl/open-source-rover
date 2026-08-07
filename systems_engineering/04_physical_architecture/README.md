# Physical Architecture (PA)

**Arcadia Layer 4 of 5**

The Physical Architecture answers the question: **HOW (concretely) is the system built?** It maps each Logical Component to specific physical hardware or software, specifies technologies, and defines the physical deployment of functions onto components.

## Purpose

The PA binds the abstract solution from the LA to specific, procurable or manufacturable items. It identifies every physical node, the software that runs on each, and how they are electrically, mechanically, and logically connected.

## Documents

| Document | Contents |
|---|---|
| [Physical Components](physical_components.md) | Hardware and software components |
| [Physical Functions](physical_functions.md) | Function deployment to physical nodes |
| [Interfaces](interfaces.md) | Physical wiring, connectors, and protocols |

## Physical Architecture Block (PAB)

```
┌──────────────────────────── OSR Physical System ─────────────────────────────┐
│                                                                               │
│  ┌────────────────────────────────────────────────────────────────────────┐  │
│  │                     BODY ELECTRONICS ENCLOSURE                         │  │
│  │                                                                         │  │
│  │  ┌─────────────┐   ┌──────────────────────────────────────────────┐   │  │
│  │  │ Raspberry   │   │         Custom OSR PCB                       │   │  │
│  │  │   Pi 4B     │◄──┤  ┌────────┐  ┌──────────┐  ┌─────────────┐  │   │  │
│  │  │  (Compute)  │   │  │ Logic  │  │  Power   │  │  Expansion  │  │   │  │
│  │  │             │──►│  │ Supply │  │ Reg/Dist │  │   Headers   │  │   │  │
│  │  │  Wi-Fi ◄────┼───┤  │  5V   │  │ 5V / 12V │  │  I2C/UART  │  │   │  │
│  │  │  SSH/ROS    │   │  └────────┘  └──────────┘  └─────────────┘  │   │  │
│  │  └─────────────┘   │                                               │   │  │
│  │         │          └──────────────────────────────────────────────┘   │  │
│  │         │ USB × 6                                                       │  │
│  │         ▼                                                               │  │
│  │  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐                 │  │
│  │  │ RoboClaw    │  │  RoboClaw    │  │  RoboClaw    │                 │  │
│  │  │ 2×15A       │  │  2×15A       │  │  2×15A       │                 │  │
│  │  │ (Left Front)│  │ (Left Mid)   │  │ (Left Rear)  │                 │  │
│  │  └──────┬───────┘  └──────┬───────┘  └──────┬───────┘                 │  │
│  └─────────┼─────────────────┼─────────────────┼─────────────────────────┘  │
│            │ Motor power (12V + signal)         │                            │
│   ┌────────▼────┐  ┌─────────▼────┐  ┌─────────▼────┐                      │
│   │ Drive Motor │  │ Drive Motor  │  │ Drive Motor  │    (×6 total)          │
│   │ Left Front  │  │ Left Middle  │  │ Left Rear    │                        │
│   └─────────────┘  └──────────────┘  └──────────────┘                       │
│                                                                               │
│   ┌──────────────────┐                                                        │
│   │  Battery Pack    │ 3S LiPo 11.1V  ──► PCB Power Input                   │
│   └──────────────────┘                                                        │
│                                                                               │
│   ┌──────────────────┐                                                        │
│   │   IMU (BNO055    │ I²C ──► RPi GPIO                                      │
│   │   or MPU-6050)   │                                                        │
│   └──────────────────┘                                                        │
│                                                                               │
│   ┌──────────────────┐                                                        │
│   │  Pi Camera / USB │ CSI / USB ──► RPi                                     │
│   │  Camera          │                                                        │
│   └──────────────────┘                                                        │
│                                                                               │
│   ┌──────────────────────────────────────────────────┐                       │
│   │         CORNER STEERING SERVOS (×4)              │                       │
│   │  Servo (FR) + Servo (FL) + Servo (RR) + Servo(RL)│                      │
│   │  Controlled via PWM from RPi GPIO / PCA9685      │                       │
│   └──────────────────────────────────────────────────┘                       │
│                                                                               │
└───────────────────────────────────────────────────────────────────────────────┘
```

## Logical-to-Physical Mapping

| Logical Component | Physical Component(s) |
|---|---|
| LC-01 Communication Manager | Raspberry Pi 4B (Wi-Fi), ROS network stack |
| LC-02 Command Processor | Raspberry Pi 4B, ROS `osr_control` node |
| LC-03 Mobility Controller | Raspberry Pi 4B, ROS `osr_drive` node, RoboClaw controllers (×3), servo driver |
| LC-04 State Estimator | Raspberry Pi 4B, ROS `osr_state` node, IMU, wheel encoders |
| LC-05 Fault Monitor | Raspberry Pi 4B, ROS `osr_safety` node |
| LC-06 Power Manager | Custom OSR PCB (voltage regulators, current monitor INA219) |
| LC-07 Telemetry Publisher | Raspberry Pi 4B, ROS publishers |
| LC-08 Payload Manager | Custom OSR PCB (load switches), RPi USB/I²C |

## Traceability

- Physical Components realize **Logical Components** from [LA layer](../03_logical_architecture/logical_components.md)
- Physical Components are broken down into **Configuration Items** in [EPBS layer](../05_epbs/README.md)
