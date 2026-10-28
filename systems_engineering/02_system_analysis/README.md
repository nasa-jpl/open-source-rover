# System Analysis (SA)

**Arcadia Layer 2 of 5**

The System Analysis answers the question: **WHAT must the system do?** It establishes the system boundary — what is inside the OSR versus what is external — and defines the functions, capabilities, and interfaces the system must provide to satisfy operational needs.

## Purpose

The SA translates operational activities and capabilities into **system functions** and **system capabilities**. It defines what the OSR does, without yet deciding how it does it internally.

## Documents

| Document | Contents |
|---|---|
| [System Functions](system_functions.md) | Functions the system must perform |
| [Capabilities](capabilities.md) | System-level capabilities |
| [Missions](missions.md) | Mission scenarios and use cases |
| [Interfaces](interfaces.md) | External interfaces at the system boundary |

## System Boundary

The OSR system boundary separates the rover (system-of-interest) from external elements:

```
┌──────────────────────────────────────────────────────────────────┐
│                        OSR SYSTEM BOUNDARY                        │
│                                                                  │
│  ┌──────────────────────────────────────────────────────────┐   │
│  │                    OSR System                             │   │
│  │                                                          │   │
│  │  [Mobility]  [Power Mgmt]  [Compute]  [Comms]  [Sensing] │  │
│  └──────────────────────────────────────────────────────────┘   │
│        ▲              ▲           ▲          ▲          │        │
│        │              │           │          │          │        │
└────────┼──────────────┼───────────┼──────────┼──────────┼────────┘
         │              │           │          │          │
    [Terrain]   [Battery/Power]  [Operator] [Ground Stn] [Env]
```

**Inside the boundary:** drive motors, motor controllers, PCB, Raspberry Pi, onboard camera, chassis, wheels, rocker-bogie suspension, IMU, battery monitoring circuitry.

**Outside the boundary:** battery pack (external power source), ground station laptop, gamepad controller, wireless router/infrastructure, terrain, payloads (optional external attachments).

## System Context (State Machine Summary)

The OSR System operates in the following high-level states:

```
         ┌──────────┐
    ──►  │  OFF     │
         └────┬─────┘
              │ power on
         ┌────▼─────┐
         │  BOOTING │
         └────┬─────┘
              │ boot complete + link established
         ┌────▼──────────┐
         │  STANDBY      │◄──────────────┐
         └────┬──────────┘               │
              │ motion command           │ stop command / fault clear
         ┌────▼──────────┐              │
         │  EXECUTING    ├──────────────┘
         └────┬──────────┘
              │ fault detected
         ┌────▼──────────┐
         │  SAFE STOP    │
         └───────────────┘
```

## Traceability

- System Functions realize **Operational Activities** from [OA layer](../01_operational_analysis/operational_activities.md)
- System Capabilities realize **Operational Capabilities** from [OA layer](../01_operational_analysis/operational_capabilities.md)
- System components are realized by **Logical Components** in [LA layer](../03_logical_architecture/README.md)
