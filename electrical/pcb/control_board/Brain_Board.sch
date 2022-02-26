EESchema Schematic File Version 4
LIBS:Control_Boards-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 1700 3450 3    50   ~ 0
RXD
Wire Wire Line
	1700 3400 1700 3450
Wire Wire Line
	2250 2100 2100 2100
Wire Wire Line
	2250 2300 2100 2300
Wire Wire Line
	2250 2500 2100 2500
Wire Wire Line
	2250 2850 2100 2850
Wire Wire Line
	3400 1950 3250 1950
Wire Wire Line
	3400 2000 3250 2000
Wire Wire Line
	3400 2050 3250 2050
Wire Wire Line
	3400 2100 3250 2100
Wire Wire Line
	3400 2200 3250 2200
Wire Wire Line
	3400 2250 3250 2250
Wire Wire Line
	3400 2350 3250 2350
Wire Wire Line
	3400 2600 3250 2600
Wire Wire Line
	3400 2700 3250 2700
Text Label 2100 1900 0    30   ~ 0
3.3V
Text Label 2100 2300 0    30   ~ 0
3.3V
Text Label 3400 1900 2    30   ~ 0
+5V
Text Label 3400 1950 2    30   ~ 0
+5V
Text Label 3400 2050 2    30   ~ 0
TXD
Text Label 3400 2100 2    30   ~ 0
RXD
Text Label 3400 2250 2    30   ~ 0
E_STOP_pi
$Comp
L JPL_Robotics_Lib:S9175-ND_rpi_breakout J23
U 1 1 60A8A8FC
P 2200 4300
F 0 "J23" H 2800 5615 50  0000 C CNN
F 1 "S9175-ND_rpi_breakout" H 2800 5524 50  0000 C CNN
F 2 "JPL Robotics:S9175-ND" H 2450 5550 50  0001 C CNN
F 3 "" H 2450 5550 50  0001 C CNN
	1    2200 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3200 2150 3200
Wire Wire Line
	2300 3400 2150 3400
Wire Wire Line
	2300 3600 2150 3600
Wire Wire Line
	2300 3800 2150 3800
Wire Wire Line
	2300 4150 2150 4150
Wire Wire Line
	3450 3200 3300 3200
Wire Wire Line
	3450 3250 3300 3250
Wire Wire Line
	3450 3300 3300 3300
Wire Wire Line
	3450 3350 3300 3350
Wire Wire Line
	3450 3400 3300 3400
Wire Wire Line
	3450 3500 3300 3500
Wire Wire Line
	3450 3650 3300 3650
Wire Wire Line
	3450 3900 3300 3900
Wire Wire Line
	3450 4000 3300 4000
Text Label 2150 3200 0    30   ~ 0
3.3V
Text Label 2150 3400 0    30   ~ 0
GND
Text Label 2150 3600 0    30   ~ 0
3.3V
Text Label 2150 3800 0    30   ~ 0
GND
Text Label 2150 4150 0    30   ~ 0
GND
Text Label 3450 3200 2    30   ~ 0
+5V
Text Label 3450 3250 2    30   ~ 0
+5V
Text Label 3450 3300 2    30   ~ 0
GND
Text Label 3450 3350 2    30   ~ 0
TXD
Text Label 3450 3400 2    30   ~ 0
RXD
Text Label 3450 3500 2    30   ~ 0
GND
Text Label 3450 3650 2    30   ~ 0
GND
Text Label 3450 3900 2    30   ~ 0
GND
Text Label 3450 4000 2    30   ~ 0
GND
$Comp
L JPL_Robotics_Lib:6posheader J24
U 1 1 60A8A929
P 2600 5550
F 0 "J24" H 2706 5973 50  0000 C CNN
F 1 "6posheader" H 2800 6050 50  0001 C CNN
F 2 "JPL Robotics:455-1708-ND" H 2600 5550 50  0001 C CNN
F 3 "" H 2600 5550 50  0001 C CNN
	1    2600 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 5250 3050 5250
Wire Wire Line
	2800 5300 3050 5300
Wire Wire Line
	2800 5350 3050 5350
Text Label 3050 5250 2    30   ~ 0
+12V
Text Label 3050 5300 2    30   ~ 0
+5V
Text Label 3050 5350 2    30   ~ 0
GND
Wire Wire Line
	2800 5450 3050 5450
Text Label 3050 5400 2    30   ~ 0
SCL_rpi
Text Label 3050 5450 2    30   ~ 0
SDA_rpi
Text Notes 2100 1500 0    98   ~ 0
Raspberry Pi breakout
Text Notes 1900 4900 0    98   ~ 0
Arduino Communication
Wire Notes Line style solid
	4200 1100 4200 4450
Wire Notes Line style solid
	4200 4450 1450 4450
Wire Notes Line style solid
	1450 4450 1450 1100
Wire Notes Line style solid
	1450 1100 4200 1100
Wire Notes Line style solid rgb(0, 0, 0)
	4200 5700 4200 4600
Wire Notes Line style solid rgb(0, 0, 0)
	4200 4600 1450 4600
Wire Notes Line style solid rgb(0, 0, 0)
	1450 4600 1450 5700
Wire Notes Line style solid rgb(0, 0, 0)
	1450 5700 4200 5700
Text Label 3300 2000 0    30   ~ 0
GND
Text Label 3300 2200 0    30   ~ 0
GND
Text Label 3300 2350 0    30   ~ 0
GND
Text Label 3300 2600 0    30   ~ 0
GND
Text Label 3300 2700 0    30   ~ 0
GND
Text Label 2100 2850 0    30   ~ 0
GND
Text Label 2100 2500 0    30   ~ 0
GND
Text Label 2100 2100 0    30   ~ 0
GND
$Comp
L Device:C_Small C31
U 1 1 60A8A94F
P 1650 2100
F 0 "C31" H 1742 2146 50  0000 L CNN
F 1 "100nf" H 1742 2055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 1650 2100 50  0001 C CNN
F 3 "~" H 1650 2100 50  0001 C CNN
	1    1650 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1900 1650 2000
