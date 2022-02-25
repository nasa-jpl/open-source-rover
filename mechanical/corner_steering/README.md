# Corner Steering

The Corner Steering system gives attachment points for corner motors that we use to steer the rover.
As a rough estimate, these components will take around 5 hours to build and assemble.

<img src="../../images/corner_steering/CornerSt_Final.png" width="60%">

## 1. Features

* Absolute encoders track the position of corners without having to recalibrate every time the rover reboots
* Mechanically isolates the motor from moments/loads, keeping the motor gearbox more safe
* Custom 3D printed pieces help with calibration and provide a physical limit on corner movement

## 2. Information about module

## 2.1 Skills

* Band Saw/Dremel

## 2.2 Tools

### 2.2.1 Mandatory

* Allen Key set
* 3D Printer

## 2.3 Dependencies on Other Modules

* None

## 2.4 Mechanical Interface/Attachments to Rover

* Actobotics aluminum channels with channel connectors interface to Rocker-Bogie
* 1/4 Inch steel shaft to 1/4 Inch clamping hub on corner wheels

## 3. 3D printing

First, print the 3D printed encoder mounts. The STL files for this are located in the Corner Steering Assembly folder, under 3D Printed Parts. If you do not have a 3D printer there are many online 3D printing services available. One such service is [www.makexyz.com](https://www.makexyz.com).
To order these parts from Makexyz upload the STL file, select FDM under process, and PLA for Material, and then your desired color. **You will need a total of 4 of these encoder mount pieces**.

## 4. Mechanical/Structural Assembly

The Corner Steering assembly contains the steering motors which allow the rover to utilize Ackerman steering. One important aspect of this assembly is the use of the bearing blocks. These blocks help to take forces on the motor shaft against the gearbox and minimize lateral moments applied against the motor shaft. By using the bearing blocks, we help protect the motor and motor shaft from these forces that could otherwise damage the motor and its gearbox. The lever arm for the corner steering system is much farther away from the motor than at the drive motors, where we can get away with directly attaching the load path to the motor shaft.

| item                                | ref | qty | img                                                                  |     | item                            | ref | qty | img                                                                   |
| ----------------------------------- | --- | --- | -------------------------------------------------------------------- | --- | ------------------------------- | --- | --- | --------------------------------------------------------------------- |
| 3" channel                          | S2  | 4   | <image src="../../images/components/structural/S2.png" width="100">  |     | Motor (Corner)                  | E46 | 4   | <image src="../../images/components/electronics/E46.png" width="100"> |
| Motor mount                         | S9  | 4   | <image src="../../images/components/structural/S9.png" width="100">  |     | Absolute Encoder                | E47 | 4   | <image src="../../images/components/electronics/E47.png" width="100"> |
| 0.25" Pillow Block                  | S10 | 8   | <image src="../../images/components/structural/S10.png" width="100"> |     | #6-32 x 1/4" spacer             | T1  | 16  | <image src="../../images/components/standoffs/T1.png" width="100">    |
| 0.25" D-shaft                       | S15 | 4   | <image src="../../images/components/structural/S15.png" width="100"> |     | #6-32 x 1.25" Threaded Standoff | T9  | 16  | <image src="../../images/components/standoffs/T9.jpg" width="100">    |
| 0.25" to 6mm clamping shaft coupler | S38 | 4   | <image src="../../images/components/structural/S38.png" width="100"> |     | 6-32 x 1/4" Button Head Screw   | B3  | 16  | <image src="../../images/components/screws/B1.png" width="100">       |
| 1/8" Bore Pinion Gear               | S27 | 4   | <image src="../../images/components/structural/S27.png" width="100"> |     | 6-32 x 3/4" Button Head Screw   | B5  | 16  | <image src="../../images/components/screws/B5.png" width="100">       |
| 3D Printed Encoder Mount            | S31 | 4   | <image src="../../images/components/structural/S31.png" width="100"> |     | Allen Key Set                   | D2  |     | <image src="../../images/components/tools/D2.png" width="100">       |

### 4.1 Motor Mount

Begin by mounting the motor mount **S9** to the motor **E46** using the screws procured with the mount. Once completed,
insert the **B3** screws that will be used to connect the mount through the 3-inch channel. Due to the orientation of the motor inside of the 3-inch channel, adding these screws later is difficult. See Figure 1.

| <image src="../../images/corner_steering/CornerSt_Step_1.png" height="350"> | <image src="../../images/corner_steering/CornerSt_Step_2.png" height="350"> |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- |

Figure 1: Corner Steering Motor Mount attachment (left) and **B3** screw insertion (right)

### 4.2 3-inch Channel Attachment

Attach the motor and motor mount to the 3-inch channel using the threaded standoffs **T9** as seen in Figure 2.

<image src="../../images/corner_steering/CornerSt_Step_3.png" width="30%">

Figure 2: Slide the **B5** screws through the 3-inch channel and screw down the standoffs. Note that the motor is "inside" the channel.

### 4.3 Shaft Coupler/Standoffs Attachment

Using the shaft coupler **S38**, attach the motor shaft to the 0.25 inch D-shaft **S15** as in Figure 3.

<image src="../../images/corner_steering/CornerSt_Step_4.png" width="30%">

Figure 3: Shaft coupler installation

### 4.4 Encoder Mount

The size and tolerance of the holes will vary slightly based on different 3D printers and materials. Press the 0.25 inch spacers **T1** into the 3D printed encoder mount **S31**. If they do not fit easily, tapping them with a small hammer may help. If the holes are too small for that, you can drill out or file the holes slightly until the spacers fit snugly as show in Figure 4.

<image src="../../images/corner_steering/CornerSt_Step_5.png" width="30%">

Figure 4: Fitting the spacers into the 3D printed parts.

Next, attach the 0.25 inch pillow bearing blocks **S10** and encoder mount **S31** using the **B5** screws into the threaded standoffs **T3** as seen in Figure 5.

| <image src="../../images/corner_steering/CornerSt_Step_6.png" height="450"> | <image src="../../images/corner_steering/CornerSt_Step_6b.png" height="450"> |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- |

Figure 5: Encoder mount installation

### 4.5 Absolute Encoder

Attach the absolute encoder **S27** to the encoder shaft as shown in Figure 6. Don't worry about its exact position or rotation as we will adjust that later on.

<image src="../../images/corner_steering/CornerSt_Step_7.png" width="40%">

Figure 6: Encoder and gear installed

You should now have one finished corner steering assembly. Repeat the steps above to build the other 3 corner steering assemblies. **Note: Unlike other assemblies, this assembly isn't identical for all four. You will need to build two version (one for the left side of the rover, one for the right side) where the encoder mount is mirrored left to right. The absolute encoder should be on the 'outside' of the rover in all cases.** See Figure 7 for what it should look like.

<image src="../../images/corner_steering/CornerSt_Final.png" width="65%">

Figure 7: Mirrored steering assemblies.
