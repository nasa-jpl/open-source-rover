# Systems Engineering — JPL Open Source Rover

This directory contains the Model-Based Systems Engineering (MBSE) documentation for the JPL Open Source Rover (OSR) project. The documentation follows the **Arcadia/Capella methodology**, a rigorous top-down systems engineering approach that traces requirements from stakeholder needs through physical implementation.

## MBSE Methodology: Arcadia

The OSR systems engineering model is structured around the **Arcadia** methodology implemented in [Eclipse Capella](https://mbse-capella.org/). Arcadia organizes a system's description into five successive engineering levels, each refining the previous:

```
┌─────────────────────────────────────────┐
│  1. Operational Analysis (OA)           │  WHY — stakeholder needs & context
├─────────────────────────────────────────┤
│  2. System Analysis (SA)                │  WHAT — system functions & boundary
├─────────────────────────────────────────┤
│  3. Logical Architecture (LA)           │  HOW (abstract) — solution concepts
├─────────────────────────────────────────┤
│  4. Physical Architecture (PA)          │  HOW (concrete) — physical design
├─────────────────────────────────────────┤
│  5. EPBS Architecture                   │  WHAT IS BUILT — product breakdown
└─────────────────────────────────────────┘
```

Each layer maintains **vertical traceability** — every physical component traces back to a logical component, which traces back to a system function, which traces back to an operational need.

## Document Structure

| Directory | Arcadia Layer | Purpose |
|---|---|---|
| [01_operational_analysis/](01_operational_analysis/README.md) | OA | Stakeholders, operational activities, entities |
| [02_system_analysis/](02_system_analysis/README.md) | SA | System functions, capabilities, missions |
| [03_logical_architecture/](03_logical_architecture/README.md) | LA | Logical subsystems, function allocation |
| [04_physical_architecture/](04_physical_architecture/README.md) | PA | Physical components, deployment |
| [05_epbs/](05_epbs/README.md) | EPBS | Product breakdown, configuration items |
| [MBSE_workspace/](MBSE_workspace/README.md) | — | Capella model files (machine-readable) |

## Capella Model

The machine-readable Capella model lives in [MBSE_workspace/](MBSE_workspace/README.md). To open it:

1. Download [Eclipse Capella 6.1.0](https://mbse-capella.org/download.html)
2. Open Capella and select **File → Import → Existing Projects into Workspace**
3. Point to the `MBSE_workspace/OSR_capella_model/` folder
4. The model opens with five architecture layers in the Project Explorer

The Markdown documents in this directory are generated/maintained in parallel with the Capella model and serve as the human-readable representation.

## Key Abbreviations

| Term | Meaning |
|---|---|
| OA | Operational Analysis |
| OE | Operational Entity |
| OAct | Operational Activity |
| SA | System Analysis |
| SF | System Function |
| LA | Logical Architecture |
| LC | Logical Component |
| LF | Logical Function |
| PA | Physical Architecture |
| PC | Physical Component |
| PF | Physical Function |
| EPBS | End Product Breakdown Structure |
| CI | Configuration Item |
| MBSE | Model-Based Systems Engineering |