Wire Wire Line
	2800 5400 3050 5400
NoConn ~ 2800 5500
NoConn ~ 2250 2350
NoConn ~ 2250 2450
NoConn ~ 2250 2400
NoConn ~ 3250 2450
NoConn ~ 3250 2500
NoConn ~ 2300 3650
NoConn ~ 2300 3700
NoConn ~ 2300 3750
NoConn ~ 3300 3750
NoConn ~ 3300 3800
$Comp
L power:PWR_FLAG #FLG06
U 1 1 60A8A96F
P 1900 1850
F 0 "#FLG06" H 1900 1925 50  0001 C CNN
F 1 "PWR_FLAG" V 1800 2100 50  0000 C CNN
F 2 "" H 1900 1850 50  0001 C CNN
F 3 "~" H 1900 1850 50  0001 C CNN
	1    1900 1850
	1    0    0    -1  
$EndComp
Text Notes 1550 2600 0    50   ~ 0
*3.3v bus \nsupplied\nby rpi
$Comp
L JPL_Robotics_Lib:S9175-ND_rpi_breakout J22
U 1 1 60A8A979
P 2150 3000
F 0 "J22" H 2750 4315 50  0000 C CNN
F 1 "S9175-ND_rpi_breakout" H 2750 4224 50  0000 C CNN
F 2 "JPL Robotics:S9175-ND" H 2400 4250 50  0001 C CNN
F 3 "" H 2400 4250 50  0001 C CNN
	1    2150 3000
	1    0    0    -1  
$EndComp
NoConn ~ 2250 2050
NoConn ~ 2250 2550
NoConn ~ 2250 2600
NoConn ~ 2250 2650
NoConn ~ 2250 2700
NoConn ~ 2250 2750
NoConn ~ 2250 2800
NoConn ~ 3250 2650
NoConn ~ 3250 2800
NoConn ~ 3250 2750
NoConn ~ 3250 2850
NoConn ~ 3250 2550
NoConn ~ 3250 2400
NoConn ~ 3250 2300
NoConn ~ 3250 2150
NoConn ~ 2300 3350
NoConn ~ 2300 3850
NoConn ~ 2300 3900
NoConn ~ 2300 3950
NoConn ~ 2300 4000
NoConn ~ 2300 4050
NoConn ~ 2300 4100
NoConn ~ 3300 4150
NoConn ~ 3300 4100
NoConn ~ 3300 4050
NoConn ~ 3300 3950
NoConn ~ 3300 3850
NoConn ~ 3300 3700
NoConn ~ 3300 3600
NoConn ~ 3300 3450
Wire Notes Line style solid rgb(0, 0, 0)
	4450 1100 6900 1100
Text Notes 4800 1350 0    98   ~ 0
Inter-Board Connection
Text Label 5100 2100 0    50   ~ 0
TXD
Text Label 6250 2100 2    50   ~ 0
RXD
Text Label 5100 2900 0    50   ~ 0
E_STOP
Wire Wire Line
	5100 2100 5400 2100
Wire Wire Line
	5100 2900 5400 2900
$Comp
L JPL_Robotics_Lib:PEC10DAAN J26
U 1 1 60EE139B
P 5650 1850
F 0 "J26" H 5650 1925 50  0000 C CNN
F 1 "PEC10DAAN" H 5650 1834 50  0000 C CNN
F 2 "JPL Robotics:PEC10DAAN" H 5950 1850 50  0001 C CNN
F 3 "" H 5950 1850 50  0001 C CNN
	1    5650 1850
	1    0    0    -1  
$EndComp
$Comp
L JPL_Robotics_Lib:+5V_brain #PWR061
U 1 1 618E53AB
P 1700 3100
F 0 "#PWR061" H 1700 2950 50  0001 C CNN
F 1 "+5V_brain" H 1715 3273 50  0000 C CNN
F 2 "" H 1700 3100 50  0001 C CNN
F 3 "" H 1700 3100 50  0001 C CNN
	1    1700 3100
	1    0    0    -1  
$EndComp
$Comp
L JPL_Robotics_Lib:GND_brain #PWR059
U 1 1 618E86D3
P 1650 2200
F 0 "#PWR059" H 1650 1950 50  0001 C CNN
F 1 "GND_brain" H 1400 2150 50  0000 C CNN
F 2 "" H 1650 2200 50  0001 C CNN
F 3 "" H 1650 2200 50  0001 C CNN
	1    1650 2200
	1    0    0    -1  
$EndComp
$Comp
L JPL_Robotics_Lib:+5V_brain #PWR063
U 1 1 618ECDE5
P 4750 1850
F 0 "#PWR063" H 4750 1700 50  0001 C CNN
F 1 "+5V_brain" V 4650 1750 50  0000 L CNN
F 2 "" H 4750 1850 50  0001 C CNN
F 3 "" H 4750 1850 50  0001 C CNN
	1    4750 1850
	0    -1   -1   0   
$EndComp
$Comp
L JPL_Robotics_Lib:GND_brain #PWR064
U 1 1 618EE99B
P 4750 2350
F 0 "#PWR064" H 4750 2100 50  0001 C CNN
F 1 "GND_brain" V 4650 2450 50  0000 R CNN
F 2 "" H 4750 2350 50  0001 C CNN
F 3 "" H 4750 2350 50  0001 C CNN
	1    4750 2350
	0    1    1    0   
