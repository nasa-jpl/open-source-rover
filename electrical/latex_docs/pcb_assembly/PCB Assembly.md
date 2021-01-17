# PCB Assembly

This document goes through the process of assembling and testing the custom
Printed Circuit Boards for the project. One thing you might notice is the boards
have reference designators on them that do not match the reference designators
used in the parts lists. The board components mapping between these can be found
below:

## Control Board References

| **Component**                     | **Parts list Ref** | **Schematic Ref** |
| --------------------------------- | ------------------ | ----------------- |
| Terminal block 6 pos top entry    | E4                 | J1-5              |
| Terminal block 6 pos side entry   | E3                 | J17-26            |
| Term block 2p side entry (5.08mm) | E12                | J13,15,16         |
| Connector Header pin 40P 40x1     | E15                | J8,9,11           |
| Connector Header pin 6P 6x1       | E14                | J10               |
| Connector Header socket 5P 5x1    | E6                 | RC1-5             |
| Connector Header socket 40P 2x20  | E13                | J6,7              |
| Connector Header socket 20 2x10   | E5                 | RC1-5             |
| Capacitor 100nF                   | E11                | C1-17             |
| Resistor 4.7K 1/4 Watt            | E7                 | R1                |
| Resistor 10K 1/4 Watt             | E8                 | R4,6,8,10         |
| Resistor 22K 1/4 Watt             | E9                 | R3,5,7,9          |
| Resistor 10K 1/2 Watt             | E10                | R2                |
| LM358 Op Amp                      | E25                | U1,2              |
| DIP IC socket 8 Pos               | E33                | U1,2              |
| Power Diode                       | E17                | D1                |
| 10A Fuse                          | E16                | F1                |
| USB A Connector                   | E34                | J12,14            |

## Arduino Board References

| **Component**                 | **Parts list Ref** | **Schematic Ref** |
| ----------------------------- | ------------------ | ----------------- |
| Term block 2P side entry      | E16                | J6                |
| Connector Header pin 40P 40x1 | E15                | J2,3,4            |
| Connector Header 16P 2x8      | E30                | J1                |
| Connector Header 6P 6x1       | E14                | J5                |

## Control Board Assembly

### Motor & RoboClaw Connectors

| **Item**              | **Ref** | **Qty** | **Image**                                                                 |
| --------------------- | ------- | ------- | ------------------------------------------------------------------------- |
| OSR Control Board     | E1      | 1       | ![OSR Control Board](./../../../images/components/electronics/E1.png)     |
| 6 Pos Side Term Block | E3      | 10      | ![6 Pos Side Term Block](./../../../images/components/electronics/E3.png) |
| 6 Pos Top Term Block  | E4      | 5       | ![6 Pos Top Term Block](./../../../images/components/electronics/E4.png)  |
| 10 Pos Header Socket  | E5      | 5       | ![10 Pos Header Socket](./../../../images/components/electronics/E5.png)  |
| 5 Pos Header Socket   | E6      | 5       | ![5 Pos Header Socket](./../../../images/components/electronics/E6.png)   |
| Soldering Iron        | N/A     |         |                                                                           |

1. Begin by soldering the 6 Position Side entry terminal blocks **E3** into the
   **top** side of the PCB, on the edge of the board as shown in the images
   below. These terminal blocks will run motor power, encoder power, and encoder
   signals between the motors/encoders and the RoboClaw motor controllers. The 6
   terminal blocks will each be labeled with schematic reference designators
   J17-J26 on the PCB. Be sure that the wire terminals face **OUTWARD** (away
   from the center of the board) on all of these connectors.

   ![Assembly Step 1](../../../images/pcb_assembly/assembly/assembly_1.png)

   ![Assembly Step 1](../../../images/pcb_assembly/assembly/top_term.png)

2. On the **bottom** of the board, solder the 6 Position top entry terminal
   blocks **E4**. They will be labeled with schematic reference designators
   J1-5. The orientation of the wire terminal face should be AWAY from the each
   of RoboClaw outlines (see images below). These terminals will run battery
   power and +/- motor signals to the RoboClaw motor controllers from the PCB.

   ![Assembly Step 2](../../../images/pcb_assembly/assembly/assembly_2.png)

   ![Assembly Step 2](../../../images/pcb_assembly/assembly/bottom_term.png)

3. On the **bottom** of the board, solder the 20-position female socket header
   connector **E5** and the 5-position female socket header connector **E6**.
   They will be labeled with reference designators RoboClaw 1-5. These are the
   digital signal pins for the RoboClaw motor controllers.

   ![Assembly Step 3](../../../images/pcb_assembly/assembly/assembly_3.png)

   ![Assembly Step 3](../../../images/pcb_assembly/assembly/rc_header.png)

