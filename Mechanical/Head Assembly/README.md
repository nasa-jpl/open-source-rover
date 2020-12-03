# Head Assembly
The head assembly serves as the head and face of our rover. It houses a 16x32 fully programmable 7 color LED matrix which we use as a display. The head can be used to show different faces and give your robot a personality, or even to show status and metrics about your rover (power, controller connectivity, battery level, etc)!

![Head picture](Latex%20Docs/Pictures/Head%20final.PNG)

## Features
  * 3D printed components allows easy assembly; the housing was designed to be modular and printed separately, then fit together.
  * Fully programmable 7-color LED matrix
  * Custom PCB handles the switching the digital signal level between the Raspberry Pi and the LED matrix

## Mechanical Interface/Attachments:
  * 1" PVC pipe to 1" PVC clamping hub on body

## 3D Printing
There are a few components that need to be 3D printed to make the head assembly. You can find the STL files necessary for these prints in the ”Mechanical/Head Assembly/3D Printed Parts” folder of the repository.

If you do not have a 3D printer there are a number of online 3D printing services available, an example of which can be found at:
 - [MakeXYZ](https://www.makexyz.com/)

Print the "head base.STL" piece from the [3d Printed head](https://github.com/nasa-jpl/open-source-rover/blob/master/Mechanical/Head%20Assembly/3D%20Printed%20Parts/head%20base.STL)

## Laser Cutting

There is an acrylic plate which mounts the arduino into the head, as well as a back plate for the panel of the head. The 2D cutout files are the .DXF files and can be found in the GitHub repository at [Laser cut parts](https://github.com/nasa-jpl/open-source-rover/tree/master/Mechanical/Head%20Assembly/Laser%20Cut%20Files). If you do not have access to a laser cutting there is an online service in which you can order these from below:

  - [Scupteo](https://sculpteo.com)

To get the above parts from Sculpteo, go to Laser cutting and then upload the .DXF files (make sure you select mm as units!). Hit Next. Make sure scale is set to 100%, change the material to Acrylic, set thickness to 1/8 inch, and then select whatever color you wish.

## Machining/Fabrication

1. Cutting the PVC Pipe:

  Take the PVC pipe S29 (this will be the ”neck” of the rover) and cut it down to 4.5 inches long.


## Mechanical Assembly

1. Assemble the Arduino Stack: Begin by stacking together the Arduino Uno E24, Arduino Shield E2, Standoffs T10, Screws B10, and Arduino Plate S44 and fastening them as shown in  FIGURE X


2. Inserting the Heat set inserts: Insert the # 4-40 Heat Set Inserts I1 into the 3D printed head (using a Solder Iron at 460 degrees F) in the locations shown in Figures 3 and 4. For more information on using heat set inserts, see:
  - [Heat set insert tutorial](https://www.lulzbot.com/learn/tutorials/heat-set-inserts-tips-and-tricks)

3. Mount the PVC clamping hub: Using screws B2, attach the PVC clamping hub to the bottom of the 3D printed head.

4. Attach PVC Pipe: Slot the PVC pipe S29 into the clamping hub and then tighten down the screws on the clamping hub

5. Attaching the LED Matrix: Attach the LED Matrix E37 to the front of the head assembly using Screws B14.

6. Mount the Arduino Stack: Take the Arduino Plate assembly and mount it using screws B8 to the heat set inserts on the posts inside the head as shown in Figure 8

7. Back Plate Attachment: Attach the Laser Cut Back Plate S42 onto the back of the head assembly using screws B2.

The head is now finished!