$EndComp
Text Label 5200 2000 0    50   ~ 0
+5V
Text Label 5200 2200 0    50   ~ 0
GND
Text Label 6050 2400 0    50   ~ 0
+12V
$Comp
L power:PWR_FLAG #FLG07
U 1 1 6195B322
P 4800 1750
F 0 "#FLG07" H 4800 1825 50  0001 C CNN
F 1 "PWR_FLAG" H 4800 1923 50  0000 C CNN
F 2 "" H 4800 1750 50  0001 C CNN
F 3 "~" H 4800 1750 50  0001 C CNN
	1    4800 1750
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG08
U 1 1 6195CC58
P 4800 2450
F 0 "#FLG08" H 4800 2525 50  0001 C CNN
F 1 "PWR_FLAG" H 4800 2623 50  0000 C CNN
F 2 "" H 4800 2450 50  0001 C CNN
F 3 "~" H 4800 2450 50  0001 C CNN
	1    4800 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 2350 4800 2350
Wire Wire Line
	4900 2200 5400 2200
Wire Wire Line
	4800 2350 4800 2450
Connection ~ 4800 2350
Wire Wire Line
	4800 2350 4750 2350
Wire Wire Line
	4900 1850 4800 1850
Wire Wire Line
	4900 2000 5400 2000
Wire Wire Line
	4800 1850 4800 1750
Connection ~ 4800 1850
Wire Wire Line
	4800 1850 4750 1850
Wire Wire Line
	4900 2200 4900 2350
Wire Wire Line
	4900 1850 4900 2000
NoConn ~ 3300 3550
Wire Notes Line
	4450 1100 4450 3250
Wire Notes Line
	6900 1100 6900 3250
Wire Notes Line
	6900 3250 4450 3250
Text Notes 4800 3650 0    98   ~ 0
Secondary E_STOP header
$Comp
L JPL_Robotics_Lib:PPTC021LFBN-RC J27
U 1 1 609D84ED
P 5650 3850
F 0 "J27" H 5678 3701 50  0000 L CNN
F 1 "PPTC021LFBN-RC" H 5678 3610 50  0000 L CNN
F 2 "JPL Robotics:PPTC021LFBN-RC" H 5950 3850 50  0001 C CNN
F 3 "" H 5950 3850 50  0001 C CNN
	1    5650 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2900 6250 2900
Text Label 6250 2900 2    50   ~ 0
E_STOP2
Wire Wire Line
	5900 2100 6250 2100
Wire Wire Line
	5050 4100 5400 4100
Text Label 4950 4000 0    50   ~ 0
E_STOP2_in
Text Label 5050 4100 0    50   ~ 0
GND
Wire Wire Line
	2250 2200 2100 2200
Text Label 2100 2200 0    30   ~ 0
alert
Wire Wire Line
	5400 2800 5100 2800
Text Label 5100 2800 0    50   ~ 0
alert
Wire Wire Line
	5400 2300 5100 2300
Text Label 5100 2300 0    50   ~ 0
SCL_rpi
Wire Wire Line
	5900 2300 6250 2300
Text Label 6250 2300 2    50   ~ 0
SDA_rpi
Wire Wire Line
	2250 1950 2100 1950
Wire Wire Line
	2250 2000 2100 2000
Text Label 2100 1950 0    30   ~ 0
SDA_rpi
Text Label 2100 2000 0    30   ~ 0
SCL_rpi
Wire Wire Line
	2300 3250 2150 3250
Wire Wire Line
	2300 3300 2150 3300
Text Label 2150 3250 0    30   ~ 0
SDA_rpi
Text Label 2150 3300 0    30   ~ 0
SCL_rpi
$Comp
L JPL_Robotics_Lib:PPTC021LFBN-RC J28
U 1 1 60ED1AE6
P 5650 4300
F 0 "J28" H 5678 4151 50  0000 L CNN
F 1 "PPTC021LFBN-RC" H 5678 4060 50  0000 L CNN
F 2 "JPL Robotics:PPTC021LFBN-RC" H 5950 4300 50  0001 C CNN
F 3 "" H 5950 4300 50  0001 C CNN
	1    5650 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2700 6250 2700
Text Label 6250 2700 2    50   ~ 0
E_STOP3
Wire Wire Line
	5050 4550 5400 4550
Text Label 4950 4450 0    50   ~ 0
E_STOP3_in
Text Label 5050 4550 0    50   ~ 0
GND
Text Notes 5200 3900 0    50   ~ 0
Roboclaw S4 Breakout
Text Notes 5200 4350 0    50   ~ 0
Roboclaw S5 Breakout
Wire Wire Line
	5900 2800 6250 2800
Text Label 6250 2800 2    50   ~ 0
OEservos
$Comp
L JPL_Robotics_Lib:PPTC021LFBN-RC J29
U 1 1 6103131A
P 5650 4700
F 0 "J29" H 5678 4551 50  0000 L CNN
F 1 "PPTC021LFBN-RC" H 5678 4460 50  0000 L CNN
F 2 "JPL Robotics:PPTC021LFBN-RC" H 5950 4700 50  0001 C CNN
F 3 "" H 5950 4700 50  0001 C CNN
	1    5650 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4950 5400 4950
Wire Wire Line
	5050 4850 5400 4850
Text Label 5050 4850 0    50   ~ 0
OEservos
Text Label 5050 4950 0    50   ~ 0
GND
Text Notes 4950 4750 0    50   ~ 0
Corner Servo Output Enable Breakout
Wire Notes Line
	4450 3400 4450 5200
Wire Notes Line
	4450 5200 6900 5200
Wire Notes Line
	6900 5200 6900 3400
NoConn ~ 2300 3450
NoConn ~ 2250 2150
Wire Wire Line
	2250 2250 2100 2250
Text Label 2100 2250 0    30   ~ 0
OEservos
Text Label 6250 2200 2    50   ~ 0
GND
Text Label 6250 2000 2    50   ~ 0
+5V
Wire Wire Line
	5900 2000 6250 2000
