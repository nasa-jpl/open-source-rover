# JPL Open Source Rover Project

The JPL Open Source Rover is an open source, build it yourself, scaled down version of the 6 wheel rover design that JPL uses to explore the surface of Mars. The Open Source Rover is designed almost entirely out of consumer off the shelf (COTS) parts. This project is intended to be a teaching and learning experience for those who want to get involved in mechanical engineering, software, electronics, or robotics.

## Overview

This is a feature testing branch for an electronics rework, for moving towards a monolithic "motherboard" approach for to reduce wiring complexity and lower the barrier of entry for the project, as well as make the system more robust.

## Disclaimer

This information is not fully tested yet, and is being put here as a development branch incase some want to start working on these parts. It will eventually be added into the main repository once testing has been completed and documentation added. Until then this will be incomplete for information as things will be changing rapidly.

## Board ordering/assembly

If you do wish to purchase these boards/items previous to the final release to help test/document and contribute to the project we would greatly appreciate the help! There is an excel spreadsheet here which has a parts list of all things necessary.

[Master Parts List](../parts_list/master_parts_list_raw.csv)

In here currently are just the gerber files necessary to order the boards in their current revision. Eventually I will upload the libraries/kicad files so everyone can make edits to them, but in order to just get information up here it will just be the gerbers at first. They can be found in [the PCB folder](/electrical/pcb/).

To order these boards we suggest that you order from [JLCPCB](https://jlcpcb.com/), this PCB fabrication company is quite inexpensive for this board size and has good turnaround time. Upload the .zip files individually and make sure the following settings are set:

* Layers - 2
* Dimension - 53 x 69 mm (arduino shield) & 175 x 154 mm (roboclaw breakout)
* PCB Qty - 10
* PCB Thickness - 1.6 mm
* PCB Color - Whatever color you want
* Surface Finish - HASL
* Copper Weight - 1oz
* Gold Fingers - No
* Panel by JLPCB - No
* Flying Probe Test - Fully Tested
* Castellated Holes - No
* Different Design - 1
