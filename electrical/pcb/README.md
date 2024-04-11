# Control Board Assembly, v2.0.3

The overall Control Board consists of a Motor Board with a Brain Board mounted on top. These are the instructions to assemble these two separate pcbs and mount them together as the unified control board.

<img src="../../images/pcb_assembly/v2_0_1/assembly/assembled/IMG_0848.jpeg" width="50%">

This document goes through the process of assembling and testing the custom
Printed Circuit Boards for the project. 

Note that the images in these instructions are taken from an assembly of the v2.0.1 board. There are minimal differences between v2.0.1 and v2.0.3 - such that it wasn't worth doing another photoshoot for v2.0.3. Make sure to follow the written instructions when in doubt.

## 1. Part References

Check out the [BOM documents](control_board/BOM/v2.0.3)

All parts referenced in these instructions use the schematic "reference designator" from the silk screen on the pcbs. E.g. "C1", "J2", and "R28". You should look up the details of these parts within the [v2.0.3 BOM the board ref parts spreadsheet](control_board/BOM/v2.0.3/bom_v2.0.3_board_ref_parts.csv), using the "Reference" column. There are additional parts in the [v2.0.3 BOM other parts spreadsheet](control_board/BOM/v2.0.3/bom_v2.0.3_other_parts.csv), which do not correspond to reference designators on the board. These spreadsheets also have unique IDs (UIDs) that we use for ordering from Digikey + elsewhere, and link to details of the parts on the relevant websites.

Generally these instructions have enough images to clearly show and identify the parts, but whenever in doubt the best thing to do is to look up the reference in the BOM spreadsheet.

## 2. Schematic and Layout Documentation

There's documentation of both the schematics (how all the electrical parts logically connect to one another) and the layout (how the parts are physically placed on the boards) in the [control_board/documentation/v2.0.3](control_board/documentation/v2.0.3) directory

## 3. Motor Board Assembly

| <img src="../../images/pcb_assembly/v2_0_1/assembly/IMG_1493.jpeg" height="300">  <img src="../../images/pcb_assembly/v2_0_1/assembly/IMG_1494.jpeg" height="300"> |
|:-:|
| Figure 3.0: front (left) and back (right) of motor board |


### 3.1 Attach standoffs

Attach standoffs to the bare board, for ease of future soldering work.

| <img src="../../images/pcb_assembly/v2_0_1/assembly/PXL_20230413_052035126.jpg" height="300"> <img src="../../images/pcb_assembly/v2_0_1/assembly/PXL_20230413_052039855.jpg" height="300"> |
|:-:|
| Figure 3.1: Standoffs attached |

### 3.2 Solder on power headers and fuse holder

Solder on the XT30 headers for footprints J1, J3, J4, and J5, as well as the fuse holder F1.

Make sure to choose the proper XT30 header for the corresponding J footprint:
- J1: male
- J3: female
- J4: female
- J5: male
See the images to clarify which one is which.

The pins on the XT30 will be slightly smaller than the holes on the board - this is fine, just make sure to use a lot of solder to connect them so there's a good mechanical connection. The soldering should be fairly straightforward once you start. 

| <img src="../../images/pcb_assembly/v2_0_1/assembly/power_headers.png" height="300"> |
|:-:|
| Figure 3.2: Power headers + fuse holder footprints |

| <img src="../../images/pcb_assembly/v2_0_1/assembly/power_headers_attached.png" height="300"> |
|:-:|
| Figure 3.3: Power headers + fuse holder attached |

| <img src="../../images/pcb_assembly/v2_0_1/assembly/PXL_20230413_052422615.jpg" height="300"> |
|:-:|
| Figure 3.4: Power headers and fuse holder attached, zoomed out |

| <img src="../../images/pcb_assembly/v2_0_1/assembly/PXL_20230413_054441445.jpg" height="300"> |
|:-:|
| Figure 3.5: Close up view of soldered footprints for headers |


### 3.3 Solder resistor R1 and power diode D1

Make sure to attach D1 in the correct orientation!

