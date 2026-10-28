# Operational Capabilities

**OA Layer — Operational Capability Register**

Operational Capabilities describe **high-level abilities** the operational environment must provide, independent of how they are achieved. They are the coarsest-grained expression of what the OSR program must enable.

## Capability Register

| ID | Capability | Description |
|---|---|---|
| OC-01 | **Terrain Mobility** | The ability to traverse a variety of surface types including flat floors, carpet, gravel, and moderate inclines |
| OC-02 | **Remote Control** | The ability for a human operator to command rover motion from a safe distance via wireless link |
| OC-03 | **State Monitoring** | The ability to observe rover health, position, and sensor data in real time at the ground station |
| OC-04 | **Safe Operation** | The ability to detect and respond to hazardous conditions (e.g., tip risk, low battery, motor fault) |
| OC-05 | **Build and Assembly** | The ability for a non-specialist to assemble the rover from available commercial parts |
| OC-06 | **Software Programmability** | The ability for a developer to write, deploy, and modify rover software |
| OC-07 | **Payload Integration** | The ability to attach optional sensors, cameras, or actuators and integrate them into the rover data stream |
| OC-08 | **Educational Fidelity** | The ability to serve as a credible analog of Mars rovers for STEM education |

## Capability Scenario Matrix

Each capability is exercised in one or more operational scenarios:

| Scenario | OC-01 | OC-02 | OC-03 | OC-04 | OC-05 | OC-06 | OC-07 | OC-08 |
|---|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| Nominal terrain traverse | ● | ● | ● | ● | | | | ● |
| Hazard avoidance | ● | ● | ● | ● | | | | |
| Initial build and test | | | ● | | ● | ● | | |
| Payload demonstration | ● | ● | ● | | | ● | ● | ● |
| Software development/debug | | | ● | | | ● | | |
| Classroom demonstration | ● | ● | ● | ● | | | | ● |

## Traceability to System Capabilities

Operational Capabilities are refined into **System Capabilities** in the [System Analysis](../02_system_analysis/capabilities.md) layer:

| OC ID | Realized by System Capability |
|---|---|
| OC-01 | SC-01 Six-Wheel Drive Mobility, SC-02 Rocker-Bogie Passive Suspension |
| OC-02 | SC-03 Wireless Command Reception, SC-04 Motor Control Execution |
| OC-03 | SC-05 Telemetry Reporting |
| OC-04 | SC-06 Fault Detection and Safe Stop |
| OC-05 | SC-07 Modular Assembly Architecture |
| OC-06 | SC-08 Programmable Onboard Computer |
| OC-07 | SC-09 Payload Interface |
| OC-08 | SC-01, SC-02 (rocker-bogie is the key fidelity element) |
