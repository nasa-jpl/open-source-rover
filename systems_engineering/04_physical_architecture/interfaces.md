# Physical Interfaces

**PA Layer — Physical Interface Register**

Physical Interfaces specify the actual connectors, wires, buses, and protocols that connect Physical Components. Each physical interface realizes one or more logical interfaces.

## Interface Register

| ID | Interface | Source PC | Target PC | Physical Medium | Protocol | Realizes LIF |
|---|---|---|---|---|---|---|
| PIF-01 | Wi-Fi Command | Ground Station | PC-COMP-01 | 802.11ac 2.4/5 GHz | UDP/TCP ROS | LIF-01 |
| PIF-02 | Wi-Fi Telemetry | PC-COMP-01 | Ground Station | 802.11ac | TCP ROS | LIF-15 |
| PIF-03 | Wi-Fi Video | PC-COMP-01 | Ground Station | 802.11ac | HTTP MJPEG | LIF-16 |
| PIF-04 | USB Serial (RoboClaw 1) | PC-COMP-01 | PC-MCTL-01a | USB-B cable | Basicmicro serial API | LIF-04, LIF-06 |
| PIF-05 | USB Serial (RoboClaw 2) | PC-COMP-01 | PC-MCTL-01b | USB-B cable | Basicmicro serial API | LIF-04, LIF-06 |
| PIF-06 | USB Serial (RoboClaw 3) | PC-COMP-01 | PC-MCTL-01c | USB-B cable | Basicmicro serial API | LIF-04, LIF-06 |
| PIF-07 | I²C Bus (IMU) | PC-COMP-01 | PC-SENS-01 | Twisted pair, 3.3V | I²C 400 kHz | LIF-07 |
| PIF-08 | I²C Bus (Power Monitor) | PC-COMP-01 | PC-SENS-03 | PCB trace | I²C 100 kHz | LIF-13, LIF-14 |
| PIF-09 | I²C Bus (Servo Driver) | PC-COMP-01 | PCA9685 | Twisted pair, 3.3V | I²C 400 kHz | LIF-05 |
| PIF-10 | PWM (Corner Servos) | PCA9685 | PC-MCTL-02 (×4) | 3-wire servo cable | 50 Hz PWM | LIF-05 |
| PIF-11 | Motor Power (Front L/R) | PC-PCB-01 | PC-MCTL-01a | 14 AWG wire, XT30 | 12V DC | — |
| PIF-12 | Motor Power (Mid L/R) | PC-PCB-01 | PC-MCTL-01b | 14 AWG wire, XT30 | 12V DC | — |
| PIF-13 | Motor Power (Rear L/R) | PC-PCB-01 | PC-MCTL-01c | 14 AWG wire, XT30 | 12V DC | — |
| PIF-14 | Drive Motor Wires (×6) | PC-MCTL-01(×3) | PC-MECH-03 motors | 18 AWG wire | Brushed DC | LIF-04 |
| PIF-15 | Battery Input | PC-PWR-01 | PC-PCB-01 | 12 AWG wire, XT60 | 11.1V LiPo | IF-04 |
| PIF-16 | 5V RPi Power | PC-PCB-01 | PC-COMP-01 | USB-C cable | 5V / 3A USB-C | IF-04 |
| PIF-17 | Camera Interface | PC-CAM-01 | PC-COMP-01 | CSI ribbon (or USB) | MIPI CSI-2 / USB | LIF-16 |
| PIF-18 | GPIO (RPi → PCB) | PC-COMP-01 | PC-PCB-01 | 40-pin GPIO header | 3.3V GPIO | LIF-17 |

## Detailed Interface Specifications

### PIF-04/05/06 — RoboClaw USB Serial

| Attribute | Value |
|---|---|
| Connector | USB Type-B (device side) |
| Cable length | ≤ 0.5 m (within body enclosure) |
| Baud rate | 115200 bps |
| Protocol | Basicmicro packet serial protocol |
| Commands used | `M1M2(speed)`, `ReadEncoders()`, `ReadCurrents()`, `SetEncM1(0)` |
| I²C address | N/A (USB only) |

**Critical:** Each RoboClaw must be assigned a unique address (0x80, 0x81, 0x82) via the Basicmicro Motion Studio configuration tool before first use.

---

### PIF-07 — I²C Bus (IMU — BNO055)

| Attribute | Value |
|---|---|
| Signal lines | SDA, SCL, GND, 3.3V |
| Connector | 4-pin JST-PH or Qwiic |
| Pull-up resistors | 4.7 kΩ (on PCB) |
| I²C address | 0x28 (default) or 0x29 (alt) |
| Max cable length | 0.3 m (with 4.7k pull-ups at 400 kHz) |

---

### PIF-10 — Servo PWM (PCA9685 → Servos)

| Attribute | Value |
|---|---|
| Connector | JR/Futaba 3-pin servo connector |
| Signal voltage | 3.3V (compatible with 5V servos) |
| Frequency | 50 Hz (20 ms period) |
| Pulse width | 1.0 ms (full left) to 2.0 ms (full right), 1.5 ms center |
| Channels used | 0 (FL), 1 (FR), 2 (RL), 3 (RR) |

---

### PIF-15 — Battery to PCB (XT60)

| Attribute | Value |
|---|---|
| Connector | XT60 (male on battery, female on PCB) |
| Wire gauge | 12 AWG silicone |
| Fuse | 30A blade fuse in-line |
| Polarity protection | Reverse-polarity diode or keyed connector |

---

## Wiring Harness Summary

| Harness | From | To | Wires | Notes |
|---|---|---|---|---|
| Battery harness | Battery XT60 | PCB XT60 | 2× 12 AWG | Include in-line 30A fuse |
| 5V power | PCB USB-C out | RPi USB-C | USB-C to USB-C | Use quality cable; 3A rated |
| Motor power (×3) | PCB XT30 out | RoboClaw Vbat | 2× 14 AWG | One harness per RoboClaw |
| Motor wires (×6) | RoboClaw M1/M2 | Wheel motor | 2× 18 AWG | ~300–500 mm each |
| USB serial (×3) | RPi USB-A | RoboClaw USB-B | USB-A to USB-B | ≤ 500 mm |
| I²C IMU | RPi GPIO header | IMU board | 4-wire | 100–300 mm |
| I²C servo | RPi GPIO header | PCA9685 | 4-wire | 100–200 mm |
| Servo wires (×4) | PCA9685 header | Servo (×4) | 3-wire | 200–500 mm each |

## I²C Address Map

| Device | Address | Bus |
|---|---|---|
| BNO055 IMU | 0x28 | RPi GPIO I²C-1 |
| INA219 Battery Monitor | 0x40 | RPi GPIO I²C-1 |
| PCA9685 Servo Driver | 0x60 | RPi GPIO I²C-1 |

**Note:** Ensure no address conflicts; all three can share the same I²C bus at their default addresses.