### Resistors and Capacitors

| **Item**               | **Ref** | **Qty** | **Image**                                                                  |
| ---------------------- | ------- | ------- | -------------------------------------------------------------------------- |
| OSR Control Board      | E1      | 1       | ![OSR Control Board](./../../../images/components/electronics/E1.png)      |
| 4.7K 1/4 Watt Resistor | E7      | 1       | ![4.7K 1/4 Watt Resistor](./../../../images/components/electronics/E7.png) |
| 10K 1/4 Watt Resistor  | E8      | 4       | ![10K 1/4 Watt Resistor](./../../../images/components/electronics/E8.png)  |
| 22K 1/4 Watt Resistor  | E9      | 4       | ![22K 1/4 Watt Resistor](./../../../images/components/electronics/E9.png)  |
| 10K 1/2 Watt Resistor  | E10     | 1       | ![10K 1/2 Watt Resistor](./../../../images/components/electronics/E10.png) |
| 100nF Capacitor        | E11     | 17      | ![100nF Capacitor](./../../../images/components/electronics/E11.png)       |
| Soldering Iron         | N/A     |         |                                                                            |

1.  On the **top** of the board, solder the resistors and capacitors by
    comparing the reference designator on the board to the part number listed in
    the table below. Some of these capacitors are used to store energy for
    powering components (to help protect against voltage fluctuations). Others
    are used as noise filtering mechanisms on analog signals (particularly to
    smooth the encoder signals). The resistors are needed to control the voltage
    across various components.

| **Item**               | **Parts List Ref** | **Schematic/Board Ref** |
| ---------------------- | ------------------ | ----------------------- |
| 4.7K 1/4 Watt Resistor | E7                 | R1                      |
| 10K 1/4 Watt Resistor  | E8                 | R4,R6,R8,R10            |
| 22K 1/4 Watt Resistor  | E9                 | R3, R5, R7, R9          |
| 10K 1/2 Watt Resistor  | E10                | R2                      |
| 100nF Capacitor        | E11                | C1-17                   |
| Soldering Iron         | N/A                |                         |

![soldering](./../../../images/pcb_assembly/assembly/caps_res.png)

### Voltage Regulator connectors

| **Item**            | **Ref** | **Qty** | **Image**                                                               |
| ------------------- | ------- | ------- | ----------------------------------------------------------------------- |
| OSR Control Board   | E1      | 1       | ![OSR Control Board](./../../../images/components/electronics/E1.png)   |
| 5 Pos Header Socket | E6      | 2       | ![5 Pos Header Socket](./../../../images/components/electronics/E6.png) |
| Soldering Iron      | N/A     |         |                                                                         |

1.  On the **bottom** of the board, solder the 5-position female header sockets
    **E6**. The sockets will have schematic reference designators of J9 and J11.
    These connectors are what the 12V and 5V voltage regulators will slot into.

    ![Assembly Step 5](./../../../images/pcb_assembly/assembly/assembly_5.png)

    ![Assembly Step 5](./../../../images/pcb_assembly/assembly/regs_header.png)

### Power Connectors

| **Item**                        | **Ref** | **Qty** | **Image**                                                                            |
| ------------------------------- | ------- | ------- | ------------------------------------------------------------------------------------ |
| OSR Control Board               | E1      | 1       | ![OSR Control Board](./../../../images/components/electronics/E1.png)                |
| 2 Pos Side Terminal Block       | E12     | 3       | ![2 Pos Side Terminal Block](./../../../images/components/electronics/E12.png)       |
| 2 Position 2.5mm Terminal Block | E18     | 1       | ![2 Position 2.5mm Terminal Block](./../../../images/components/electronics/E18.png) |
| Soldering Iron                  | N/A     |         |                                                                                      |

1.  On the **top** of the board, solder the 2-position side entry terminal
    blocks **E13**. These will have schematic reference designators J14-16.
    Ensure that the wire terminals on these components face **OUTWARDS**. Also
    on the **top** of the board, solder the remaining 2-position 2.5mm terminal
    block **E18** (schematic reference designator J12).

    ![Assembly Step 6](./../../../images/pcb_assembly/assembly/assembly_6.png)

    ![Assembly Step 6](./../../../images/pcb_assembly/assembly/power_term.png)

### Op Amp DIP socket

