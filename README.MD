# JPL Open-Source Rover Project
The JPL Open-Source Rover is a fully open-source scaled version of the 6 wheel rover design that JPL uses to explore the surface of mars. The robot is designed almost entirely out of consumer off the shelf (COTS) parts.

![6 Wheel Rover](https://github.jpl.nasa.gov/ejunkins/osr/blob/master/images/rover.png)

## Motivation
JPL is always looking at ways to inspire the next generation of sceientists, engineers, and people who will be the next generation we will be exploring the solar system with. We want to give this project as a way to get young engineers a fun robotics project that will get everyone excited about STEM. 

## Disclaimer
INSERT LINK TO DISCLAMER AND STATEMENT HERE

## Feautres
This rover is designed to function very similar to the 6 wheel rover designs on mars, and employs a few of the major driving mechanics that the mars rovers use to traverse the surface.
 * Rocker-Bogie: Suspension system for the rover, allowing all 6 wheels to continually be in contact with the ground while climibing over obstacles
 * Differential Pivot: Allows weight to be mechanically offloaded from one side of the rover to the other during climbing
 * 6-Wheel Ackerman Steering: Driving and turning mechanism that governs where the wheels point and how fast each of them will move.

## Skills Necessary
This project has elements in mechanical assembly/fabrication, uses a host of electrical componenets, and has software that will run it all. In order to complete this project you will need to have some experience in the following tasks:
 * Fabrication/Machining: Although most the parts are COTS there are a few modifications necessary to adapt them to the project. These will be in the form of 
   * Metal cutting using band saw/dremel
   * Drilling using drill press/hand drill
   * Filling and sanding for part cleanup
 * Electronics: This project uses components like motors, motor controllers, and batteries. It will be important to have experience with the following electrical processes.
   * Soldering
   * Electrical debugging
   * Wiring
 * The project runs with a Raspberry Pi as the brain of the robot with all the software already written to run it, but a very basic amount of knowledge is required for getting everything up and ready on the Raspberry Pi.
   * Basic Linux fimilarity
   * Basic Python fimilarity

Most of these skills are thing that you can learn and pick up on fairly quickly from watching vidoes and doing research on the internet, and throughout the project we try to give supplemental information on some of these as well. 

## Roadmap

![Rover build roadmap](https://github.jpl.nasa.gov/ejunkins/osr/blob/master/images/roadmap.PNG)

Here we have a proposed roadmap of how you can build the rover and what part of the build is dependant on the other sections. It is broken down into 5 stages.


 * __Stage 1:__ Everything in stage 1 is completely parallelizable. It is highly recommended to start on the electrical testing of components outside the robot before doing any electrical work inside the completed robot body. We can also see that the software can be worked on at any stage between here and the end.
 * __Stage 2:__ By here the mechanical subassemblies all would be assembled, and there would be various amounts of electrical testing done, as well as various amounts of the software completed. 

 * __Stage 3:__ The rover is mechanically built and all subassemblies integrated together, here would begin the integration of the electrical components, and the various power and data wires being connected to devices.

 * __Stage 4:__ With the electronics all powered and communicating you need to test and calibrate all the motors in the system

 * __Stage 5:__ Once everything has been tested and calibrated, and the software is now complete the robot will be fully functioning and built!

