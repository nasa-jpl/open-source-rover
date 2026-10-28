# Physical Functions

**PA Layer — Physical Function Deployment**

Physical Functions (PFs) refine Logical Functions and deploy them onto specific Physical Components. This layer specifies which processor, microcontroller, or hardware circuit executes each function.

## Deployment Map

| PF ID | Physical Function | Parent LF | Deployed on PC | Technology |
|---|---|---|---|---|
| PF-01.1 | Subscribe to `/cmd_vel` ROS topic | LF-01.1 | PC-COMP-01 RPi | ROS Noetic subscriber |
| PF-01.2 | Validate twist message fields | LF-01.2 | PC-COMP-01 RPi | Python / C++ ROS node |
| PF-01.3 | Clamp velocity to configured limits | LF-01.3 | PC-COMP-01 RPi | Python `numpy.clip` |
| PF-01.4 | Watchdog timer on `/cmd_vel` | LF-01.4 | PC-COMP-01 RPi | ROS timer callback (1 s) |
| PF-02.1 | Rocker-bogie differential drive kinematics | LF-02.1 | PC-COMP-01 RPi | Python matrix solve |
| PF-02.2 | Ackermann corner angle computation | LF-02.2 | PC-COMP-01 RPi | Python trig |
| PF-02.3 | Write motor setpoint to RoboClaw via USB serial | LF-02.3 | PC-COMP-01 RPi → PC-MCTL-01 | `roboclaw` Python library |
| PF-02.4 | Write angle setpoint to PCA9685 via I²C | LF-02.4 | PC-COMP-01 RPi → PC-MCTL-02 | `adafruit_servokit` |
| PF-03.1 | Read INA219 battery voltage over I²C | LF-03.1 | PC-PCB-01 + PC-COMP-01 | INA219 driver |
| PF-03.2 | Compute LiPo state-of-charge from voltage curve | LF-03.2 | PC-COMP-01 RPi | Python lookup table |
| PF-03.3 | PCB DC-DC converter regulation | LF-03.3 | PC-PCB-01 | Hardware (buck converter) |
| PF-03.4 | Software overcurrent cutoff via motor disable | LF-03.4 | PC-COMP-01 RPi | ROS fault node |
| PF-04.1 | Read RoboClaw encoder counts via USB serial | LF-04.1 | PC-COMP-01 RPi ← PC-MCTL-01 | `roboclaw` library |
| PF-04.2 | Read BNO055/MPU-6050 via I²C | LF-04.2 | PC-COMP-01 RPi ← PC-SENS-01 | IMU Python driver |
| PF-04.3 | Read motor currents from RoboClaw via serial | LF-04.3 | PC-COMP-01 RPi ← PC-MCTL-01 | `roboclaw` library |
| PF-04.4 | Integrate wheel ticks to odometry | LF-04.4 | PC-COMP-01 RPi | Python dead-reckoning |
| PF-04.5 | Complementary filter for attitude | LF-04.5 | PC-COMP-01 RPi | Python filter |
| PF-04.6 | Publish ROS telemetry topics at 5 Hz | LF-04.6 | PC-COMP-01 RPi | ROS publishers |
| PF-05.1 | Monitor current thresholds per channel | LF-05.1 | PC-COMP-01 RPi | ROS subscriber |
| PF-05.2 | Monitor battery voltage threshold | LF-05.2 | PC-COMP-01 RPi | ROS subscriber |
| PF-05.3 | Monitor IMU roll/pitch threshold | LF-05.3 | PC-COMP-01 RPi | ROS subscriber |
| PF-05.4 | Set all motor setpoints to zero | LF-05.4 | PC-COMP-01 RPi → PC-MCTL-01 | RoboClaw stop command |
| PF-05.5 | Publish `/diagnostics` fault message | LF-05.5 | PC-COMP-01 RPi | ROS diagnostics |
| PF-06.1 | Capture frames from camera module | LF-06.1 | PC-COMP-01 RPi ← PC-CAM-01 | `cv2` / `raspicam` |
| PF-06.2 | Compress and stream video over Wi-Fi | LF-06.1 | PC-COMP-01 RPi | MJPEG / `cv_bridge` |
| PF-07.1 | Toggle PCB load switch for payload power | LF-07.1 | PC-PCB-01 + RPi GPIO | GPIO digital output |
| PF-07.2 | Read payload rail current via INA219 | LF-07.2 | PC-PCB-01 + PC-COMP-01 | INA219 driver |
| PF-07.3 | Pass-through USB/I²C to RPi bus | LF-07.3 | PC-PCB-01 | Hardware traces |

## Software Execution Environment

All software PFs run on the Raspberry Pi 4B under:

```
OS:       Raspberry Pi OS (Debian Bullseye)
Kernel:   Linux 5.15 (ARM64)
Runtime:  Python 3.9 + ROS Noetic
ROS WS:   ~/osr_ws/
Launch:   roslaunch osr_bringup osr.launch
```

**Process architecture:**

```
rosmaster (ROS core)
  ├── command_node     (10 Hz)   ← /cmd_vel
  ├── drive_node       (20 Hz)   ← /commanded_vel → RoboClaw serial
  ├── encoder_node     (20 Hz)   ← RoboClaw serial → /odom
  ├── imu_node         (50 Hz)   ← I²C BNO055 → /imu
  ├── fault_node       (10 Hz)   ← /motor_currents, /battery_state, /imu
  ├── telemetry_node   (5 Hz)    → /diagnostics, /battery_state
  ├── camera_node      (30 Hz)   ← CSI/USB → /camera/image_raw
  └── power_node       (1 Hz)    ← I²C INA219 → /battery_state
```

## Hardware Timing Constraints

| Function | Required Rate | Available Margin |
|---|---|---|
| Command reception | ≥ 10 Hz | ~40 Hz possible |
| Drive PWM update | ≥ 20 Hz | RoboClaw supports 64 Hz |
| IMU sampling | ≥ 50 Hz | BNO055 supports 100 Hz |
| Encoder read | ≥ 20 Hz | RoboClaw encoder rate unlimited |
| Fault check | ≥ 10 Hz | Limited by current sensor read rate |
| Telemetry publish | ≥ 5 Hz | Wi-Fi bandwidth >> required |
| Battery monitor | ≥ 1 Hz | Adequate for slow SoC changes |