| **Item**          | **Ref** | **Qty** | **Image**                                                             |
| ----------------- | ------- | ------- | --------------------------------------------------------------------- |
| OSR Control Board | E1      | 1       | ![OSR Control Board](./../../../images/components/electronics/E1.png) |
| 8 Pin DIP Socket  | E33     | 2       | ![8 Pin DIP Socket](./../../../images/components/electronics/E33.png) |
| Soldering Iron    | N/A     |         |                                                                       |

1.  On the **top** of the board, solder the 8 Pin DIP sockets **E33**. They will
    have schematic reference designators U1-2. Orientation of these sockets does
    not matter, but note that you WILL (later, in another document) need to plug
    in the Op-Amp chips themselves, and orientation of those chips is important
    when you eventually complete that step. Placing the notch toward the right
    as pictured (toward the resistors and capacitors) will align the socket's
    notch with the chip's.

    ![Assembly Step 7](./../../../images/pcb_assembly/assembly/assembly_7.png)

    ![Assembly Step 7](./../../../images/pcb_assembly/assembly/dip_socket.png)

### RPi GPIO Connector and misc headers

| **Item**                 | **Ref** | **Qty** | **Image**                                                                     |
| ------------------------ | ------- | ------- | ----------------------------------------------------------------------------- |
| OSR Control Board        | E1      | 1       | ![OSR Control Board](./../../../images/components/electronics/E1.png)         |
| 40 Pin Header Connector  | E13     | 2       | ![40 Pin Header Connector](./../../../images/components/electronics/E13.png)  |
| 6 Position JST Connector | E14     | 1       | ![6 Position JST Connector](./../../../images/components/electronics/E14.png) |
| 40 Position Header Pins  | E15     | 1       | ![40 Position Header Pins](./../../../images/components/electronics/E15.png)  |
| Soldering Iron           | N/A     |         |                                                                               |

1.  On the **top** of the board, solder the 40-position header connectors
    **E13**. The clocking notch on the headers should face **OUTWARD** as shown
    below. The schematic reference designators are J6 and J7.

    ![Assembly Step 8](./../../../images/pcb_assembly/assembly/assembly_8.png)

    ![Assembly Step 8](./../../../images/pcb_assembly/assembly/gpio.png)

2.  Take the 40 pin header pins **E15** and break off a 6-pin segment. On the
    **top** of the board, solder the 6-pin segment into schematic reference
    designator J8. Then, solder the JST connector **E14** into the J10 schematic
    reference designator. The opening in the pins on the JST connector should
    face **INWARD** as shown below.

    ![Assembly Step 9](./../../../images/pcb_assembly/assembly/assembly_9.png)

    ![Assembly Step 9](./../../../images/pcb_assembly/assembly/jst_top.png)

### Fuse and Diode

| **Item**          | **Ref** | **Qty** | **Image**                                                             |
| ----------------- | ------- | ------- | --------------------------------------------------------------------- |
| OSR Control Board | E1      | 1       | ![OSR Control Board](./../../../images/components/electronics/E1.png) |
| 10 Amp Fuse       | E16     | 1       | ![10 Amp Fuse](./../../../images/components/electronics/E16.png)      |
| Diode             | E17     | 1       | ![Diode](./../../../images/components/electronics/E17.png)            |
| Soldering Iron    | N/A     |         |                                                                       |

1.  Solder the fuse **E16** and diode **E17** onto the top of the board into
    schematic reference designators F1 (fuse) and D1 (diode). **Pay careful
    attention to the direction that the Diode is mounted on the board**, as it
    will only work in one direction!

![Fuse and Diode Soldering](./../../../images/pcb_assembly/assembly/fuse_diode.png)

![Fuse and Diode Soldering](./../../../images/pcb_assembly/assembly/fuse.png)

### USB connectors

| **Item**          | **Ref** | **Qty** | **Image**                                                             |
| ----------------- | ------- | ------- | --------------------------------------------------------------------- |
| OSR Control Board | E1      | 1       | ![OSR Control Board](./../../../images/components/electronics/E1.png) |
| USB Connector     | E34     | 1       | ![USB Connector](./../../../images/components/electronics/E34.png)    |
| Diode             | E17     | 1       | ![Diode](./../../../images/components/electronics/E17.png)            |
| Soldering Iron    | N/A     |         |                                                                       |

1.  On the **top** of the board, solder the two USB Connectors **E34**. They
    will have reference designators J12 and J14.

![Assembly Step 10](./../../../images/pcb_assembly/assembly/assembly_10.png)

![Assembly Step 10](./../../../images/pcb_assembly/assembly/usb.png)

### Standoffs

