# Head Assembly

The head assembly serves as the head and face of our rover. It houses a 16x32 fully programmable 7 color LED matrix which we use as a display. The head can be used to show different faces and give your robot a personality, or even to show status and metrics about your rover (power, controller connectivity, battery level, etc)!

<img src="../../images/head/finala.png" width="50%">

## 1. Features

* 3D printed components allows easy assembly; the housing was designed to be modular and printed separately, then fit together.
* Fully programmable 7-color LED matrix
* Custom PCB handles the switching the digital signal level between the Raspberry Pi and the LED matrix

## 2. Information about module

| Author/Creator            | JPL       |
| --------------            | -------            |
| Cost without 3D printer   | 97.80              |
| Cost with 3D printer      | 84.90              |
| Date Added                | 4/11               |
| Group/Organization/School | JPL                |
| Time to build             | 2 hrs              |

## 2.1 Skills

* Band Saw/Dremel
* Drill Press/Hand Drill

## 2.2 Tools

### 2.2.1 Mandatory

* Band saw or Dremel
* Drill press or Hand Drill
* Allen Key set
* Imperial Wrench Set
* Soldering Iron

### 2.2.2 Optional

## 2.3 Dependencies on Other Modules

* None

## 2.4 Mechanical Interface/Attachments to Rover

* None

## 3. 3D Printing

There are a few components that need to be 3D printed to make the head assembly. You can find the STL files necessary for these prints in the [mechanical/head_assembly/3d_printed_parts](3d_printed_parts) folder of the repository.

| <img src="../../images/components/structural/S43.png" width="50%"> |
| :--: |
| Figure 1: 3D Printed Parts |

If you do not have a 3D printer there are a number of online 3D printing services available, an example of which can be found at:

