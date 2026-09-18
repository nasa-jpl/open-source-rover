# Logical Functions

**LA Layer — Logical Function Allocation**

Logical Functions (LFs) refine System Functions from the SA layer into more detailed function descriptions and allocate them to specific Logical Components. Each LF traces to a parent System Function (SF) and is owned by one LC.

## Function-to-Component Allocation Matrix

| LF ID | Logical Function | Parent SF | Allocated to LC | Rate |
|---|---|---|---|---|
| LF-01.1 | Receive ROS command topic | SF-01 | LC-01 | 10 Hz |
| LF-01.2 | Validate command packet integrity | SF-01 | LC-02 | 10 Hz |
| LF-01.3 | Apply velocity limits | SF-01 | LC-02 | 10 Hz |
| LF-01.4 | Detect command watchdog timeout | SF-01 | LC-02 | 1 Hz |
| LF-02.1 | Compute differential drive kinematics | SF-02.1 | LC-03 | 20 Hz |
| LF-02.2 | Compute Ackermann corner angles | SF-02.3 | LC-03 | 20 Hz |
| LF-02.3 | Output drive PWM setpoints | SF-02.2 | LC-03 | 20 Hz |
| LF-02.4 | Output steering angle setpoints | SF-02.3 | LC-03 | 20 Hz |
| LF-03.1 | Read battery voltage (ADC) | SF-03.2 | LC-06 | 1 Hz |
| LF-03.2 | Estimate state-of-charge | SF-03.2 | LC-06 | 1 Hz |
| LF-03.3 | Distribute regulated power rails | SF-03.1 | LC-06 | Continuous |
| LF-03.4 | Engage overcurrent protection | SF-03.3 | LC-06 | Event |
| LF-04.1 | Sample wheel encoders | SF-04.1 | LC-04 | 20 Hz |
| LF-04.2 | Sample IMU | SF-04.1 | LC-04 | 50 Hz |
| LF-04.3 | Sample motor currents | SF-04.1 | LC-04 | 10 Hz |
| LF-04.4 | Integrate odometry from encoders | SF-04.2 | LC-04 | 20 Hz |
| LF-04.5 | Estimate attitude (IMU filter) | SF-04.2 | LC-04 | 50 Hz |
| LF-04.6 | Publish telemetry bundle | SF-04.3 | LC-07 | 5 Hz |
| LF-05.1 | Monitor per-motor current | SF-06.1 | LC-05 | 10 Hz |
| LF-05.2 | Monitor battery voltage | SF-06.2 | LC-05 | 1 Hz |
| LF-05.3 | Monitor IMU tilt | SF-06.3 | LC-05 | 10 Hz |
| LF-05.4 | Execute safe stop | SF-06.4 | LC-05 | Event |
| LF-05.5 | Publish fault events | SF-06.4 | LC-05 | Event |
| LF-06.1 | Stream video frames | SF-05 | LC-01 | 10 Hz |
| LF-07.1 | Enable/disable payload power | SF-07.1 | LC-08 | On command |
| LF-07.2 | Monitor payload current | SF-07.1 | LC-08 | 1 Hz |
| LF-07.3 | Route payload data bus | SF-07.2 | LC-08 | Continuous |

## Function Execution Timeline

The following shows the cyclic execution pattern at steady state:

```
Time →   0ms   20ms   40ms   50ms  100ms  200ms
         │      │      │      │      │      │
LF-02.1  ●──────●──────●──────●──────●──────●   (20 Hz kinematics)
LF-04.1  ●──────●──────●──────●──────●──────●   (20 Hz encoder read)
LF-04.2  ●──●───●──●───●──●───●──●───●──●───●   (50 Hz IMU read)
LF-05.1  ●──────────────────────●──────────────  (10 Hz current monitor)
LF-03.1  ●────────────────────────────────────●  (1 Hz battery read)
LF-04.6  ●───────────────────────────────────●   (5 Hz telemetry publish)
```

## Traceability: LF → SF → OAct

| Logical Function | System Function | Operational Activity |
|---|---|---|
| LF-01.1 to LF-01.4 | SF-01 Receive and Decode Command | OAct-01.2 Command Rover Motion |
| LF-02.1 to LF-02.4 | SF-02 Execute Mobility | OAct-01.2 Command Rover Motion |
| LF-03.1 to LF-03.4 | SF-03 Manage Power | OAct-02.1 Charge Battery |
| LF-04.1 to LF-04.6 | SF-04 Process and Publish Telemetry | OAct-01.3 Monitor Rover State |
| LF-05.1 to LF-05.5 | SF-06 Detect and Handle Faults | OAct-01.4 Respond to Hazard |
| LF-06.1 | SF-05 Capture and Stream Video | OAct-01.5 Collect Sensor Data |
| LF-07.1 to LF-07.3 | SF-07 Support Payload Interface | OAct-04.2 Integrate Payload |