\|N\|Q\|Q\|I\|N\|Q\|Q\|I\| & & & & & & &\
\#6-32 x 3/4\" Threaded Standoff & T3 & 4 &
![image](../../../images/components/Standoffs/T3.png){width="2cm"
height="1.0cm"} & \#4-40 x 1/2 \" Threaded Standoff & T11 & 20 &
![image](../../../images/components/Standoffs/T11.png){width="2cm"
height="1.0cm"}\
\#2-56 x 1/2\" Threaded Standoff & T8 & 4 &
![image](../../../images/components/Standoffs/T8.png){width="2cm"
height="1.0cm"} & M2.5 x 10mm Threaded Standoff & T10 & 4 &
![image](../../../images/components/Standoffs/T11.png){width="2cm"
height="1.0cm"}\
\#6-32 3/8\" Button Head Screw & B2 & 8 &
![image](../../../images/components/Screws/B2.png){width="2cm"
height="1.0cm"} & \#4-40 1/4\" Button head Screw & B8 & 40 &
![image](../../../images/components/Screws/B8.png){width="2cm"
height="1.0cm"}\
\#2-56 1/4\" Button head Screw & B13 & 8 &
![image](../../../images/components/Screws/B13.png){width="2cm"
height="1.0cm"} & M2.5 x 6mm & B10 & 8 &
![image](../../../images/components/Screws/B10.png){width="2cm"
height="1.0cm"}\

1.  **Board mounting Standoffs:** On the **BOTTOM** side of the board,
    attach the four \#6-32 Standoffs **T4** on the outermost corner four
    mounting holes using screws **B2**. These standoffs will be used to
    attach the board to the robot chassis.

        ![Mounting

    Standoffs]("img/Pictures/Assembly/standoff_2".png){#standoffs_1
    width="\\textwidth"}

        ![Mounting

    Standoffs]("img/Pictures/Assembly/standoff_1".png){#standoffs_1
    width="\\textwidth"}

2.  **RoboClaw mounting Standoffs:** On the **BOTTOM** side of the
    board, attach the twenty \#4-40 Standoffs **T5** using screws **B8**
    as shown in Figure [23](#standoffs_2){reference-type="ref"
    reference="standoffs_2"}. You can identify the RoboClaw mounting
    holes as the ones that are inside the RoboClaw rectangles on the
    silk screen.

        ![RoboClaw Mounting

    Standoffs]("img/Pictures/Assembly/standoff_3".png){#standoffs_2
    width="60%"}

3.  **Voltage Regulator Standoffs:** On the **BOTTOM** side of the
    board, attach the four \#2-56 Standoffs **T6** using screws **B13**
    as shown in Figure [24](#standoffs_3){reference-type="ref"
    reference="standoffs_3"}.

        ![Voltage regulator Mounting

    Standoffs]("img/Pictures/Assembly/standoff_4".png){#standoffs_3
    width="60%"}

4.  **Raspberry Pi Standoffs:** On the **TOP** side of the board, attach
    the four M2.5 Standoffs **T7** using screws **B10** as shown in
    Figure [25](#standoffs_4){reference-type="ref"
    reference="standoffs_4"}.

        ![Raspberry Pi

    Standoffs]("img/Pictures/Assembly/standoff_5".png){#standoffs_4
    width="60%"}

        ![Standoffs Installed (Bottom

    View)]("img/Pictures/Assembly/standoffs".jpg){width="60%"}

## Arduino Shield Assembly

\|N\|Q\|Q\|I\|N\|Q\|Q\|I\| & & & & & & &\
Arduino Shield & E2 & 1 &
![image](../../../images/components/Electronics/E2.png){width="2cm"
height="1.0cm"} & 2 Position Term Block & E18 & 1 &
![image](../../../images/components/Electronics/E18.png){width="2cm"
height="1.0cm"}\
2x8 Shrouded Header pins & E19 & 1 &
![image](../../../images/components/Electronics/E19.png){width="2cm"
height="1.0cm"} & 1x6 JST header pins & E14 & 1 &
![image](../../../images/components/Electronics/E14.png){width="2cm"
height="1.0cm"}\
1x40 0.1 Pitch Header pins & E15 & 1 &
![image](../../../images/components/Electronics/E15.png){width="2cm"
height="1.0cm"} & & & &\

Now, we will assemble the Arduino shield that will sit in the rover's
head and control the face. We will start with the **TOP** side of the
Arduino board. The final product is shown in Figure
[26](#assembled_arduino_shield_top){reference-type="ref"
reference="assembled_arduino_shield_top"}.

![Assembled Arduino
Shield]("img/arduino_sheild_top".jpg){#assembled_arduino_shield_top
width="\\textwidth"}