Wire Wire Line
	5900 2200 6250 2200
Text Label 5100 2400 0    50   ~ 0
+12V
Wire Wire Line
	5400 2400 5100 2400
Wire Wire Line
	6400 2350 6400 2400
$Comp
L power:PWR_FLAG #FLG09
U 1 1 619765A5
P 6400 2350
F 0 "#FLG09" H 6400 2425 50  0001 C CNN
F 1 "PWR_FLAG" H 6500 2500 50  0000 C CNN
F 2 "" H 6400 2350 50  0001 C CNN
F 3 "~" H 6400 2350 50  0001 C CNN
	1    6400 2350
	1    0    0    -1  
$EndComp
$Comp
L JPL_Robotics_Lib:+12V_brain #PWR065
U 1 1 618F0639
P 6400 2400
F 0 "#PWR065" H 6400 2250 50  0001 C CNN
F 1 "+12V_brain" V 6450 2450 50  0000 L CNN
F 2 "" H 6400 2400 50  0001 C CNN
F 3 "" H 6400 2400 50  0001 C CNN
	1    6400 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 2400 6400 2400
Connection ~ 6400 2400
Text Notes 4550 3150 0    31   ~ 0
Note: arranged these pins in a convenient way to make sure that if \nconnectors are connected with reverse polarity, there should be no\npower rails plugged into sensitive pins
NoConn ~ 5400 2500
NoConn ~ 5900 2500
NoConn ~ 5400 2700
Wire Wire Line
	5400 2600 5100 2600
Text Label 5100 2600 0    50   ~ 0
3.3V
Text Label 6250 2600 2    50   ~ 0
3.3V
Wire Wire Line
	5900 2600 6250 2600
NoConn ~ 2300 3500
NoConn ~ 2300 3550
Text Notes 2850 6100 0    98   ~ 0
RPi I2C Header
Wire Wire Line
	3150 6250 2950 6250
Text Label 2950 6250 0    30   ~ 0
SDA_rpi
Wire Wire Line
	3150 6350 2950 6350
Text Label 2950 6350 0    30   ~ 0
SCL_rpi
Wire Wire Line
	3150 6450 2950 6450
Text Label 2950 6450 0    30   ~ 0
GND
Wire Notes Line
	2650 5800 4200 5800
Wire Notes Line
	4450 3400 6900 3400
Wire Wire Line
	7900 1750 8050 1750
$Comp
L JPL_Robotics_Lib:GND_brain #PWR066
U 1 1 615F0C13
P 7700 1900
F 0 "#PWR066" H 7700 1650 50  0001 C CNN
F 1 "GND_brain" V 7700 1750 50  0000 R CNN
F 2 "" H 7700 1900 50  0001 C CNN
F 3 "" H 7700 1900 50  0001 C CNN
	1    7700 1900
	0    1    1    0   
$EndComp
Text Label 7900 1750 2    50   ~ 0
E_STOP_pi
Wire Wire Line
	9300 1650 9300 1800
Wire Wire Line
	7700 1900 7750 1900
Wire Wire Line
	8050 1750 8050 1900
Wire Wire Line
	7900 2250 8050 2250
$Comp
L JPL_Robotics_Lib:GND_brain #PWR067
U 1 1 611A028F
P 7700 2400
F 0 "#PWR067" H 7700 2150 50  0001 C CNN
F 1 "GND_brain" V 7700 2250 50  0000 R CNN
F 2 "" H 7700 2400 50  0001 C CNN
F 3 "" H 7700 2400 50  0001 C CNN
	1    7700 2400
	0    1    1    0   
$EndComp
Text Label 9650 2100 2    50   ~ 0
E_STOP2
Text Label 7900 2250 2    50   ~ 0
E_STOP2_in
Wire Wire Line
	9300 2100 9300 2250
Wire Wire Line
	7700 2400 7750 2400
Wire Wire Line
	8050 2250 8050 2400
Wire Wire Line
	7900 2750 8050 2750
$Comp
L JPL_Robotics_Lib:GND_brain #PWR068
U 1 1 611A5DFB
P 7700 2900
F 0 "#PWR068" H 7700 2650 50  0001 C CNN
F 1 "GND_brain" V 7700 2750 50  0000 R CNN
F 2 "" H 7700 2900 50  0001 C CNN
F 3 "" H 7700 2900 50  0001 C CNN
	1    7700 2900
	0    1    1    0   
$EndComp
Connection ~ 8050 2750
Text Label 9650 2550 2    50   ~ 0
E_STOP3
Text Label 7900 2750 2    50   ~ 0
E_STOP3_in
Wire Wire Line
	9300 2550 9300 2700
Wire Wire Line
	7700 2900 7750 2900
Wire Wire Line
	8050 2750 8050 2900
Wire Notes Line
	7100 1100 7100 3350
Text Notes 8100 1300 0    98   ~ 0
ESTOP LEDs
$Comp
L Device:C_Small C33
U 1 1 6129D299
P 8100 3900
F 0 "C33" V 7950 3850 50  0000 L CNN
F 1 "10nf" V 8150 3950 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 8100 3900 50  0001 C CNN
F 3 "~" H 8100 3900 50  0001 C CNN
	1    8100 3900
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:2N3906 Q2
U 1 1 6129E305
P 8650 4150
F 0 "Q2" H 8840 4104 50  0000 L CNN
F 1 "2N3906" H 8840 4195 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8850 4075 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3906-D.PDF" H 8650 4150 50  0001 L CNN
	1    8650 4150
	1    0    0    1   
$EndComp
$Comp
L Diode:1N4148 D8
U 1 1 612DF187
P 7700 4050
F 0 "D8" H 7700 4267 50  0000 C CNN
F 1 "1N4148" H 7700 4176 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7700 3875 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7700 4050 50  0001 C CNN
	1    7700 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 4050 7200 4050