| <img src="../../images/pcb_assembly/v2_0_1/assembly/PXL_20230413_054943541.jpg" height="300"> |
|:-:|
| Figure 3.6: Resistor R1 |

| <img src="../../images/pcb_assembly/v2_0_1/assembly/PXL_20230413_055134872.MP.jpg" height="300"> |
|:-:|
| Figure 3.7: Through hole leads for R1 and D1 |

| <img src="../../images/pcb_assembly/v2_0_1/assembly/PXL_20230413_055558226.jpg" height="300"> |
|:-:|
| Figure 3.8: R1 and D1 attached |


### 3.4 Test the power connectors

Insert a fuse (part# B1) into the fuse holder (as shown in Figure 3.8 below)

Using the appropriate matching XT30 connectors, connect the power headers to a power supply (or your battery), the external switch (part# B9), and the multimeter (part# B10)

Use this diagram to determine to wire things together:

TODO: add diagram of board / power supply / external switch / multimeter wiring

When testing with a power supply, provide 14.8V DC and current limit to 1.0A.

After testing, make sure to disconnect the power supply.

| <img src="../../images/pcb_assembly/v2_0_1/assembly/PXL_20230413_061454863.jpg" height="300"> |
|:-:|
| Figure 3.6: Wires connected to power headers |

| <img src="../../images/pcb_assembly/v2_0_1/assembly/PXL_20230416_234516660.jpg" height="300"> |
|:-:|
| Figure 3.7: Power supply providing 14.8V DC and current limited to 1.0A |

Use a multimeter to test the voltage between test points T4 ("swt_out") and T2 ("Batt-"). This should read the same value as input from the power supply/battery (14.8V)

| <img src="../../images/pcb_assembly/v2_0_1/assembly/PXL_20230416_234547696.jpg" height="300"> |
|:-:|
| Figure 3.8: Testing the voltage between T4 and T2 |

Also check the voltage shown by the multimeter. This should show the same voltage as well.

| <img src="../../images/pcb_assembly/v2_0_1/assembly/PXL_20230416_234553055.jpg" height="300"> |
|:-:|
| Figure 3.9: Testing the power input to the multimeter |


### 3.5 Install the INA 260

:exclamation: Before continuing, make sure to disconnect the power supply from the previous step! You should not have the board powered on while installing components. :exclamation:

The INA260 daughter board is used for digital sensing of voltage and current, measurements that the raspberry pi can query over an I2C connection. Unfortunately, it can be hard to find these INA260 parts nowadays - if you can't find one you will need to bypass U1, because it is in the path of the battery positive side supply.

**Option 1: If you have an INA260 daughter board, you should install that in footprint U1.**

TODO: update parts here

1. Attach an 8x1 female header to the 8 pins on the bottom side of the INA260 / U1 footprint, as seen in Figure 3.10
2. Attach a 3x1 female header (cut from a longer Nx1 header) to the two pins on the top side of the INA260 / U1 footprint, as seen in Figure 3.10

| <img src="../../images/pcb_assembly/v2_0_1/assembly/ina260_headers.png" height="300"> |
|:-:|
| Figure 3.10: INA260 headers installed |

| <img src="../../images/pcb_assembly/v2_0_1/assembly/PXL_20230418_042446722.jpg" height="300"> |
|:-:|
| Figure 3.11: INA260 installed |

**Option 2*: If you don't have one, you will need to bypass U1**

Install a 0 ohm resistor in footprint R30, on the top side of the board

### 3.6 Test INA260 installation

TODO

### 3.7 Install 5V bus regulator

This is the power regulator for the 5V line, which powers all the motors.

Install 3 female headers for the daughter board, into U4. You will need a two 4x1's, and a 5x1.

| <img src="../../images/pcb_assembly/v2_0_1/assembly/PXL_20230418_044902463.MP.jpg" height="300"> |
|:-:|
| Figure 3.12: 5V regulator headers installed |

| <img src="../../images/pcb_assembly/v2_0_1/assembly/PXL_20230418_044810169.jpg" height="300"> |
|:-:|
| Figure 3.13: 5V regulator installed |

### 3.8 Install 12V bus regulator U3

Solder a 5x1 female header to the U3 footprint, and attach an appropriately sized standoff

TODO: specify standoff

| <img src="../../images/pcb_assembly/v2_0_1/assembly/PXL_20230418_050503408.jpg" height="300"> |
|:-:|
| Figure 3.14: U3 footprint |

| <img src="../../images/pcb_assembly/v2_0_1/assembly/PXL_20230418_051040927.jpg" height="300"> |
|:-:|
| Figure 3.15: 12v regulator installed |

| <img src="../../images/pcb_assembly/v2_0_1/assembly/PXL_20230418_051046001.MP.jpg" height="300"> |
|:-:|
| Figure 3.16: 12v regulator installed (2) |

### 3.9 Install 3.3V bus regulator U7 and decoupling capacitor C7

The 3.3V bus regulator is a linear voltage regulator and is physically much smaller - it comes in the same packaging as diode D1. Make sure to install the regulator in the correct direction as shown in figure 3.17.

Capacitor C7 is the decoupling capacitor for the 3.3v bus. Make sure to install C7 in the proper direction, as shown in figure 3.19. One side of the capacitor has negative polarity indicators on it, that should be installed opposite the "+" sign on the footprint.

| <img src="../../images/pcb_assembly/v2_0_1/assembly/u7_bare.png" height="300"> |
|:-:|
| Figure 3.17: U7 footprint |

| <img src="../../images/pcb_assembly/v2_0_1/assembly/u7_installed.png" height="300"> |
|:-:|
| Figure 3.18: 3.3v regulator installed in U7 |

| <img src="../../images/pcb_assembly/v2_0_1/assembly/PXL_20230418_051556901.MP.jpg" height="300"> |
|:-:|
| Figure 3.19: Capacitor C7 installed |

### 3.10 Install resistors R15, R24, and BJT transistor Q1

These form the circuit for the alert signal LED logic.

| <img src="../../images/pcb_assembly/v2_0_1/assembly/PXL_20230418_051556901.MP.jpg" height="300"> |
|:-:|
| Figure 3.20: R15, R24, and Q1 footprints |

| <img src="../../images/pcb_assembly/v2_0_1/assembly/alert_led_components.png" height="300"> |
|:-:|
| Figure 3.21: R15, R24, and Q1 installed |


### 3.11 Test all voltage lines

Test all the power buses/voltage lines using the test points on the far left side of the top side of the board (T7 through T12).

The silk screen right of each hole indicates what voltage each test point should be at.

- First, connect the power supply to your board and provide 14.8v (see step 3.4)
- then, use the multimeter to test the voltage at each test point

| <img src="../../images/pcb_assembly/v2_0_1/assembly/PXL_20230424_003614642.jpg" height="300"> |
|:-:|
| Figure 3.22: testing the 3.3v bus|

| <img src="../../images/pcb_assembly/v2_0_1/assembly/PXL_20230424_003617280.jpg" height="300"> |
|:-:|
| Figure 3.23: testing the 5v bus |

| <img src="../../images/pcb_assembly/v2_0_1/assembly/PXL_20230424_003620439.jpg" height="300"> |
|:-:|
| Figure 3.24: testing the 12v bus |

| <img src="../../images/pcb_assembly/v2_0_1/assembly/PXL_20230424_003626769.jpg" height="300"> |
|:-:|
| Figure 3.25: testing the Batt+ bus (positive lead from the battery) |

| <img src="../../images/pcb_assembly/v2_0_1/assembly/PXL_20230424_003630014.jpg" height="300"> |
|:-:|
| Figure 3.26: testing the PWR bus (main board power plane, after battery protection circuitry ) |


### 3.12 Install PCA9685 daughter board in U2 footprint and capacitor C3

:exclamation: Before continuing, make sure to disconnect the power supply from the previous step! You should not have the board powered on while installing components. :exclamation:

The PCA9685 is a PWM signal source, which we use as our corner motor controller.

First you will need to install female headers on the motor board, for the PCA9685 daughter board to mate with. You'll need: 
- 6x1 female header
- 3x 2x4 female headers

You **may** use larger headers to fill all the holes in the U2 footprint, but it's not really necessary for the normal working configuration of the motor board. Attach these headers to the appropriate spots in the U2 footprint, as shown in figure 3.22.

You will need to attach male headers to the PCA9685 daughter board, as shown in figure 3.23. Also, 5v power is provided to the PCA9685 through the two holes at the top of the U2 header. To connect these, I soldered 2 small wire leads on the PCA9685 daughter board, and then soldered them on to the motor board once I installed the PCA9685.

TODO: update instructions with alternative to janky wire leads for PCA9685

TODO: figure 3.28 is not very good

| <img src="../../images/pcb_assembly/v2_0_1/assembly/PXL_20230418_053133239.jpg" height="300"> |
|:-:|
| Figure 3.27: U2 with female headers installed |

| <img src="../../images/pcb_assembly/v2_0_1/assembly/PXL_20230418_054413269.MP.jpg" height="300"> |
|:-:|
| Figure 3.28: Male headers soldered onto PCA9685 daughter board |

| <img src="../../images/pcb_assembly/v2_0_1/assembly/PXL_20230424_003801047.jpg" height="300"> |
|:-:|
| Figure 3.29: PCA9685 installed in motor board |

| <img src="../../images/pcb_assembly/v2_0_1/assembly/c3_installed.png" height="300"> |
|:-:|
| Figure 3.29.1 : C3 installed |


### 3.13 Install resistor R5 and capacitor C1

These are aids for the INA260, and can be left out if the IN260 is not used

| <img src="../../images/pcb_assembly/v2_0_1/assembly/r5_c1.png" height="300"> |
|:-:|
| Figure 3.30: PCA9685 installed in motor board |

### 3.13 Install J21, J20, and resistors R6,R7,R8,R9,R10

J21 is the interconnect header for the brain board, and J20 is a signal test header for the motor board

Use an 8x1 female header for J20.

| <img src="../../images/pcb_assembly/v2_0_1/assembly/j20_j21_r6_r10.png" height="300"> |
|:-:|
| Figure 3.31: Components installed, as viewed from top of board |

### 3.14 Install resistors R2,R3,R4

| <img src="../../images/pcb_assembly/v2_0_1/assembly/r2_r3_r4.png" height="300"> |
|:-:|
| Figure 3.32: Components installed, as viewed from top of board |

### 3.15 Install Roboclaw standoffs, headers, and capacitors

Now we'll add the parts for roboclaw footprints RC1, RC2, and RC3.

First, install standoffs for the 3 RC footprints, as shown an figure 3.33 and 3.34. 

Next, solder in the two female headers for each RC footprint. You'll need a 2x10 and a 5x1 for each RC. These should be soldered into the holes on the side of each RC footprint

Finally, install the following capacitors on the opposite board side from each RC footprint:
- opposite RC1: capacitors C13,C15,C17,C20 (figure 3.34)
- opposite RC2: capacitors C2,C4,C9,C10 (figure 3.33)
- opposite RC3: capacitors C14,C16,C18,C21 (figure 3.34)

| <img src="../../images/pcb_assembly/v2_0_1/assembly/rc1_pop.png" height="300"> |
|:-:|
| Figure 3.33: C2,C4,C9,C10 installed|

| <img src="../../images/pcb_assembly/v2_0_1/assembly/PXL_20230425_054908018.jpg" height="300"> |
|:-:|
| Figure 3.34: C13,C15,C17,C20 and C14,C16,C18,C21 installed|

### 3.16 Install motor supply headers J16,J17,J18

Figure 3.35 shows how these should be installed. J16 on the top of the board is installed in the same way.

Make sure to orient the connector in the proper direction, as indicated in the images. 

| <img src="../../images/pcb_assembly/v2_0_1/assembly/motor_supply_headers.png" height="300"> |
|:-:|
| Figure 3.35: J17 and J18 installed, on bottom of board|

### 3.17 Install 3x Roboclaw boards in footprints RC1, RC2, RC3

First, wire the 6pos terminal block headers to the roboclaw boards, as indicated in figure 3.36.

TODO: update the below and make sure it's correct

For v2.0.3, you should wire the pins in the J16,J17,J18 headers directly to the pins on the corresponding side of the roboclaw - it is a direct 1-to-1 mapping all the way down, with no wires crossed.

Do this for all three roboclaws. 

| <img src="../../images/pcb_assembly/v2_0_1/assembly/roboclaw_wired_1.png" height="300"> <img src="../../images/pcb_assembly/v2_0_1/assembly/roboclaw_wired_2.png" height="300">  |
|:-:|
| Figure 3.36: Wiring up the roboclaws |

Then install the 3 roboclaws in the RC1, RC2, and RC3 footprints. It doesn't matter which roboclaw goes in which footprint - we will later set unique addresses in software for each of them to communicate over the serial bus.

| <img src="../../images/pcb_assembly/v2_0_1/assembly/roboclaws_installed.png" height="300"> |
|:-:|
| Figure 3.37: Installing the roboclaw boards |

### 3.18 Install capacitors C5,C6

| <img src="../../images/pcb_assembly/v2_0_1/assembly/PXL_20230426_055549256.MP.jpg" height="300"> |
|:-:|
| Figure 3.38: Installing capacitors C5, C6|

### 3.19 Install corner servo header J19, and capacitor C19

Make sure to install C19 in the proper direction, as shown in figure 3.39. One side of the capacitor has negative polarity indicators on it, that should be installed opposite the "+" sign on the footprint.

| <img src="../../images/pcb_assembly/v2_0_1/assembly/j19_c19.png" height="300"> |
|:-:|
| Figure 3.39: J19 and C19 installed (top of photo) |

### 3.20 Install LED array U5

Make sure to align the slightly "chipped"/beveled corner of the LED array with the beveled corner of the U5 footprint, to have proper LED polarity

| <img src="../../images/pcb_assembly/v2_0_1/assembly/u5_installed.png" height="300"> |
|:-:|
| Figure 3.40: LED array U5 installed |

### 3.21 Install drive motor headers J8,J9,J10,J11,J13,J14

| <img src="../../images/pcb_assembly/v2_0_1/assembly/IMG_0827.jpeg" height="300"> |
|:-:|
| Figure 3.41: Drive motor headers installed |



## 4. Brain Board Assembly

| <img src="../../images/pcb_assembly/v2_0_1/assembly/IMG_1491.jpeg" height="300">  <img src="../../images/pcb_assembly/v2_0_1/assembly/IMG_1492.jpeg" height="300"> |
|:-:|
| Figure 4.0: front (left) and back (right) of brain board |


### 4.1 Install resistors

Install 3 sets of resistors:
- R11
- R25,R26,R27,R28,R29 
- R31,R32,R33,R34,R35

| <img src="../../images/pcb_assembly/v2_0_1/assembly/IMG_0834.jpeg" height="300"> |
|:-:|
| Figure 4.1: Resistors installed |

### 4.2 Install switch SW1

Make sure to install the switch in the correct direction to match the footprint.

| <img src="../../images/pcb_assembly/v2_0_1/assembly/IMG_0832.jpeg" height="300"> |
|:-:|
| Figure 4.2: Switch SW1 installed |

 ### 4.3 Install LED array U6 and various headers on top of board

Install these components:
- U6 LED array
- J22,J23 raspberry pi ribbon cable headers
- J27,J28,J29 2x1 female headers - "other breakouts"
- J25 3x4 male headers - "i2c breakout"
- J24 3x4 male header (white color) - "arduino comm"
- J30 8x1 male header - "signal test header"

Make sure to align the slightly "chipped"/beveled corner of the LED array with the beveled corner of the U6 footprint, to have proper LED polarity

Make sure to match the gaps on the sides of the J22 and J23 headers with the gaps indicated in the silk screen for these footprints.

Make sure to install J24 with the gap facing to the right of the top side of the board (as shown in figure 4.3)

| <img src="../../images/pcb_assembly/v2_0_1/assembly/IMG_0842.jpeg" height="300"> |
|:-:|
| Figure 4.3: U6 and other headers installed  |


### 4.4 Install J26 header and capacitor C32 on back of board

Make sure to match the gaps on the side of the J26 header with the gap indicated in the silk screen for the footprint 

Ignore the resistors and figure 4.4 for the moment

| <img src="../../images/pcb_assembly/v2_0_1/assembly/IMG_0839.jpeg" height="300"> |
|:-:|
| Figure 4.4: J26 (top) and C32 installed on back side of board |


### 4.5 Install ESTOP and Serial TXD/RXD LED logic circuit components

Here we install all the components used for: 
1. the E_STOP,E_STOP2,E_STOP3 logic signals and (BJT transistors Q4,Q5,Q6)
2. the LED indicators for E_STOP,E_STOP2,E_STOP3 states (BJTs Q4,Q5,Q6 again)
3. The LED indicators for serial TXD/RXD activity (BJTs Q2,Q3)

Install all of these as indicated in figure 4.5. Note that polarity/installation direction matters for both the BJTs and the diodes (D8,D9). Make sure to match these with the image correctly! (note the black band on one side of the diodes faces to the right in figure 4.5)

| <img src="../../images/pcb_assembly/v2_0_1/assembly/IMG_0841.jpeg" height="300"> |
|:-:|
| Figure 4.5: ESTOP and Serial TXD/RXD LED logic components installed  |



### 4.6 Mount the Raspberry Pi board

Using appropriate standoffs, attach the raspberry pi to the top of the brain board, as shown in figure 4.6

TODO: identify the parts for the standoffs

| <img src="../../images/pcb_assembly/v2_0_1/assembly/IMG_0844.jpeg" height="300"> <img src="../../images/pcb_assembly/v2_0_1/assembly/IMG_0845.jpeg" height="300"> |
|:-:|
| Figure 4.6: RPi mounted on the brain board  |


## 5. Motor Board and Brain Board Mating

Using appropriate standoffs, attach the brain board to the top of the motor board, as shown in figure 5.0

TODO: identify the parts for the standoffs

| <img src="../../images/pcb_assembly/v2_0_1/assembly/IMG_0847.jpeg" height="300"> <img src="../../images/pcb_assembly/v2_0_1/assembly/IMG_0848.jpeg" height="300"> |
|:-:|
| Figure 4.7: Mating the brain board to the motor board  |

And now you're done with the assembly! Finally, we'll move on to testing and configuration.

| <img src="../../images/pcb_assembly/v2_0_1/assembly/IMG_0849.jpeg" height="300"> <img src="../../images/pcb_assembly/v2_0_1/assembly/IMG_0850.jpeg" height="300"> <img src="../../images/pcb_assembly/v2_0_1/assembly/IMG_0851.jpeg" height="300"> <img src="../../images/pcb_assembly/v2_0_1/assembly/IMG_0852.jpeg" height="300">|
|:-:|
| Figure 4.8: Completed control board  |

## 6. Testing the PCB and wiring for the drive motors

Before we insert the wiring and PCBs into the mechanical assemblies, we'll test and configure the drive motors, wiring, and PCB. This allows us to fix these critical parts if something doesn't look right and allows us to move to running the software as soon as the rover is assembled.

For this you will need:

- wiring you made earlier in [wiring readme](../wiring/README.md)
- 6 drive motors
- completed PCBs
- a power source: a benchtop power supply or a charged battery

Secure the PCB assembly so it doesn't fall or move while it's on. You can attach it to the bottom body plate already. Avoid contact with any surfaces that can generate high-voltage sparks like carpets as that can destroy the electrical components.

Arrange the drive motors around the PCB and connect them using the wiring. Since we'll be calibrating them, make sure you connect the right motors to the right PCB receptacles. It helps to mark them using a sticky note or marker. The silk screen lettering should help here.

Connect a power source to your board as you did before. Verify that the roboclaws all receive power. A green light should be on on each roboclaw.

### 6.1 RoboClaw Testing and Verification

In this section you will be going one by one and and testing the operation of the RoboClaw Motor controllers. You will be doing this by using the GUI provided by the manufacturer of the motor controllers. The GUI can be found at [the BasicMicro website](https://www.basicmicro.com/downloads), under general downloads, then BasicMicro Motion Studio.

You'll also need the `USB RoboClaw Windows Driver` from the RoboClaw General Downloads section of the page. This should be installed before you run the Motion Studio.

To use the GUI, insert a USB to Micro USB cable from your computer to the motor controller you are going to be testing. In the Basic Motion GUI you should see an available device appear. It might require an update to proceed. Install the latest firmware update and then connect to the device.

Verify that all status lights are green and that the following values are shown at the top:

Temperature1: ~30
M1/M2 Amps: 0.00
M1/M2 Encoder: 0
M1/M2 Speed: 0
Main Battery: Between 11.5-16.7V
Logic Battery: 5V
Model: 2x7a

#### 6.2 Configuring general settings

The addresses for each Roboclaw unit by default are `128` which we want to change such that the Raspberry Pi can distinguish between Roboclaws and thus motors. We'll leave Roboclaw 1 at 128 and set Roboclaw 2 and 3 to 129 and 130 respectively.

In the `General Settings` tab:

- under `Setup`, set `Control Mode` to `Packet Serial`
- Enable the `Multi-Unit` mode flag
- Under `Serial`, set the `Packet Serial Address` to either 128, 129, or 130 depending on which roboclaw is plugged in
- set the `Baudrate` to `115200`
- Under `I/O`, make sure `Encoder 1 Mode` and `Encoder 2 Mode` are both set to `Quadrature`
- Under `Battery`, set `Max Main Battery` to `18.5V` and `Min Main Battery` to `11.5V`

Next, we'll check the correct direction and calibrate velocity before we repeat the process for the other roboclaws and motors.

#### 6.3 Prepare PWM signal

Click on the PWM tab. We will now send a PWM signal to the motor and test that connections are all made correctly to the motor and encoder. Start by selecting the `Enable Space Bar Stop All` button in the bottom left which allows you to set velocity to zero when you hit the space bar.

#### 6.4 Vary PWM signal

Slowly move the slider bar for the corresponding motor output channel. Verify that the right motor is spinning and that the encoder value is also changing.

- If there is no movement, the motors aren't getting current through the MA and MB wires. Check your wiring and look for red status lights within the Motion Studio GUI to troubleshoot.
- If the motor spins but the encoder value for that same motor/channel (M1 or M2) isn't changing, there likely is an issue with your encoder cabling. Use a multi-meter to verify connectivity.
- If all your connections are correct, you may have to test your solder contact between the components on the board itself.

> **Note**: When troubleshooting electrical connections, always remove power to the PCB to prevent shorting and injury.
Switch direction of the slide bar and verify that it spins the other direction and the encoder value does the opposite of previous as well.

Once you've verified this, we'll focus on the direction. We want the motor to spin as in the diagram below when we send a positive PWM:

![motor direction diagram](images/motor_direction_diagram.png)

For both motors check that the direction matches the diagram. If it doesn't, for that motor in the `General Settings` tab, select `M1 Reverse`. Check again to verify it matches. Now verify that the encoder value increases when you send a positive PWM for each motor. If it doesn't, select the `invert` checkbox in `General Settings` and verify again.

> **Important**: Make sure to save these settings to each Roboclaw's non-volatile memory by clicking on the `Device` menu > `Write Settings`.
Repeat starting from Section [6.1](6.1-RoboClaw-Testing-and-Verification) for the other two roboclaws.