# System Interfaces

**SA Layer — System Interface Register**

System Interfaces define all connections between the OSR system and external entities at the system boundary. Each interface has a defined protocol, media, and data/power content.

## Interface Register

| ID | Interface | Direction | Connected Entity | Medium | Protocol/Standard |
|---|---|---|---|---|---|
| IF-01 | Command Input | IN | Ground Station | Wi-Fi 802.11 | ROS (UDP/TCP) |
| IF-02 | Telemetry Output | OUT | Ground Station | Wi-Fi 802.11 | ROS (UDP/TCP) |
| IF-03 | Video Output | OUT | Ground Station | Wi-Fi 802.11 | MJPEG / H.264 |
| IF-04 | Battery Power Input | IN | Battery Pack | DC wire | 11.1V 3S LiPo |
| IF-05 | Payload Power Output | OUT | Payload | DC wire | 5V / 12V regulated |
| IF-06 | Payload Data | BIDIR | Payload | USB / I²C / UART | Device-specific |
| IF-07 | Developer Access | BIDIR | Developer Laptop | Wi-Fi 802.11 | SSH / SCP |
| IF-08 | Physical Terrain | BIDIR | Terrain | Mechanical (wheel contact) | Force/reaction |

---

## Interface Specifications

### IF-01 — Command Input

| Attribute | Value |
|---|---|
| Physical medium | Wi-Fi 802.11 b/g/n (2.4 GHz) |
| Protocol | ROS `geometry_msgs/Twist` topic |
| Topic name | `/cmd_vel` |
| Data rate | ≥ 10 Hz command updates |
| Latency budget | ≤ 100 ms network latency |
| Encoding | ROS serialization (binary) |
| Watchdog | Motor stop if no message in 1.0 s |

**Message format (`geometry_msgs/Twist`):**
```
linear:
  x: [m/s]   # forward/backward velocity
  y: 0.0     # unused
  z: 0.0     # unused
angular:
  x: 0.0     # unused
  y: 0.0     # unused
  z: [rad/s] # turning rate
```

---

### IF-02 — Telemetry Output

| Attribute | Value |
|---|---|
| Physical medium | Wi-Fi 802.11 b/g/n |
| Protocol | ROS topics |
| Update rate | ≥ 5 Hz |
| Topics published | See below |

**Published topics:**

| Topic | Message Type | Content |
|---|---|---|
| `/battery_state` | `sensor_msgs/BatteryState` | Voltage, current, percentage |
| `/imu` | `sensor_msgs/Imu` | Orientation, angular velocity, linear accel |
| `/odom` | `nav_msgs/Odometry` | Estimated position and velocity |
| `/wheel_speeds` | `std_msgs/Float32MultiArray` | Per-wheel RPM (6 values) |
| `/motor_currents` | `std_msgs/Float32MultiArray` | Per-motor current draw (A) |
| `/diagnostics` | `diagnostic_msgs/DiagnosticArray` | Fault flags and system health |

---

### IF-03 — Video Output

| Attribute | Value |
|---|---|
| Physical medium | Wi-Fi 802.11 b/g/n |
| Protocol | HTTP MJPEG stream or ROS `sensor_msgs/Image` |
| Resolution | 640×480 minimum; 1280×720 preferred |
| Frame rate | ≥ 10 fps |
| Camera | Raspberry Pi Camera Module (or USB camera) |

---

### IF-04 — Battery Power Input

| Attribute | Value |
|---|---|
| Physical connector | XT60 or Dean's T-plug |
| Nominal voltage | 11.1 V (3S LiPo) |
| Maximum discharge rate | ≥ 20C (continuous) |
| Capacity | ≥ 5000 mAh |
| Cutoff voltage | 9.0 V (hardware) / 10.5 V (software warning) |
| Maximum current draw | ≤ 20 A (all motors stalled simultaneously) |

---

### IF-05 — Payload Power Output

| Attribute | Value |
|---|---|
| 5V rail | ≤ 2 A continuous |
| 12V rail | ≤ 3 A continuous (unswitched from battery via regulator) |
| Connector type | JST-PH 2-pin or screw terminal |
| Protection | Polyfuse or resettable fuse |

---

### IF-06 — Payload Data

| Attribute | Value |
|---|---|
| USB | USB 2.0 Type-A ×2 (from Raspberry Pi) |
| I²C | 3.3V logic, 400 kHz fast mode |
| UART | 3.3V logic, up to 115200 baud |
| SPI | Optional; routed to GPIO header |

---

### IF-07 — Developer Access

| Attribute | Value |
|---|---|
| Protocol | SSH (port 22), SCP |
| Authentication | SSH key or password |
| Network | Same Wi-Fi subnet as rover |
| Hostname | `rover.local` (mDNS) or static IP |

---

### IF-08 — Physical Terrain Interface

| Attribute | Value |
|---|---|
| Interface type | Mechanical — wheel-ground contact |
| Wheel material | Rubber or printed TPU tire |
| Contact area per wheel | Approximately 30 mm × 20 mm |
| Maximum normal force per wheel | ~2.5 kg (total rover mass ~7 kg, ~1.2 kg/wheel average) |
| Terrain traction requirement | μ ≥ 0.4 (minimum friction coefficient for commanded motion) |