1.  Begin by taking the 2-position terminal block **E18** and soldering
    it to top of the board at the J6 connector, such that the screw
    terminals face outwards as shown in Figure
    [26](#assembled_arduino_shield_top){reference-type="ref"
    reference="assembled_arduino_shield_top"}:

    ![Terminal Block assembly]("img/term_block".png){width="75%"}

2.  Solder the 1x6 JST connector **E14** onto the top of the board at
    the J5 connector such that the notch in the connector faces
    **OUTWARDS** as shown in Figure
    [26](#assembled_arduino_shield_top){reference-type="ref"
    reference="assembled_arduino_shield_top"}:

    ![JST assembly]("img/jst".png){width="75%"}

3.  Solder the 2x8 shrouded header pin connector **E19** to the top of
    the board at connector J1 such that the notch faces **OUTWARDS** as
    shown in Figure
    [26](#assembled_arduino_shield_top){reference-type="ref"
    reference="assembled_arduino_shield_top"}.

    ![Terminal Block assembly]("img/2x8_above".png){width="75%"}

4.  Solder the 0.1 pitch header pins **E15** to connectors J2-4 on the
    top side of the board:

    ![0.1 Pitch headers]("img/01_pitch_above".png){width="75%"}

    Flip the Arduino board over to the **BOTTOM** side where we will now
    install the remaining headers. The final product is shown in Figure
    [27](#assembled_arduino_shield_bottom){reference-type="ref"
    reference="assembled_arduino_shield_bottom"}.

5.  Solder the 0.1 pitch header pins **E15** to the bottom side of the
    board in the remaining hole sets.

        ![0.1 Pitch headers]("img/01_pitch_under".png){width="75%"}

        ![Assembled Arduino

    Shield]("img/arduino_sheild_bottom".jpg){#assembled_arduino_shield_bottom
    width="\\textwidth"}

# Component Integration and Testing

This next section will go over the process of integrating the
electronics onto the Control Board and the testing to verify that the
board and components are working as expected at each step. You should
perform this section with the board **outside** of the robot chassis in
case you need to replace components or fix any mistakes. It is important
to do the following steps **one at time** so you can verify that
electronics are working as intended. These tests will save you from
accidentally breaking one or more of your components if something else
is plugged in incorrectly or shorted.

## Testing the Control Board

### Power Distribution System

\|N\|Q\|Q\|I\|N\|Q\|Q\|I\| & & & & & & &\
OSR Control Board & E1 & 1 &
![image](../../../images/components/Electronics/E1.png){width="2cm"
height="1.0cm"} & Battery & E36 & 1 &
![image](../../../images/components/Electronics/E36.png){width="2cm"
height="1.0cm"}\
Tamiya Battery Connectors & E35 & 1 &
![image](../../../images/components/Electronics/E35.png){width="2cm"
height="1.0cm"} & Red 20 AWG & X1 & 1 &
![image](../../../images/components/Wiring/X1.png){width="2cm"
height="1.0cm"}\
Black 20 AWG & X2 & 1 &
![image](../../../images/components/Wiring/X2.png){width="2cm"
height="1.0cm"} & 5V Regulator & E22 & 1 &
![image](../../../images/components/Electronics/E22.png){width="2cm"
height="1.0cm"}\
12V Regulator & E23 & 1 &
![image](../../../images/components/Electronics/E23.png){width="2cm"
height="1.0cm"} & RoboClaw Motor Controller & E20 & 5 &
![image](../../../images/components/Electronics/E20.png){width="2cm"
height="1.0cm"}\
Op-Amp LM358P & E25 & 2 &
![image](../../../images/components/Electronics/E25.png){width="2cm"
height="1.0cm"} & Micro USB Cable & E28 & 1 &
![image](../../../images/components/Electronics/E28.png){width="2cm"
height="1.0cm"}\

1.  Begin by powering the board. For testing purposes, we will plug the
    battery directly into the board, bypassing the switch and volt
    meter. Thus, the connection we use for testing will look a little
    bit different than when you fully install the board into the rover.
    Insert the red wire on the Tamiya Battery Connector **E35** into the
    IN terminal on connector **J16 / POWER SWITCH**, and the black wire
    to the GND terminal on the connector **J15 / BATTERY IN**.

    ![Test Step 1]("img/Pictures/Testing/testing_1".png){#test_1
    width="\\textwidth"}

    ![Test Step 1]("img/Pictures/Testing/testing_2".png){#test_1
    width="\\textwidth"}

