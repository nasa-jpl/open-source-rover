# MBSE Workspace — Capella Model

This directory contains the machine-readable **Eclipse Capella** MBSE model for the JPL Open Source Rover. The model implements the complete Arcadia methodology across all five engineering layers.

## Capella Model Source

The model originates from [PhilCarPi/open-source-rover](https://github.com/PhilCarPi/open-source-rover/tree/master/systems_engineering/MBSE_workspace) (Capella 6.1.0, project approach: SingletonComponents).

## Directory Contents

```
MBSE_workspace/
├── README.md                          ← This file
└── OSR_capella_model/
    ├── .project                       ← Eclipse project descriptor
    ├── OSR_capella_model.afm          ← Kitalpha Architecture Framework Metadata
    ├── OSR_capella_model.aird         ← Sirius diagram registry (viewpoints)
    └── OSR_capella_model.capella      ← Primary semantic model (XMI/XML)
```

## Opening the Model

### Prerequisites

1. Download **Eclipse Capella 6.1.0** from [mbse-capella.org](https://mbse-capella.org/download.html)
2. Extract the archive — no installation required

### Import Steps

1. Launch Capella
2. Select **File → Import → General → Existing Projects into Workspace**
3. Click **Browse** and navigate to this `MBSE_workspace/` folder
4. Check `OSR_capella_model` and click **Finish**
5. The model appears in the **Project Explorer** pane

### Model Structure in Capella

```
OSR_capella_model (Project)
└── OSR_capella_model (System Engineering root)
    ├── Operational Analysis
    │   ├── Operational Activities
    │   │   └── Root Operational Activity
    │   ├── Operational Entities
    │   ├── Operational Capabilities
    │   └── Roles
    ├── System Analysis
    │   ├── System Functions
    │   │   └── Root System Function
    │   ├── Structure → System component
    │   ├── Capabilities
    │   ├── Missions
    │   └── Data
    ├── Logical Architecture
    │   ├── Logical Functions
    │   │   └── Root Logical Function
    │   ├── Structure → Logical System
    │   └── Interfaces
    ├── Physical Architecture
    │   ├── Physical Functions
    │   │   └── Root Physical Function
    │   ├── Structure → Physical System
    │   └── Interfaces
    └── EPBS Architecture
        └── Structure → System (SystemCI)
```

## Capella Viewpoints Active

The `.aird` file registers seven Capella viewpoints:

| Viewpoint | Purpose |
|---|---|
| Kitalpha AD | Architecture description |
| System Analysis | SA diagrams (SAB, SDFB, MSM) |
| EPBS Architecture | Product breakdown diagrams |
| Logical Architecture | LA diagrams (LAB, LDFB) |
| Common | Shared elements |
| Operational Analysis | OA diagrams (OAB, OES, OPD) |
| Physical Architecture | PA diagrams (PAB, PDFB) |

## Recommended Diagrams to Create

As the model is populated with OSR-specific content, create these diagrams in Capella:

### Operational Analysis
- **OAB** (Operational Architecture Block): Show all operational entities and interactions
- **OES** (Operational Entity Scenario): Show M-01 nominal mission sequence
- **OPD** (Operational Process Description): Show activity flows

### System Analysis
- **SAB** (System Architecture Block): System with all external interfaces
- **MSM** (Modes and States Machine): System state machine (OFF, BOOTING, STANDBY, EXECUTING, SAFE STOP)
- **SDFB** (System Data Flow Blank): SF function chain

### Logical Architecture
- **LAB** (Logical Architecture Block): All 8 logical components and connections
- **LDFB** (Logical Data Flow Blank): Function chain through components

### Physical Architecture
- **PAB** (Physical Architecture Block): RPi, PCB, RoboClaws, sensors
- **PDFB** (Physical Data Flow Blank): ROS node data flows

### EPBS
- **EAB** (EPBS Architecture Block): Product breakdown tree

## Traceability Chains in the Model

The scaffold model already defines the full vertical realization chain:

```
EPBS: System (SystemCI)
  └── realizes ──► PA: Physical System
        └── realizes ──► LA: Logical System
              └── realizes ──► SA: System

Root Physical Function
  └── realizes ──► Root Logical Function
        └── realizes ──► Root System Function
              └── realizes ──► Root Operational Activity
```

## Expanding the Model

To populate OSR-specific content into the Capella model, follow this workflow:

1. **OA Layer:** Create named Operational Entities (OE-01 through OE-10 per [operational_entities.md](../01_operational_analysis/operational_entities.md)). Add Operational Activities as children of Root Operational Activity.

2. **SA Layer:** Decompose Root System Function into SF-01 through SF-07 per [system_functions.md](../02_system_analysis/system_functions.md). Define interfaces at the System boundary.

3. **LA Layer:** Decompose Logical System into LC-01 through LC-08 per [logical_components.md](../03_logical_architecture/logical_components.md). Allocate logical functions.

4. **PA Layer:** Decompose Physical System into physical components per [physical_components.md](../04_physical_architecture/physical_components.md). Deploy physical functions.

5. **EPBS Layer:** Create Configuration Item children per [configuration_items.md](../05_epbs/configuration_items.md).

## Model File Notes

The `.capella` file uses **XMI 2.0** format with Capella 6.0.0 namespaces. It is a standard XML file and can be inspected with any text editor, though Capella should be used for editing to maintain referential integrity (all elements reference each other by UUID).

The `ProgressStatus` enumeration in the model supports these values:
`DRAFT | TO_BE_REVIEWED | TO_BE_DISCUSSED | REWORK_NECESSARY | UNDER_REWORK | REVIEWED_OK`

Use these to track the maturity of model elements as the OSR MBSE effort progresses.