Text Label 7200 4050 0    50   ~ 0
TXD
Wire Wire Line
	7850 4050 7950 4050
Wire Wire Line
	7950 4050 7950 4150
Wire Wire Line
	7950 4050 7950 3900
Wire Wire Line
	7950 3900 8000 3900
Connection ~ 7950 4050
$Comp
L JPL_Robotics_Lib:+3.3V_brain #PWR072
U 1 1 61305B5B
P 8450 3850
F 0 "#PWR072" H 8450 3700 50  0001 C CNN
F 1 "+3.3V_brain" H 8750 3900 50  0000 C CNN
F 2 "" H 8450 3850 50  0001 C CNN
F 3 "" H 8450 3850 50  0001 C CNN
	1    8450 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3900 8450 3900
Wire Wire Line
	8450 3900 8450 3850
Wire Wire Line
	8450 3900 8750 3900
Wire Wire Line
	8750 3900 8750 3950
Connection ~ 8450 3900
$Comp
L Device:C_Small C34
U 1 1 61326329
P 8100 4600
F 0 "C34" V 7950 4550 50  0000 L CNN
F 1 "10nf" V 8150 4650 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 8100 4600 50  0001 C CNN
F 3 "~" H 8100 4600 50  0001 C CNN
	1    8100 4600
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:2N3906 Q3
U 1 1 6132632F
P 8650 4850
F 0 "Q3" H 8840 4804 50  0000 L CNN
F 1 "2N3906" H 8840 4895 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8850 4775 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3906-D.PDF" H 8650 4850 50  0001 L CNN
	1    8650 4850
	1    0    0    1   
$EndComp
$Comp
L Diode:1N4148 D9
U 1 1 61326335
P 7700 4750
F 0 "D9" H 7700 4967 50  0000 C CNN
F 1 "1N4148" H 7700 4876 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7700 4575 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7700 4750 50  0001 C CNN
	1    7700 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 4750 7200 4750
Text Label 7200 4750 0    50   ~ 0
RXD
Wire Wire Line
	7850 4750 7950 4750
Wire Wire Line
	7950 4750 7950 4850
Wire Wire Line
	7950 4750 7950 4600
Wire Wire Line
	7950 4600 8000 4600
Connection ~ 7950 4750
$Comp
L JPL_Robotics_Lib:+3.3V_brain #PWR073
U 1 1 61326349
P 8450 4550
F 0 "#PWR073" H 8450 4400 50  0001 C CNN
F 1 "+3.3V_brain" H 8750 4600 50  0000 C CNN
F 2 "" H 8450 4550 50  0001 C CNN
F 3 "" H 8450 4550 50  0001 C CNN
	1    8450 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4600 8450 4600
Wire Wire Line
	8450 4600 8450 4550
Wire Wire Line
	8450 4600 8750 4600
Wire Wire Line
	8750 4600 8750 4650
Connection ~ 8450 4600
$Comp
L Device:R_US R?
U 1 1 6139D881
P 1700 3250
AR Path="/6139D881" Ref="R?"  Part="1" 
AR Path="/60A51BAC/6139D881" Ref="R?"  Part="1" 
AR Path="/60A5279E/6139D881" Ref="R11"  Part="1" 
F 0 "R11" H 1768 3296 50  0000 L CNN
F 1 "4.7k" H 1768 3205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1740 3240 50  0001 C CNN
F 3 "~" H 1700 3250 50  0001 C CNN
	1    1700 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 613A639A
P 9450 2250
AR Path="/613A639A" Ref="R?"  Part="1" 
AR Path="/60A51BAC/613A639A" Ref="R?"  Part="1" 
AR Path="/60A5279E/613A639A" Ref="R19"  Part="1" 
F 0 "R19" V 9350 2150 50  0000 L CNN
F 1 "150" V 9550 2200 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9490 2240 50  0001 C CNN
F 3 "~" H 9450 2250 50  0001 C CNN
	1    9450 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 613A6626
P 9450 2700
AR Path="/613A6626" Ref="R?"  Part="1" 
AR Path="/60A51BAC/613A6626" Ref="R?"  Part="1" 
AR Path="/60A5279E/613A6626" Ref="R20"  Part="1" 
F 0 "R20" V 9350 2600 50  0000 L CNN
F 1 "150" V 9550 2650 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9490 2690 50  0001 C CNN
F 3 "~" H 9450 2700 50  0001 C CNN
	1    9450 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 613A6BC5
P 7900 1900
AR Path="/613A6BC5" Ref="R?"  Part="1" 
AR Path="/60A51BAC/613A6BC5" Ref="R?"  Part="1" 
AR Path="/60A5279E/613A6BC5" Ref="R12"  Part="1" 
F 0 "R12" V 7800 1800 50  0000 L CNN
F 1 "4.7k" V 8000 1950 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7940 1890 50  0001 C CNN
F 3 "~" H 7900 1900 50  0001 C CNN
	1    7900 1900
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 613A8AC5
P 7900 2400
AR Path="/613A8AC5" Ref="R?"  Part="1" 
AR Path="/60A51BAC/613A8AC5" Ref="R?"  Part="1" 
AR Path="/60A5279E/613A8AC5" Ref="R13"  Part="1" 
F 0 "R13" V 7800 2300 50  0000 L CNN
F 1 "4.7k" V 8000 2450 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7940 2390 50  0001 C CNN
F 3 "~" H 7900 2400 50  0001 C CNN
	1    7900 2400
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 613A91FC
P 7900 2900
AR Path="/613A91FC" Ref="R?"  Part="1" 
AR Path="/60A51BAC/613A91FC" Ref="R?"  Part="1" 
AR Path="/60A5279E/613A91FC" Ref="R14"  Part="1" 
F 0 "R14" V 7800 2800 50  0000 L CNN
F 1 "4.7k" V 8000 2850 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7940 2890 50  0001 C CNN
F 3 "~" H 7900 2900 50  0001 C CNN
	1    7900 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 613A99A2
