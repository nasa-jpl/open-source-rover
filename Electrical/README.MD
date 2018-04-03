# JPL Open-Source Rover Project
The JPL Open-Source Rover is a fully open-source scaled version of the 6 wheel rover design that JPL uses to explore the surface of mars. The robot is designed almost entirely out of consumer off the shelf (COTS) parts.

![Power Diagram Overview](https://github.jpl.nasa.gov/ejunkins/osr/blob/master/Electrical/Latex%20Docs/Electrical%20Build%20Doc/Pictures/Electronics/power%20diagram.PNG)

## Disclaimer
INSERT LINK TO DISCLAMER AND STATEMENT HERE

# Getting Started with the Electrical build

## Folder organization
![Electrical Folders](https://github.jpl.nasa.gov/ejunkins/osr/blob/master/Electrical/images/elec%20folders.png)

This is the folder organization for the electrical section. This repo contains all of the electrical build docs in it, as well as folders that contain the Gerber files to get the custom PCBs designed for the project, as well as their electrical schematics if you wish to make them on a breadboard or design your own PCBs.

## Roadmap

![Rover build roadmap](https://github.jpl.nasa.gov/ejunkins/osr/blob/master/Electrical/images/elec%20roadmap.png)

Here we have a proposed roadmap of how you can go through the electrical build process for this project. We highly recommend starting by testing all the electronics outside of the robot, and making sure you fully understand each of them before putting them inside the robot. Once you have a fully assembled mechanical robot you will then be able to integrate all the electronics inside, and do the wire routing etc. Afterwards you will test and calibrate the motors. We recommend waiting until you have a full functioning rover before you do the LED Matrix integration, it is not integral to the robot working and takes up a large number of GPIO pins on the Raspberry Pi, which we know some may want to use for other devices anyway. 
