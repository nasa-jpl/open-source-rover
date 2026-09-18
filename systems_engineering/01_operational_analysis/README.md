# Operational Analysis (OA)

**Arcadia Layer 1 of 5**

The Operational Analysis answers the question: **WHY does the system exist?** It describes the operational context — who the stakeholders are, what activities they need performed, and how entities interact — without yet committing to any system solution.

## Purpose

The OA captures the needs of the world that the OSR must satisfy. It is completely solution-agnostic: there is no rover here, only the operational problem to be solved.

## Documents

| Document | Contents |
|---|---|
| [Stakeholders](stakeholders.md) | All parties with a stake in the rover's operation |
| [Operational Entities](operational_entities.md) | Actors and external systems in the operational environment |
| [Operational Activities](operational_activities.md) | Activities that must be performed to meet stakeholder needs |
| [Operational Capabilities](operational_capabilities.md) | High-level capabilities the operation must provide |

## Operational Context Summary

The JPL Open Source Rover exists to serve the **STEM education and maker community** by providing a credible, buildable analog of Mars exploration rovers. The operational environment includes:

- **Educators and students** who build, program, and operate the rover
- **The terrain** the rover traverses (indoor floors, outdoor surfaces, moderate obstacles)
- **Compute and control infrastructure** (laptop, gamepad, wireless link)
- **External power** (battery, charger)

The rover is expected to be **assembled by non-specialists** from commercially available parts, **operated remotely** via a ground station, and **extended** with custom sensors or payloads.

## Operational Architecture Block (OAB) Summary

```
┌──────────────────────────────────────────────────────┐
│                 Operational Environment               │
│                                                      │
│  [Operator] ──control──► [OSR System]                │
│      │                       │                       │
│      │◄──telemetry────────────┤                       │
│                               │                      │
│  [Builder] ──assembly──► [OSR Hardware]              │
│                                                      │
│  [Developer] ──software──► [OSR Software Stack]      │
│                                                      │
│  [Terrain] ◄──traversal── [OSR Mobility]             │
└──────────────────────────────────────────────────────┘
```

## Traceability

Operational Activities in this layer are realized by **System Functions** in the [System Analysis](../02_system_analysis/README.md).