2.  Using a Digital Multimeter (DMM), probe the voltage across the test
    points T1 and T2. These will tell you the voltage at which the board
    power rails are, which should be the direct voltage of the battery.
    Verify that from T1 to T2 reads a positive number, and is between
    12V and 16.7V depending on the charge state of your battery.

    ![Test pads]("img/Pictures/Testing/testing_3".png){#test_pads_1
    width=".85\\textwidth"}

3.  Next, you will need to create jumper wires that will connect the
    RoboClaw motor controller power terminals to the RoboClaws. **Unplug
    the Tamiya battery connector before plugging in or unplugging ANY
    components, or before inserting components!!!** (in future steps, we
    will not explicitly say to unplug the battery, but **you should
    disconnect the battery at each step BEFORE inserting components or
    working on the board!**). Take the red and black 24 AWG wires **W1
    and W2** and cut 15 2-inch long segments of each color (you should
    have 15 red and 15 black pieces). Using wire strippers, strip the
    ends about 0.1 inches at each end. Insert these jumper wires into
    the terminal blocks on the RoboClaw Motor Controllers **E20** in the
    following way:

    ***

    M1A Red
    M1B Black
    \+ Red
    \- Black
    M2A Red
    M2B Black

    ***

    : Parts/Tools Necessary

4.  Start by inserting one of the RoboClaws into the slot on the bottom
    of the board labeled ROBOCLAW 2. Connect the wires directly across
    from RoboClaw motor terminal block to the terminal block on the
    control board as shown in Figure
    [32](#roboclaw_power_wires){reference-type="ref"
    reference="roboclaw_power_wires"}.

        ![RoboClaw power/motor

    wires]("img/Pictures/Assembly/rc_wires_2".jpg){#roboclaw_power_wires
    width="\\textwidth"}

        ![RoboClaw power/motor

    wires]("img/Pictures/Assembly/rc_wires".jpg){#roboclaw_power_wires
    width="\\textwidth"}

5.  Plug in the battery. An LED on the RoboClaw will turn on; verify
    that it is green. If the LED is red, it means there is an error.
    Error codes can be traced by looking at the RoboClaw user manual:

    -   <https://www.basicmicro.com/downloads>

6.  Repeat this process one RoboClaw at a time **following the order of
    2, 3, 4, 1, 5** (testing each RoboClaw after you plug it in) until
    all 5 RoboClaws have been plugged into the board.

7.  Take the two voltage regulators **E23 and 24** and solder their
    header pins to the bottom side of the board. Note that you will be
    soldering the back side of the pins on the top side of the board
    (the side with large capacitors on it).

