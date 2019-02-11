# JPL Open Source Rover Project
The JPL Open Source Rover is an open source, build it yourself, scaled down version of the 6 wheel rover design that JPL uses to explore the surface of Mars. The Open Source Rover is designed almost entirely out of consumer off the shelf (COTS) parts. This project is intended to be a teaching and learning experience for those who want to get involved in mechanical engineering, software, electronics, or robotics.

## Overview
This is a feature testing branch for an electronics rework, for moving towards a monolithic "motherboard" approach for to reduce wiring complexity and lower the barrier of entry for the project, as well as make the system more robust. 

## Disclaimer
This information is not fully tested yet, and is being put here as a development branch incase some want to start working on these parts. It will eventually be added into the main repositiory once testing has been completed and documentation added. Until then this will be incomplete for information as things will be changing rapidly. 

## TODO
Things left to do for this branch and the information to incorporated into the master branch. These are all things that we greatly welcome feedback and assistance on if anyone is wanting to contribute!

  * Finalize PCB Designs for both the RoboClaw breakout board and Arduino Sheild
  * Testing done on REV-C and REV-A on respective boards
  * Assembly Documentation written for both boards
  * Testing procedure written for both boards
  * Update CAD to incorporate new board mounting system
    * Battery mounting system
    * New Body Assembly
  * Assembly docs for new CAD
  * Upload all KiCAD files/libraries used for the PCBs
  * Sofware
    * Arduino Code written to run LED screen
    * USB-> TTL serial code written for RPi to communicate to arduino to give commands for LED screen
  * Finalize electrical build docuemtnation and integration


## Board ordering/assembly

If you do wish to purchase these boards/items previous to the final release to help test/document and contribute to the project we would greatly appreciate the help! There is an excel spreadsheet here which has a parts list of all things necessary.

`ADD LINK TO SPREADSHEET`

In here currently are just the gerber files necessary to order the boards in their current revision. Eventually I will upload the libraries/kicad files so everyone can make edits to them, but in order to just get information up here it will just be the gerbers at first. They can be found at:

`ADD LINK TO GERBER FILES`

To order these boards we suggest that you order from `add link to jlpcb`, this PCB fabrication company is quite inexpensive for this board area and has good turnaround time. Upload the .zip files individually and make sure the following settings are set:

  * Layers - 2
  * Dimension - 53 x 69 mm (arduino sheild) & 175 x 154 mm (roboclaw breakout) 
  * PCB Qty - 10
  * PCB Thickness - 1.6 mm
  * PCB Color - Whatever color you want
  * Surface Finish - HASL
  * Copper Weight - 1oz
  * Gold Finers - No
  * Panel by JLPCB - No
  * Flying Probe Test - Fully Tested
  * Castellated Holes - No
  * Different Design - 1

## Contributing to this branch

Again we greatly appreciate anyone who wants to help with this process. There are issues with all of the TODO items, if you wish to help with anything else feel free to open an issue with that and we will try and respond to that as well.