P 8150 4150
AR Path="/613A99A2" Ref="R?"  Part="1" 
AR Path="/60A51BAC/613A99A2" Ref="R?"  Part="1" 
AR Path="/60A5279E/613A99A2" Ref="R16"  Part="1" 
F 0 "R16" V 8050 4050 50  0000 L CNN
F 1 "10k" V 8250 4100 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8190 4140 50  0001 C CNN
F 3 "~" H 8150 4150 50  0001 C CNN
	1    8150 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	7950 4150 8000 4150
Wire Wire Line
	8300 4150 8450 4150
Wire Wire Line
	7950 4850 8000 4850
$Comp
L Device:R_US R?
U 1 1 613BCB40
P 8150 4850
AR Path="/613BCB40" Ref="R?"  Part="1" 
AR Path="/60A51BAC/613BCB40" Ref="R?"  Part="1" 
AR Path="/60A5279E/613BCB40" Ref="R17"  Part="1" 
F 0 "R17" V 8050 4750 50  0000 L CNN
F 1 "10k" V 8250 4800 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8190 4840 50  0001 C CNN
F 3 "~" H 8150 4850 50  0001 C CNN
	1    8150 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 4850 8450 4850
Wire Wire Line
	4950 4450 5400 4450
Wire Wire Line
	4950 4000 5400 4000
Text Notes 9350 3850 0    31   ~ 0
LED lights up when TXD / RXD low \n(low when sending bits)
Wire Wire Line
	8650 5700 8750 5700
Wire Wire Line
	8200 5950 8350 5950
$Comp
L Device:R_US R?
U 1 1 6133EF1B
P 8050 5950
AR Path="/6133EF1B" Ref="R?"  Part="1" 
AR Path="/60A51BAC/6133EF1B" Ref="R?"  Part="1" 
AR Path="/60A5279E/6133EF1B" Ref="R15"  Part="1" 
F 0 "R15" V 7950 5850 50  0000 L CNN
F 1 "10k" V 8150 5900 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8090 5940 50  0001 C CNN
F 3 "~" H 8050 5950 50  0001 C CNN
	1    8050 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 5700 8650 5750
$Comp
L JPL_Robotics_Lib:+3.3V_brain #PWR074
U 1 1 6133EF01
P 8750 5700
F 0 "#PWR074" H 8750 5550 50  0001 C CNN
F 1 "+3.3V_brain" H 9050 5750 50  0000 C CNN
F 2 "" H 8750 5700 50  0001 C CNN
F 3 "" H 8750 5700 50  0001 C CNN
	1    8750 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 5950 7900 5950
Text Label 7150 5950 0    50   ~ 0
alert
Wire Wire Line
	7500 5950 7150 5950
$Comp
L Diode:1N4148 D7
U 1 1 6133EEF4
P 7650 5950
F 0 "D7" H 7650 6167 50  0000 C CNN
F 1 "1N4148" H 7650 6076 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7650 5775 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7650 5950 50  0001 C CNN
	1    7650 5950
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3906 Q1
U 1 1 6133EEEE
P 8550 5950
F 0 "Q1" H 8740 5904 50  0000 L CNN
F 1 "2N3906" H 8740 5995 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8750 5875 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3906-D.PDF" H 8550 5950 50  0001 L CNN
	1    8550 5950
	1    0    0    1   
$EndComp
Text Notes 7800 3650 0    98   ~ 0
Serial TXD/RXD LEDs
Wire Notes Line
	7100 3450 7100 5200
Wire Notes Line
	7100 5200 10350 5200
Wire Notes Line
	10350 5200 10350 3450
Wire Notes Line
	10350 3450 7100 3450
Text Notes 7850 5500 0    98   ~ 0
Alert Signal LED
Wire Notes Line
	7100 5300 7100 6350
Wire Notes Line
	7100 6350 10350 6350
Wire Notes Line
	10350 6350 10350 5300
Wire Notes Line
	10350 5300 7100 5300
Text Notes 9300 5500 0    31   ~ 0
ina260 alert signal is default active low \n(APOL=0), LED will light on alert low
$Comp
L Device:C_Small C32
U 1 1 61420FF3
P 3750 2000
F 0 "C32" H 3842 2046 50  0000 L CNN
F 1 "100nf" H 3842 1955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 3750 2000 50  0001 C CNN
F 3 "~" H 3750 2000 50  0001 C CNN
	1    3750 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1900 3750 1900
$Comp
L JPL_Robotics_Lib:GND_brain #PWR062
U 1 1 614285E9
P 3750 2100
F 0 "#PWR062" H 3750 1850 50  0001 C CNN
F 1 "GND_brain" H 4000 2050 50  0000 C CNN
F 2 "" H 3750 2100 50  0001 C CNN
F 3 "" H 3750 2100 50  0001 C CNN
	1    3750 2100
	1    0    0    -1  
$EndComp
$Comp
L JPL_Robotics_Lib:+3.3V_brain #PWR060
U 1 1 614BE59A
P 1700 1850
F 0 "#PWR060" H 1700 1700 50  0001 C CNN
F 1 "+3.3V_brain" V 1600 2050 50  0000 C CNN
F 2 "" H 1700 1850 50  0001 C CNN
F 3 "" H 1700 1850 50  0001 C CNN
	1    1700 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1900 1700 1900
Wire Wire Line
	1700 1850 1700 1900
Connection ~ 1700 1900
Wire Wire Line
	1700 1900 1900 1900
Wire Wire Line
	1900 1850 1900 1900
