# Operational Entities

**OA Layer — Operational Entity Register**

Operational Entities (OEs) are the actors and external systems that participate in the operational environment. They interact with each other and with the OSR system through **operational interactions**.

## Entity Register

| ID | Entity | Type | Description |
|---|---|---|---|
| OE-01 | **Ground Operator** | Human Actor | Person controlling the rover via ground station |
| OE-02 | **Ground Station** | External System | Laptop/computer running operator control software |
| OE-03 | **Wireless Link** | External System | Wi-Fi or other RF link between ground station and rover |
| OE-04 | **OSR System** | System-of-Interest | The rover itself (treated as a black box at this layer) |
| OE-05 | **Terrain** | Environment | The surface the rover traverses — floors, gravel, obstacles |
| OE-06 | **Power Source** | External System | Battery pack supplying electrical energy to the rover |
| OE-07 | **Builder** | Human Actor | Person assembling the rover from parts |
| OE-08 | **Parts Suppliers** | External System | Vendors supplying mechanical, electrical, and electronic components |
| OE-09 | **Developer** | Human Actor | Person writing or modifying rover software |
| OE-10 | **Payload / Sensor** | External System | Optional extensions (cameras, arms, science instruments) |

## Operational Interactions

### Primary Control Loop

```
[Ground Operator]
      │
      │ issues motion commands (gamepad input)
      ▼
[Ground Station]
      │
      │ encodes commands (ROS messages / serial packets)
      ▼
[Wireless Link]
      │
      │ transmits over Wi-Fi
      ▼
[OSR System]
      │
      │ executes motion
      ▼
[Terrain] ◄── rover exerts forces
      │
      │ rover state (odometry, attitude)
      ▼
[OSR System]
      │
      │ telemetry data
      ▼
[Wireless Link] → [Ground Station] → [Ground Operator]
```

### Power Loop

```
[Power Source] ──DC power──► [OSR System]
[OSR System] ──discharge status──► [Ground Operator]
```

### Build Loop

```
[Builder] ──assembly work──► [OSR System]
[Parts Suppliers] ──components──► [Builder]
[Developer] ──software install──► [OSR System]
```

### Payload Extension Loop

```
[Payload / Sensor] ──data──► [OSR System]
[OSR System] ──power + comms──► [Payload / Sensor]
[OSR System] ──sensor telemetry──► [Ground Station]
```

## Entity Roles

| Entity | Provides | Receives |
|---|---|---|
| OE-01 Ground Operator | Control intent | Rover telemetry, camera video |
| OE-02 Ground Station | Encoded commands | Telemetry, video stream |
| OE-03 Wireless Link | Bidirectional data channel | Commands (downlink), telemetry (uplink) |
| OE-04 OSR System | Motion, sensor data | Commands, power |
| OE-05 Terrain | Reaction forces, obstacles | Rover wheel forces |
| OE-06 Power Source | Electrical energy | — |
| OE-07 Builder | Assembled hardware | Parts, documentation |
| OE-08 Parts Suppliers | Components | Purchase orders |
| OE-09 Developer | Software | Hardware platform |
| OE-10 Payload / Sensor | Sensor data | Power, communication interface |