* [MakeXYZ](https://www.makexyz.com/)

Print the "head base.STL" piece from the [3d Printed head](https://github.com/nasa-jpl/open-source-rover/blob/master/mechanical/head_assembly/3d_printed_parts/head%20base.STL)

## 4. Laser Cutting

There is an acrylic plate which mounts the arduino into the head, as well as a back plate for the panel of the head. The 2D cutout files are the .DXF files and can be found in the GitHub repository at [Laser cut parts](https://github.com/nasa-jpl/open-source-rover/tree/master/mechanical/head_assembly/laser_cut_files). If you do not have access to a laser cutting there is an online service in which you can order these from below:

* [Sculpteo](https://sculpteo.com)

To get the above parts from Sculpteo, go to Laser cutting and then upload the .DXF files (make sure you select mm as units!). Hit Next. Make sure scale is set to 100%, change the material to Acrylic, set thickness to 1/8 inch, and then select whatever color you wish.

## 5. Machining/Fabrication

| Item | Ref | Qty | Image |
| :--- | :-- | :-- | :---: |
| 1" PVC Pipe | S29 | 1 | <img src="../../images/components/structural/S29.png" width="25%">|
| Metal Hacksaw or Bandsaw | D4 | 1  |  <img src="../../images/components/tools/D4.png" width="25%"> |
| Vice clamp or C clamps | D5 | 1 |  <img src="../../images/components/tools/D5.png" width="25%">|

### 5.1 Cutting the PVC Pipe

  Take the PVC pipe S29 (this will be the ”neck” of the rover) and cut it down to 4.5 inches long.

## 6. Mechanical/Structural Assembly

| Item | Ref | Qty | Image | Item | Ref | Qty | Image |
| :--- | :-- | :-- | :---: | :--- | :-- | :-- | :---: |
| 3D-printed Clamping Hub for 1" PVC Pipe | S24 | 1 | <img src="../../images/components/structural/S24.png" width="200"> | #6-32 x 3/8" Button Head Screw | B2 | 4 | <img src="../../images/components/screws/B2.png" width="70">|
| PVC Pipe (Modified ) | S29A | 1 | <img src="../../images/components/structural/S29.png" width="200">   | #4-40x 1/4" Button Head Screw| B8 | 12 | <img src="../../images/components/screws/B8.png" width="70">|
| Laser Cut Head Back Panel | S42 | 1 | <img src="../../images/components/structural/S42.png" width="200">   | M2.5 x 6mm Socket Head Screw | B10 | 8| <img src="../../images/components/screws/B10.png" width="70">|
| 3D printed Head | S43 | 1 | <img src="../../images/components/structural/S43.png" width="200">   | M3 x 6mm Socket Head Cap screw| B14 | 6 | <img src="../../images/components/screws/B14.png" width="70"> |
| Laser Cut Arduino Plate | S44 | 1 | <img src="../../images/components/structural/S44.png" width="200">   | Arduino Shield PCB |E2 | 1 | <img src="../../images/components/electronics/E2.png" width="200"> |
| #4-40 Heat set insert | I1 | 8 | <img src="../../images/components/inserts/I1.png" width="70"> | #6-32 Heat set insert | I2 | 6 | <img src="../../images/components/inserts/I2.png" width="70">|
| Arduino Uno| E24 | 1 | <img src="../../images/components/electronics/E24.png" width="200"> | #6-32 x 5/8" Button Head Screw | B4| 2 | <img src="../../images/components/screws/B2.png" width="70">|
| M2.5 x 10mm Standoff| T10 | 4 | <img src="../../images/components/standoffs/T10.png" width="70">   | LED Matrix | E37 | 1  |  <img src="../../images/components/electronics/E37.png" width="200"> |
|#6 Washer| W1| 2| <img src="../../images/components/washers/W1.png" width="70">|||||

## 6.1 Assemble the Arduino Stack

Begin by stacking together the Arduino Uno **E24**, Arduino Shield **E2**, Standoffs **T10**, Screws **B10**, and Arduino Plate **S44** and fastening them as shown in figure 2 & figure 3.

| <img src="../../images/head/step-1a.png" width="80%"> | <img src="../../images/head/step-1b.png" width="100%">|
|:-:|:-:|
| Figure 2 | Figure 3 |

## 6.2 Inserting the Heat set inserts

### 6.2.1 3D-printed head

Insert the # 4-40 Heat Set Inserts **I1** into the 3D printed head (using a Solder Iron at 460 degrees F) in the locations shown in Figures 4 and 5. For more information on using heat set inserts, see:

* [Heat set insert tutorial](https://www.lulzbot.com/learn/tutorials/heat-set-inserts-tips-and-tricks)

| <img src="../../images/head/step-2a.png" width="80%"> | <img src="../../images/head/step-2b.png" width="100%">|
|:-:|:-:|
| Figure 4 | Figure 5 |

| <img src="../../images/head/step-3a.png" width="100%"> | <img src="../../images/head/step-3b.png" width="100%">|
|:-:|:-:|
| Figure 6 | Figure 7 |

### 6.2.2 3D-printed PVC clamping hub

* Insert the #6-32 Heat Set Inserts **I2** into the 3D-printed clamping hub **S24** in the locations shown in Figure 8. The inserts on the side of the clamp should go in from the left side as shown in Figure 8.

| <img src="../../images/head/hub_upper.png" width="50%"> |
| :------------------------------------------------: |
|                      Figure 8                      |

## 6.3 Assemble and Mount the PVC clamping hub

### 6.3.1

Using washers **W1**, insert screws **B4** into clamp part of the clamping hub and screw part of the way into the brass inserts. Inserting these screws now simplifies inserting the pipe later.

| <img src="../../images/head/hub_upper_screws.png" width="50%"> |
| :------------------------------------------------: |
|                      Figure 9                      |

### 6.3.2

Using screws **B2**, attach the completed PVC clamping hub to the bottom of the 3D printed head.

| <img src="../../images/head/step-4a.png" width="80%"> | <img src="../../images/head/step-4b.png" width="80%">|
|:-:|:-:|
| Figure 10 | Figure 11 |

## 6.4 Attach PVC Pipe

Slot the PVC pipe **S29** into the clamping hub and then tighten down the screws on the clamping hub

| <img src="../../images/head/step-5a.png" width="50%"> |
|:-:|
| Figure 12 |

## 6.5 Attaching the LED Matrix

Attach the LED Matrix **E37** to the front of the head assembly using Screws **B14**.

| <img src="../../images/head/step-6a.png" width="70%"> | <img src="../../images/head/step-6b.png" width="100%">|
|:-:|:-:|
| Figure 13 | Figure 14 |

## 6.6 Mount the Arduino Stack

Take the Arduino Plate assembly and mount it using screws **B8** to the heat set inserts on the posts inside the head as shown in Figure 15

| <img src="../../images/head/step-7a.png" width="100%"> | <img src="../../images/head/step-7b.png" width="70%">|
|:-:|:-:|
| Figure 15 | Figure 16 |

## 6.7 Back Plate Attachment

Attach the Laser Cut Back Plate **S42** onto the back of the head assembly using screws **B2**.

| <img src="../../images/head/step-8a.png" width="100%"> | <img src="../../images/head/step-8b.png" width="100%">|
|:-:|:-:|
| Figure 17 | Figure 18 |

The head is now finished!