Connection ~ 1900 1900
Wire Wire Line
	1900 1900 2250 1900
$Comp
L Device:R_US R?
U 1 1 613A416D
P 9450 1800
AR Path="/613A416D" Ref="R?"  Part="1" 
AR Path="/60A51BAC/613A416D" Ref="R?"  Part="1" 
AR Path="/60A5279E/613A416D" Ref="R18"  Part="1" 
F 0 "R18" V 9350 1700 50  0000 L CNN
F 1 "150" V 9550 1750 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9490 1790 50  0001 C CNN
F 3 "~" H 9450 1800 50  0001 C CNN
	1    9450 1800
	0    1    1    0   
$EndComp
Text Label 9650 1650 2    50   ~ 0
E_STOP
Wire Wire Line
	7900 2600 8200 2600
Text Notes 3600 3250 0    31   ~ 0
Todo: eric add more leds for \nthe other gpio pins
$Comp
L JPL_Robotics_Lib:+3.3V_brain #PWR070
U 1 1 61C45621
P 7900 2100
F 0 "#PWR070" H 7900 1950 50  0001 C CNN
F 1 "+3.3V_brain" V 7915 2228 50  0000 L CNN
F 2 "" H 7900 2100 50  0001 C CNN
F 3 "" H 7900 2100 50  0001 C CNN
	1    7900 2100
	0    -1   -1   0   
$EndComp
$Comp
L JPL_Robotics_Lib:+3.3V_brain #PWR071
U 1 1 61C45CF3
P 7900 2600
F 0 "#PWR071" H 7900 2450 50  0001 C CNN
F 1 "+3.3V_brain" V 7915 2728 50  0000 L CNN
F 2 "" H 7900 2600 50  0001 C CNN
F 3 "" H 7900 2600 50  0001 C CNN
	1    7900 2600
	0    -1   -1   0   
$EndComp
Text Notes 9200 1300 0    31   ~ 0
- Roboclaw ESTOPs active low \n(emergency stop when pulled low)\n- LEDs off when estop’ed (nominal on)
Text Notes 2100 1650 0    31   ~ 0
Todo: kit make the two 3.3v nets have the same name
Text Notes 7200 1450 0    31   ~ 0
TODO: check logic here, make sure it’s what we want\n\nalso do 5v source for LEDs
Text Notes 7200 5100 0    31   ~ 0
TODO: check logic here, make sure it’s what we want
$Comp
L JPL_Robotics_Lib:SSW-104-01-F-T J25
U 1 1 61D7BA49
P 3350 7650
F 0 "J25" H 3578 8430 50  0000 L CNN
F 1 "SSW-104-01-F-T" H 3578 8385 50  0001 L CNN
F 2 "JPL Robotics:SSW-104-01-F-T" H 3350 7650 50  0001 C CNN
F 3 "" H 3350 7650 50  0001 C CNN
	1    3350 7650
	1    0    0    -1  
$EndComp
Wire Notes Line
	4200 5800 4200 7600
Wire Notes Line
	4200 7600 2650 7600
Wire Notes Line
	2650 5800 2650 7600
Wire Wire Line
	3150 6600 2950 6600
Text Label 2950 6600 0    30   ~ 0
SDA_rpi
Wire Wire Line
	3150 6700 2950 6700
Text Label 2950 6700 0    30   ~ 0
SCL_rpi
Wire Wire Line
	3150 6800 2950 6800
Text Label 2950 6800 0    30   ~ 0
GND
Wire Wire Line
	3150 6950 2950 6950
Text Label 2950 6950 0    30   ~ 0
SDA_rpi
Wire Wire Line
	3150 7050 2950 7050
Text Label 2950 7050 0    30   ~ 0
SCL_rpi
Wire Wire Line
	3150 7150 2950 7150
Text Label 2950 7150 0    30   ~ 0
GND
Wire Wire Line
	3150 7300 2950 7300
Text Label 2950 7300 0    30   ~ 0
SDA_rpi
Wire Wire Line
	3150 7400 2950 7400
Text Label 2950 7400 0    30   ~ 0
SCL_rpi
Wire Wire Line
	3150 7500 2950 7500
Text Label 2950 7500 0    30   ~ 0
GND
Text Notes 3700 6450 0    31   ~ 0
4 redundant i2c \nconnections, for \ntalking to arbitrary \nperipherals
Wire Wire Line
	8050 2750 8250 2750
Wire Notes Line
	10800 1100 10800 3350
Wire Notes Line
	7100 1100 10800 1100
Wire Wire Line
	9300 1650 9650 1650
Wire Wire Line
	9300 2100 9650 2100
Wire Wire Line
	9300 2550 9650 2550
$Comp
L JPL_Robotics_Lib:Mounting_Holes M?
U 1 1 61DB5332
P 1550 6150
AR Path="/60A51BAC/61DB5332" Ref="M?"  Part="1" 
AR Path="/60A5279E/61DB5332" Ref="M1"  Part="1" 
F 0 "M1" V 1980 6329 30  0000 L CNN
F 1 "Mounting_Holes" V 2040 6329 30  0000 L CNN
F 2 "JPL Robotics:raspberry_pi_3b" H 1730 6330 30  0001 C CNN
F 3 "" H 1730 6330 30  0001 C CNN
	1    1550 6150
	0    1    1    0   
$EndComp
$Comp
L JPL_Robotics_Lib:CTS-206-124 SW1
U 1 1 61DFAF04
P 8550 3150
F 0 "SW1" H 8700 4683 50  0000 C CNN
F 1 "CTS-206-124" H 8750 3200 50  0000 C CNN
F 2 "JPL Robotics:CTS-206-124" H 8550 3150 50  0001 C CNN
F 3 "" H 8550 3150 50  0001 C CNN
	1    8550 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2100 8350 2100
