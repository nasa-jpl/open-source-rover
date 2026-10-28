# Stakeholders

**OA Layer — Stakeholder Register**

Stakeholders are all parties whose interests must be considered in the design and operation of the OSR. Each stakeholder has needs that drive system requirements.

## Stakeholder Table

| ID | Stakeholder | Role | Primary Interests |
|---|---|---|---|
| SH-01 | **Rover Operator** | Remotely controls rover during missions | Reliable control, responsive telemetry, intuitive interface |
| SH-02 | **Builder / Assembler** | Constructs rover from kit or sourced parts | Clear instructions, standard hardware, low assembly complexity |
| SH-03 | **Software Developer** | Writes or modifies rover code | Documented APIs, modular software, open-source stack |
| SH-04 | **Educator / Instructor** | Uses rover in classroom or camp setting | Durability, safety, educational value, curriculum alignment |
| SH-05 | **Student / Learner** | Learns STEM concepts through rover | Engagement, approachability, hands-on interaction |
| SH-06 | **Mechanical Engineer (Contributor)** | Designs or modifies mechanical systems | CAD availability, modularity, standard hardware |
| SH-07 | **Electrical Engineer (Contributor)** | Designs or modifies electrical systems | PCB accessibility, documented schematics, safety |
| SH-08 | **Open-Source Community** | Uses, modifies, and extends the platform | Permissive license, documentation quality, issue tracking |
| SH-09 | **JPL / NASA** | Maintains project and ensures fidelity to real rovers | Technical accuracy, brand alignment, outreach value |
| SH-10 | **Terrain / Environment** | The physical world the rover operates in | (Constraint stakeholder — imposes physical demands) |

## Stakeholder Needs

### SH-01 — Rover Operator

| Need ID | Need Statement |
|---|---|
| N-SH01-01 | The operator shall be able to command rover motion (forward, reverse, turn, stop) via a wireless interface |
| N-SH01-02 | The operator shall receive real-time feedback on rover state (orientation, battery, fault status) |
| N-SH01-03 | The operator shall be able to stop all rover motion within 1 second of issuing a stop command |
| N-SH01-04 | The operator shall be able to control the rover from at least 10 meters distance |

### SH-02 — Builder / Assembler

| Need ID | Need Statement |
|---|---|
| N-SH02-01 | All structural components shall be sourceable from standard commercial suppliers |
| N-SH02-02 | Assembly shall be accomplishable with standard hand tools (no CNC or specialized equipment required beyond optional 3D printing) |
| N-SH02-03 | Assembly instructions shall include step-by-step guidance with photographs |
| N-SH02-04 | Total build cost shall remain under $2,500 USD |

### SH-03 — Software Developer

| Need ID | Need Statement |
|---|---|
| N-SH03-01 | Software shall run on a standard single-board computer (Raspberry Pi) |
| N-SH03-02 | All rover software shall be open-source and version-controlled |
| N-SH03-03 | Control interfaces shall support ROS (Robot Operating System) |
| N-SH03-04 | Motor control APIs shall be documented and accessible |

### SH-04 — Educator / Instructor

| Need ID | Need Statement |
|---|---|
| N-SH04-01 | The rover shall be operable by students aged 14+ without specialist knowledge |
| N-SH04-02 | The rover shall not pose electrical or mechanical safety hazards under normal operation |
| N-SH04-03 | The system shall support curriculum on robotics, programming, and planetary science |

### SH-05 — Student / Learner

| Need ID | Need Statement |
|---|---|
| N-SH05-01 | The rover shall be visually recognizable as analogous to Mars exploration rovers |
| N-SH05-02 | Students shall be able to write and deploy their own code to the rover |

### SH-09 — JPL / NASA

| Need ID | Need Statement |
|---|---|
| N-SH09-01 | The rover suspension shall implement the rocker-bogie mechanism as used on real Mars rovers |
| N-SH09-02 | The rover shall use a six-wheel drive configuration |
| N-SH09-03 | Documentation and branding shall acknowledge JPL/Caltech origin |