8.  Insert the 5V regulator into the control board as shown in Figure
    [34](#test_5){reference-type="ref" reference="test_5"}. Power your
    board and probe between test points T4 and T2 on the top of the
    board (Figure [34](#test_5){reference-type="ref"
    reference="test_5"}) with your DMM and verify that it reads 5V. If
    it does not, make sure that the 5V regulator is slotted in properly
    and that your solder connections are solid.

        ![5V Regulator & Test

    Pads]("img/Pictures/Testing/testing_7".png){#test_5
    width="\\textwidth"}

        ![5V Regulator & Test

    Pads]("img/Pictures/Testing/testing_3".png){#test_5
    width="\\textwidth"}

9.  Insert the 12V regulator into the control board. Power your board
    and probe between test point T5 and T6 on the top of the board with
    your DMM and verify that it reads 12V. If it does not, make sure the
    12V regulator is slotted in properly and that your solder
    connections are solid.

        ![12V Regulator & Test

    Pads]("img/Pictures/Testing/testing_8".png){#test_6
    width="\\textwidth"}

        ![12V Regulator & Test

    Pads]("img/Pictures/Testing/test_pads_t5_t6".jpg){#test_6
    width="\\textwidth"}

        If all voltage test points read expected values and all the RoboClaw
        motor Controllers have green LEDs, the power system has been
        verified!

## Op-Amp Integration

Press the Op-Amp LM358P **E25** into the slots in the 8 Position DIP
socket. Take careful note of the direction of the chip in the DIP
socket, as the notch **MUST** face the correct direction.

![Op-amp
integration]("img/Pictures/Assembly/op_amp".png){width=".85\\textwidth"}

### Voltage Divider Verification

Now that the Op-amps are installed we want to check and make sure the
voltage dividers are working correctly. To do this, we will run power
from the motors directly back into the analog read signal, and see what
voltage it gets divided down to. On the motor connectors for each corner
motor (J23-26), use a jumper wire to connect the 5V signal line to the
ENx line. Then, use a DMM to measure the voltage between each of the
following test pads and GND and compare the values to the expected
voltage ranges in Table [1](#voltage_divider_table){reference-type="ref"
reference="voltage_divider_table"}:

::: {#voltage_divider_table}

---

OP amp Power T13 5
M7 Encoder signal divided T7 1.5 - 2.0
M7 Encoder raw T9 5
M7 Encoder after Op-amp T11 1.5 - 2.0
M8 Encoder signal divided T18 1.5 - 2.0
M8 Encoder raw T20 5
M8 Encoder after Op-amp T16 1.5 - 2.0
M9 Encoder signal divided T8 1.5 - 2.0
M9 Encoder raw T10 5
M9 Encoder after Op-amp T12 1.5 - 2.0
M10 Encoder signal divided T19 1.5 - 2.0
M10 Encoder raw T21 5
M10 Encoder after Op-amp T17 1.5 - 2.0

---

: Parts/Tools Necessary
:::

[\[voltage_divider_table\]]{#voltage_divider_table
label="voltage_divider_table"}

### RoboClaw Testing and Verification

In this section you will be going one by and and testing the operation
of the RoboClaw Motor controllers. You will be doing this by using the
GUI provided by the manufacturer of the motor controllers. The GUI can
be found at the following link, under general downloads, then BasicMicro
Motion Studio

-   <https://www.basicmicro.com/downloads>

You'll also need the "USB Roboclaw Windows Driver" from the RoboClaw
General Downloads section of the page. This should be installed before
you run the Motion Studio.

To use the GUI, insert a USB to micro USB cable from your computer to
the motor controller you are going to be testing.

You must now make a temporary connection between the motor controllers
and your motors. We found it easiest to test using a set of male-male
jumper wires connected between the motor terminal being tested and a
test motor.

### Drive Motor Blocks

Do each of the steps below for the terminal blocks labeled J17-22; these
terminal blocks correspond to the driving motors for the rover. **Make
sure that while you are plugging in connections, your board is powered
off!** The terminal blocks correspond to the motor controller outputs in
the following manner:

---

J17 RC1 M1
J18 RC1 M2
J19 RC2 M1
J20 RC2 M2
J21 RC3 M1
J22 RC3 M2

---

: Parts/Tools Necessary

1.  First, connect the wires in the following manner:

    ***

    Motor (+) M+ Red
    Motor (-) M- Black
    Ground GND Green
    +5V +5V Blue
    Encoder A ENA Yellow
    Encoder B ENB White

    ***

    : Parts/Tools Necessary

2.  Power on the board. After a minute or so, in the Basic Motion GUI
    you should see an available device appear. It might require an
    update to proceed; install the latest firmware update and then
    connect to the device.

3.  Click on the PWM tab. We will now send a PWM signal to the motor and
    test that connections are all made correctly to the motor and
    encoder.

4.  Slowly move the slide bar for the corresponding motor output channel
    (Either M1 or M2 from the above table) for the terminal you are
    testing. Verify that the motor spins (we will worry about direction
    later), and that the encoder value is also changing (we'll worry
    about it increasing or decreasing correctly later as well). Switch
    direction of the slide bar and verify that it spins the other
    direction and the encoder value does the opposite of previous as
    well. If these are not happening or are backwards, go back and check
    that you are using the correct motor controller, terminal block,
    etc. If all your connections are correct, you may have to test your
    solder contact between the components on the board itself.

5.  Repeat the steps above for each of the drive motor terminal blocks,
    labeled J17-22.

### Corner Motor Blocks

Do the following procedure for the terminal blocks labeled J23-26. These
correspond to the corner motors for the rover. Terminal blocks
correspond to the motor controller outputs in the following manner:

---

J23 RC4 M1
J24 RC4 M2
J25 RC5 M1
J26 RC5 M2

---

: Parts/Tools Necessary

1.  Connect the wires to the motor in the following manner

    ***

    Motor (+) M+ Red
    Motor (-) M- Black

    ***

    : Parts/Tools Necessary

2.  The main difference between the drive and corner motor systems is
    that for the corner system, we need to use the encoders. We want to
    test the voltage division circuit used on the control board; this
    divider which will expects a 0-5V signal from the absolute Hall
    effect encoder. To simulate the encoder, connect the +5V terminal on
    the motor terminal block straight into the ENA signal in the same
    terminal block.

3.  Connect to the motor controller in the Basic Motion GUI. Under the
    General settings tab (under Encoders), change the type of encoder
    from Quadrature to Absolute. You should see that the encoder values
    change to a number somewhere around 1600. As long as it is a fairly
    constant value and is in the range of 1400-2000 then everything is
    working. If the value varies wildly or is not in the 1400-2000
    range, recheck that the OP-amp is installed in the correct
    direction. If this number still isn't correct then make sure you
    correctly installed all the resistors/capacitors in the assembly
    steps.

4.  Under the PWM tab, move the slide bar and verify that the motor
    spins accordingly.

5.  Repeat this process for all the corner motor terminal blocks,
    labeled J23-26.

### Raspberry Pi Install

Next up is to verify that power to the Raspberry Pi is working. For
this, you'll need a working operating system installed on the SD card.
Take a moment now to follow to the Software Install steps to install the
rover software on the Raspberry Pi.

<https://github.com/nasa-jpl/open-source-rover/blob/master/Software/Software%20Steps.pdf>

\|N\|Q\|Q\|I\|N\|Q\|Q\|I\| & & & & & & &\
OSR Control Board & E1 & 1 &
![image](../../../images/components/Electronics/E1.png){width="2cm"
height="1.0cm"} & Raspberry Pi 3B & E21 & 1 &
![image](../../../images/components/Electronics/E21.png){width="2cm"
height="1.0cm"}\
Pin Ribbon Cable & E29 & 1 &
![image](../../../images/components/Electronics/E29.png){width="2cm"
height="1.0cm"} & USB to Micro USB Cable& E27 & 1 &
![image](../../../images/components/Electronics/E27.png){width="2cm"
height="1.0cm"}\

**ONLY PROCEED WITH THE FOLLOWING ONCE YOU HAVE SUCCESSFULLY FINISHED
THE INSTALLATION OF THE ROVER CODE ON YOUR RASPBERRY PI.**

1.  Attach the Raspberry Pi to the board on top of the standoffs you
    attached earlier, making sure that the USB ports face downward on
    the board as shown in Figure [38](#rpi_install){reference-type="ref"
    reference="rpi_install"}.

2.  Plug in the micro USB cable **E27** to the USB power port labeled
    J12 and to the **power port** of the Raspberry Pi (labelled 'PWR').
    Then, plug in the ribbon Cable **E29** into the Raspberry Pi GPIO
    header pins and connect the other end to the **J6** 40 pin GPIO
    connector.

    ![RPi Install]("img/Pictures/Assembly/rpi_power".jpg){#rpi_install
    width="\\textwidth"}

    ![RPi Install]("img/Pictures/Assembly/rpi_gpio".png){#rpi_install
    width="\\textwidth"}

## Arduino Shield Testing

\|N\|Q\|Q\|I\|N\|Q\|Q\|I\| & & & & & & &\
Arduino Shield & E2 & 1 &
![image](../../../images/components/Electronics/E2.png){width="2cm"
height="1.0cm"} & Arduino Uno & E24 & 1 &
![image](../../../images/components/Electronics/E24.png){width="2cm"
height="1.0cm"}\
1x6 JST Cable & E26 & 1 &
![image](../../../images/components/Electronics/E26.png){width="2cm"
height="1.0cm"} & 16x32 LED Matrix & E37 & 1 &
![image](../../../images/components/Electronics/E37.png){width="2cm"
height="1.0cm"}\

Note: Testing the arduino board is dependent on finishing the control
board and having it tested fully. Do not proceed until you have
successfully tested your main control board.

Slot the Arduino Uno onto the bottom of the Arduino shield, matching the
footprints on the board.

![Arduino Shield
Mounted]("img/Pictures/Assembly/arduino_mounted".jpg){width=".85\\textwidth"}

1.  Plug in the 1x6 JST cable **E26** into the Arduino shield and to the
    Control board. This cable will run 12V, 5V, GND, and two serial
    communication lines from the main rover to the Arduino shield which
    runs the screen in the head. This step relies on successful tests of
    the 5V and 12V regulators on the control board and verifying that
    they work correctly. If you have not tested the main board
    successfully, you may damage the Arduino.

2.  Using a Digital Multimeter, probe the following **Arduino shield
    test pads** and verify their voltages:

    -   TP1 to TP6 should read +12V. This voltage powers the Arduino Uno
        board

    -   TP5 to TP6 should read +5V. This voltage powers the LED Matrix
        and runs the LEDs on it

    -   TP4 to TP2 should read +5V. This is the 5V converter on the
        Arduino board

    -   TP3 to TP2 should read +3.3V. This is the 3.3V converter on the
        Arduino board

If all the above test points read the correct voltages, then the Arduino
Shield board is working correctly! You are now ready to finish the
Electrical Assembly of the rover!
