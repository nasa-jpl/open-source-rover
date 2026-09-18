# Logical Architecture (LA)

**Arcadia Layer 3 of 5**

The Logical Architecture answers the question: **HOW (abstractly) does the system work?** It decomposes the system into logical components and allocates system functions to those components, without yet specifying physical hardware or software technology choices.

## Purpose

The LA defines the **solution concept**: how the OSR system is organized into cooperating subsystems. Logical components are technology-agnostic — they describe functional roles, not physical devices. Each logical component realizes one or more system functions and may expose interfaces to other components.

## Documents

| Document | Contents |
|---|---|
| [Logical Components](logical_components.md) | Subsystem decomposition and responsibilities |
| [Logical Functions](logical_functions.md) | Function allocation to logical components |
| [Interfaces](interfaces.md) | Inter-component logical interfaces |

## Logical Architecture Block (LAB)

```
┌───────────────────────── Logical System ───────────────────────────┐
│                                                                     │
│  ┌────────────────┐    ┌────────────────┐    ┌────────────────┐    │
│  │ LC-01          │    │ LC-02          │    │ LC-03          │    │
│  │ Communication  │───►│ Command        │───►│ Mobility       │    │
│  │ Manager        │    │ Processor      │    │ Controller     │    │
│  └────────────────┘    └───────┬────────┘    └───────┬────────┘    │
│                                │                     │             │
│                                ▼                     ▼             │
│  ┌────────────────┐    ┌────────────────┐    ┌────────────────┐    │
│  │ LC-04          │    │ LC-05          │    │ LC-06          │    │
│  │ State          │◄───│ Fault Monitor  │    │ Power Manager  │    │
│  │ Estimator      │    │                │    │                │    │
│  └───────┬────────┘    └────────────────┘    └───────┬────────┘    │
│          │                                           │             │
│          ▼                                           ▼             │
│  ┌────────────────┐                         ┌────────────────┐    │
│  │ LC-07          │                         │ LC-08          │    │
│  │ Telemetry      │                         │ Payload        │    │
│  │ Publisher      │                         │ Manager        │    │
│  └────────────────┘                         └────────────────┘    │
└─────────────────────────────────────────────────────────────────────┘
```

## Component Summary

| ID | Component | Realizes SF | Key Responsibility |
|---|---|---|---|
| LC-01 | Communication Manager | SF-01, SF-04.3, SF-05 | Wi-Fi packet I/O, message routing |
| LC-02 | Command Processor | SF-01 | Decodes, validates, and dispatches commands |
| LC-03 | Mobility Controller | SF-02 | Kinematic computation and motor command generation |
| LC-04 | State Estimator | SF-04.1, SF-04.2 | Sensor fusion, odometry, attitude estimate |
| LC-05 | Fault Monitor | SF-06 | Health monitoring and safe-stop triggering |
| LC-06 | Power Manager | SF-03 | Power distribution, battery monitoring |
| LC-07 | Telemetry Publisher | SF-04.3 | Formats and transmits telemetry |
| LC-08 | Payload Manager | SF-07 | Payload power switching and data routing |

## Traceability

- Logical Components realize **System Functions** from [SA layer](../02_system_analysis/system_functions.md)
- Logical Components are realized by **Physical Components** in [PA layer](../04_physical_architecture/README.md)
