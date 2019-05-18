# Electrical Subsystem
The electrical subsystem consists of the motors, motor controllers, brain, LED array for the face, battery, and other electronic components that will control the rover.  See the project's main [roadmap](/images/roadmap.PNG) for information on when you should be building your electrical subsystem.  The electrical subsystem needs to carry two major things throughout the rover: power and data.


## Power Overview Diagram
Below is a high-level diagram showing how _power_ is transferred around the rover:
![Power Diagram Overview](Latex%20Docs/Electrical%20Build%20Doc/Pictures/Electronics/power%20diagram.PNG)

## Data Overview Diagram
Below is a high-level diagram showing how _data_ is transferred around the rover:
![Data Diagram Overview](Latex%20Docs/Electrical%20Build%20Doc/Pictures/Electronics/data%20diagram.PNG)

# Disclaimer
**By downloading, cloning, or otherwise using the contents of this repository, you agree to the terms specified in the attached [DISCLAIMER.txt file](/DISCLAIMER.txt).**

# Getting Started with the Electrical build

## Folder organization
The image below shows the folder organization for the electrical subsystem. This folder (Electrical) contains all of the electrical build documents ([Electrical Build.pdf](Electrical\ Build.pdf) shows how to build the Electrical subsystem, [Calibration.pdf](Calibration.pdf) shows how to calibrate your motors, and [PCB Testing.pdf](PCB\ testing.pdf) shows how to verify that your custom PCBs are working as expected).  It also contains folders which hold the Gerber files you can use to order the custom PCBs for the project and their corresponding electrical schematics if you wish to build them yourself on a breadboard or design your own PCBs.

![Electrical Folders](images/elec%20folders.png)

## Electrical Subsystem Roadmap
The image below shows our suggested progression through the electrical build process for this project. We highly recommend starting by testing all the electronics outside of the robot, and making sure you fully understand each of the components before putting them inside the robot. By building your electrical system outside the robot first, you allow yourself to easily debug your system without the hassle of bumping into the rest of the rover or needing to access components in inconvenient locations. Once you have a fully assembled mechanical robot, you will then be able to integrate all the electronics inside and do the wire routing, etc. Next, you will test and calibrate the motors. We recommend waiting until you have a full functioning rover before you do the LED Matrix integration. The LED Matrix is not integral to the robot driving, and it takes up a significant number of GPIO pins on the Raspberry Pi which could potentially be used for other addons (sensors, communication, etc). 

![Rover build roadmap](images/elec%20roadmap.png)