Wire Wire Line
	8050 2250 8350 2250
Connection ~ 8050 2250
Wire Wire Line
	8050 1900 8350 1900
Connection ~ 8050 1900
Wire Wire Line
	8250 1750 8350 1750
$Comp
L JPL_Robotics_Lib:+3.3V_brain #PWR069
U 1 1 61C43E89
P 7900 1600
F 0 "#PWR069" H 7900 1450 50  0001 C CNN
F 1 "+3.3V_brain" V 7915 1728 50  0000 L CNN
F 2 "" H 7900 1600 50  0001 C CNN
F 3 "" H 7900 1600 50  0001 C CNN
	1    7900 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7900 1600 8250 1600
Wire Wire Line
	8250 1600 8250 1750
Wire Wire Line
	8200 2600 8200 2450
Wire Wire Line
	8200 2450 8350 2450
Wire Wire Line
	8250 2750 8250 2600
Wire Wire Line
	8250 2600 8350 2600
NoConn ~ 8350 2800
NoConn ~ 8350 2950
NoConn ~ 9150 2800
NoConn ~ 9150 2950
Wire Wire Line
	9150 1900 9150 1800
Wire Wire Line
	9150 1800 9300 1800
Connection ~ 9150 1800
Wire Wire Line
	9150 1800 9150 1750
Connection ~ 9300 1800
Wire Wire Line
	9150 2100 9150 2250
Wire Wire Line
	9150 2250 9300 2250
Connection ~ 9150 2250
Connection ~ 9300 2250
Wire Wire Line
	9150 2450 9150 2550
Wire Wire Line
	9150 2550 9300 2550
Connection ~ 9150 2550
Wire Wire Line
	9150 2550 9150 2600
Connection ~ 9300 2550
Wire Notes Line
	7100 3350 10800 3350
Text Notes 9050 3250 0    31   ~ 0
Note that two adjacent odd numbered pins \nMUST be connected together, due to the \nimplementation of the switch array
Wire Wire Line
	8650 6150 8650 6250
Text Label 10250 1800 2    50   ~ 0
ESTOP_LED_1
Wire Wire Line
	9600 1800 10250 1800
Wire Wire Line
	9600 2250 10250 2250
Wire Wire Line
	9600 2700 10250 2700
Text Label 10250 2250 2    50   ~ 0
ESTOP_LED_2
Text Label 10250 2700 2    50   ~ 0
ESTOP_LED_3
Wire Wire Line
	8750 4350 9700 4350
Wire Wire Line
	8750 5050 9750 5050
Text Label 9750 5050 2    50   ~ 0
RXD_LED
Text Label 9700 4350 2    50   ~ 0
TXD_LED
Wire Wire Line
	8650 6250 9550 6250
Text Label 9550 6250 2    50   ~ 0
ALERT_LED
$Comp
L JPL_Robotics_Lib:DC7G3HWA U6
U 1 1 62C709B3
P 5150 6650
F 0 "U6" H 5700 7665 50  0000 C CNN
F 1 "DC7G3HWA" H 5700 7574 50  0000 C CNN
F 2 "JPL Robotics:DC7G3HWA LED Array" H 5150 6650 50  0001 C CNN
F 3 "" H 5150 6650 50  0001 C CNN
	1    5150 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 5900 5450 5900
Wire Wire Line
	5450 6000 4900 6000
Wire Wire Line
	5450 6100 4900 6100
Text Label 4900 5900 0    50   ~ 0
TXD_LED
Text Label 4900 6000 0    50   ~ 0
RXD_LED
Text Label 4900 6100 0    50   ~ 0
ALERT_LED
Wire Wire Line
	5450 6600 4950 6600
Wire Wire Line
	5450 6700 4950 6700
Wire Wire Line
	5450 6800 4950 6800
Text Label 4950 6800 0    50   ~ 0
ESTOP_LED_1
Text Label 4950 6700 0    50   ~ 0
ESTOP_LED_2
Text Label 4950 6600 0    50   ~ 0
ESTOP_LED_3
$Comp
L JPL_Robotics_Lib:GND_brain #PWR075
U 1 1 62CA41E0
P 6150 6950
F 0 "#PWR075" H 6150 6700 50  0001 C CNN
F 1 "GND_brain" H 6300 6800 50  0000 R CNN
F 2 "" H 6150 6950 50  0001 C CNN
F 3 "" H 6150 6950 50  0001 C CNN
	1    6150 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5900 6150 5900
Wire Wire Line
	6150 5900 6150 6000
Wire Wire Line
	5950 6800 6150 6800
Connection ~ 6150 6800
Wire Wire Line
	6150 6800 6150 6950
Wire Wire Line
	5950 6700 6150 6700
Connection ~ 6150 6700
Wire Wire Line
	6150 6700 6150 6800
Wire Wire Line
	5950 6600 6150 6600
Connection ~ 6150 6600
Wire Wire Line
	6150 6600 6150 6700
Wire Wire Line
	5950 6500 6150 6500
Connection ~ 6150 6500
Wire Wire Line
	6150 6500 6150 6600
Wire Wire Line
	5950 6400 6150 6400
Connection ~ 6150 6400
Wire Wire Line
	6150 6400 6150 6500
Wire Wire Line
	5950 6300 6150 6300
Connection ~ 6150 6300
Wire Wire Line
	6150 6300 6150 6400
Wire Wire Line
	5950 6200 6150 6200
Connection ~ 6150 6200
Wire Wire Line
	6150 6200 6150 6300
Wire Wire Line
	5950 6100 6150 6100
Connection ~ 6150 6100
Wire Wire Line
	6150 6100 6150 6200
Wire Wire Line
	5950 6000 6150 6000
Connection ~ 6150 6000
Wire Wire Line
	6150 6000 6150 6100
$EndSCHEMATC
