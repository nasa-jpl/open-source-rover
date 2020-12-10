# Corner Steering

The Corner Steering system gives attachment points for corner motors that we use to steer the rover.

<img src="/images/corner_steering/CornerSt_Final.png" width="50%">

## Features

* Absolute encoders track the position of corners without having to recalibrate every time the rover reboots
* Mechanically isolates the motor from moments/loads, keeping the motor gearbox more safe
* Custom 3D printed pieces help with calibration and provide a physical limit on corner movement

## Information about module

| Author/Creator            | JPL    |
| ------------------------- | ------ |
| Cost without 3D printer   | 421.57 |
| Cost with 3D printer      | 409.97 |
| Date Added                | 4/11   |
| Group/Organization/School | JPL    |
| Time to build             | 4 hrs  |

## Skills

* Band Saw/Dremel

## Tools

### Mandatory

* Allen Key set
* 3D Printer

## Dependencies on Other Modules

* None

## Mechanical Interface/Attachments to Rover

* Actobotics aluminum channels with channel connectors interface to Rocker-Bogie
* 1/4 Inch steel shaft to 1/4 Inch clamping hub on corner wheels

# Instructions

## 3D printing

First, print the 3D printed encoder mounts. The STL files for this are located in the Corner Steering Assembly folder, under 3D Printed Parts. If you do not have a 3D printer there are many online 3D printing services available. One such service is [www.makexyz.com](https://www.makexyz.com).
To order these parts from Makexyz upload the STL file, select FDM under process, and PLA for Material, and then your desired color. **You will need a total of 4 of these encoder mount pieces**.

## Mechanical/Structural Assembly

The Corner Steering assembly contains the steering motors which allow the rover to utilize Ackerman steering. One important aspect of this assembly is the use of the bearing blocks. These blocks help to take forces on the motor shaft against the gearbox and minimize lateral moments applied against the motor shaft. By using the bearing blocks, we help protect the motor and motor shaft from these forces that could otherwise damage the motor and its gearbox. The lever arm for the corner steering system is much farther away from the motor than at the drive motors, where we can get away with directly attaching the load path to the motor shaft.

| item                                | ref | qty | img                                                                  |     | item                            | ref | qty | img                                                                   |
| ----------------------------------- | --- | --- | -------------------------------------------------------------------- | --- | ------------------------------- | --- | --- | --------------------------------------------------------------------- |
| 3" channel                          | S2  | 4   | <image src="../../images/components/structural/S2.jpg" width="100">  |     | Motor (Corner)                  | E46 | 4   | <image src="../../images/components/electronics/E46.png" width="100"> |
| Motor mount                         | S9  | 4   | <image src="../../images/components/structural/S9.jpg" width="100">  |     | Absolute Encoder                | E47 | 4   | <image src="../../images/components/electronics/E47.png" width="100"> |
| 0.25" Pillow Block                  | S10 | 8   | <image src="../../images/components/structural/S10.jpg" width="100"> |     | #6-32 x 1/4" spacer             | T1  | 16  | <image src="../../images/components/standoffs/T1.png" width="100">    |
| 0.25" D-shaft                       | S15 | 4   | <image src="../../images/components/structural/S15.jpg" width="100"> |     | #6-32 x 1.25" Threaded Standoff | T9  | 16  | <image src="../../images/components/standoffs/T9.jpg" width="100">    |
| 0.25" to 6mm clamping shaft coupler | S38 | 4   | <image src="../../images/components/structural/S38.jpg" width="100"> |     | 6-32 x 1/4" Button Head Screw   | B3  | 16  | <image src="../../images/components/screws/B1.png" width="100">       |
| 1/8" Bore Pinion Gear               | S27 | 4   | <image src="../../images/components/structural/S27.jpg" width="100"> |     | 6-32 x 3/4" Button Head Screw   | B5  | 16  | <image src="../../images/components/screws/B5.png" width="100">       |
| 3D Printed Encoder Mount            | S31 | 4   | <image src="../../images/components/structural/S31.png" width="100"> |     | Allen Key Set                   | D2  |     | <image src="../../images/components/tools/D2.jpeg" width="100">       |

### Motor Mount

Begin by mounting the motor mount **S9** to the motor **E46** using the screws procured with the mount. Once completed,
insert the **B3** screws that will be used to connect the mount through the 3-inch channel. Due to the orientation of the motor inside of the 3-inch channel, adding these screws later is difficult. See Figure 1.

    | <img src="latex_docs/Pictures/CornerSt%20Step%201.PNG" height="250"> | <img src="latex_docs/Pictures/CornerSt%20Step%202.PNG" height="250"> |
    | ----------------------------------------------------------------- | ----------------------------------------------------------------- |

    Figure 1: Corner Steering Motor Mount attachment (left) and **B3** screw insertion (right)


