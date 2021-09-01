EESchema Schematic File Version 4
EELAYER 30 0
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
Text Label 1700 3450 3    30   ~ 0
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
	3400 1900 3250 1900
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
L JPL_Robotics_Lib:S9175-ND_rpi_breakout J7
U 1 1 60A8A8FC
P 2200 4300
F 0 "J7" H 2800 5615 50  0000 C CNN
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
L JPL_Robotics_Lib:6posheader J10
U 1 1 60A8A929
P 2600 5550
F 0 "J10" H 2706 5973 50  0000 C CNN
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
L Device:C_Small C18
U 1 1 60A8A94F
P 1650 2100
F 0 "C18" H 1742 2146 50  0000 L CNN
F 1 "100nf" H 1742 2055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 1650 2100 50  0001 C CNN
F 3 "~" H 1650 2100 50  0001 C CNN
	1    1650 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1900 1750 1900
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
L power:PWR_FLAG #FLG03
U 1 1 60A8A96F
P 1750 1850
F 0 "#FLG03" H 1750 1925 50  0001 C CNN
F 1 "PWR_FLAG" H 1750 2023 50  0000 C CNN
F 2 "" H 1750 1850 50  0001 C CNN
F 3 "~" H 1750 1850 50  0001 C CNN
	1    1750 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1850 1750 1900
Connection ~ 1750 1900
Wire Wire Line
	1750 1900 2250 1900
Text Notes 1550 2600 0    50   ~ 0
*3.3v bus \nsupplied\nby rpi
$Comp
L JPL_Robotics_Lib:S9175-ND_rpi_breakout J6
U 1 1 60A8A979
P 2150 3000
F 0 "J6" H 2750 4315 50  0000 C CNN
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
L JPL_Robotics_Lib:PEC10DAAN J27
U 1 1 60EE139B
P 5650 1850
F 0 "J27" H 5650 1925 50  0000 C CNN
F 1 "PEC10DAAN" H 5650 1834 50  0000 C CNN
F 2 "JPL Robotics:PEC10DAAN" H 5950 1850 50  0001 C CNN
F 3 "" H 5950 1850 50  0001 C CNN
	1    5650 1850
	1    0    0    -1  
$EndComp
$Comp
L JPL_Robotics_Lib:+5V_brain #PWR0144
U 1 1 618E53AB
P 1700 3100
F 0 "#PWR0144" H 1700 2950 50  0001 C CNN
F 1 "+5V_brain" H 1715 3273 50  0000 C CNN
F 2 "" H 1700 3100 50  0001 C CNN
F 3 "" H 1700 3100 50  0001 C CNN
	1    1700 3100
	1    0    0    -1  
$EndComp
$Comp
L JPL_Robotics_Lib:GND_brain #PWR0145
U 1 1 618E86D3
P 1650 2200
F 0 "#PWR0145" H 1650 1950 50  0001 C CNN
F 1 "GND_brain" H 1400 2150 50  0000 C CNN
F 2 "" H 1650 2200 50  0001 C CNN
F 3 "" H 1650 2200 50  0001 C CNN
	1    1650 2200
	1    0    0    -1  
$EndComp
$Comp
L JPL_Robotics_Lib:+5V_brain #PWR0146
U 1 1 618ECDE5
P 4750 1850
F 0 "#PWR0146" H 4750 1700 50  0001 C CNN
F 1 "+5V_brain" V 4650 1750 50  0000 L CNN
F 2 "" H 4750 1850 50  0001 C CNN
F 3 "" H 4750 1850 50  0001 C CNN
	1    4750 1850
	0    -1   -1   0   
$EndComp
$Comp
L JPL_Robotics_Lib:GND_brain #PWR0147
U 1 1 618EE99B
P 4750 2350
F 0 "#PWR0147" H 4750 2100 50  0001 C CNN
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
L power:PWR_FLAG #FLG0101
U 1 1 6195B322
P 4800 1750
F 0 "#FLG0101" H 4800 1825 50  0001 C CNN
F 1 "PWR_FLAG" H 4800 1923 50  0000 C CNN
F 2 "" H 4800 1750 50  0001 C CNN
F 3 "~" H 4800 1750 50  0001 C CNN
	1    4800 1750
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 6195CC58
P 4800 2450
F 0 "#FLG0102" H 4800 2525 50  0001 C CNN
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
L JPL_Robotics_Lib:PPTC021LFBN-RC J32
U 1 1 609D84ED
P 5650 3850
F 0 "J32" H 5678 3701 50  0000 L CNN
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
L JPL_Robotics_Lib:PPTC021LFBN-RC J45
U 1 1 60ED1AE6
P 5650 4300
F 0 "J45" H 5678 4151 50  0000 L CNN
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
L JPL_Robotics_Lib:PPTC021LFBN-RC J46
U 1 1 6103131A
P 5650 4700
F 0 "J46" H 5678 4551 50  0000 L CNN
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
Text Notes 3300 1650 0    31   ~ 0
Todo: Add decoupling caps for 5v, 3.3v
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
L power:PWR_FLAG #FLG0103
U 1 1 619765A5
P 6400 2350
F 0 "#FLG0103" H 6400 2425 50  0001 C CNN
F 1 "PWR_FLAG" H 6500 2500 50  0000 C CNN
F 2 "" H 6400 2350 50  0001 C CNN
F 3 "~" H 6400 2350 50  0001 C CNN
	1    6400 2350
	1    0    0    -1  
$EndComp
$Comp
L JPL_Robotics_Lib:+12V_brain #PWR0148
U 1 1 618F0639
P 6400 2400
F 0 "#PWR0148" H 6400 2250 50  0001 C CNN
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
Text Notes 4650 5650 0    98   ~ 0
RPi I2C Header
$Comp
L JPL_Robotics_Lib:PPTC041LFBN-RC J67
U 1 1 61023155
P 5150 6150
F 0 "J67" H 5278 6275 39  0000 L CNN
F 1 "PPTC041LFBN-RC" H 5200 6500 50  0001 C CNN
F 2 "" H 5300 6350 50  0001 C CNN
F 3 "" H 5300 6350 50  0001 C CNN
	1    5150 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 5950 4850 5950
Text Label 4850 5950 0    30   ~ 0
SDA_rpi
Wire Wire Line
	5050 6000 4850 6000
Text Label 4850 6000 0    30   ~ 0
SCL_rpi
Wire Wire Line
	5050 6050 4850 6050
Text Label 4850 6050 0    30   ~ 0
GND
NoConn ~ 5050 6100
Wire Notes Line
	4450 5350 4450 6450
Wire Notes Line
	4450 5350 6000 5350
Wire Notes Line
	6000 5350 6000 6450
Wire Notes Line
	6000 6450 4450 6450
Wire Notes Line
	4450 3400 6900 3400
Wire Wire Line
	8000 1650 8150 1650
$Comp
L JPL_Robotics_Lib:GND_brain #PWR?
U 1 1 615F0C13
P 7800 1800
F 0 "#PWR?" H 7800 1550 50  0001 C CNN
F 1 "GND_brain" V 7800 1650 50  0000 R CNN
F 2 "" H 7800 1800 50  0001 C CNN
F 3 "" H 7800 1800 50  0001 C CNN
	1    7800 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 1650 8300 1650
Connection ~ 8150 1650
Wire Wire Line
	8450 1650 8650 1650
Text Label 9000 1650 2    50   ~ 0
E_STOP
$Comp
L JPL_Robotics_Lib:GND_brain #PWR?
U 1 1 61606D72
P 9500 1800
F 0 "#PWR?" H 9500 1550 50  0001 C CNN
F 1 "GND_brain" V 9500 1650 50  0000 R CNN
F 2 "" H 9500 1800 50  0001 C CNN
F 3 "" H 9500 1800 50  0001 C CNN
	1    9500 1800
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 61604AEF
P 9300 1800
F 0 "D?" H 9350 1650 50  0000 R CNN
F 1 "LED - WP1503GT (green)" H 9450 1550 31  0000 R CNN
F 2 "" H 9300 1800 50  0001 C CNN
F 3 "~" H 9300 1800 50  0001 C CNN
	1    9300 1800
	-1   0    0    1   
$EndComp
Text Label 8000 1650 2    50   ~ 0
E_STOP_pi
Wire Wire Line
	8000 1400 8350 1400
Wire Wire Line
	8350 1400 8350 1500
$Comp
L JPL_Robotics_Lib:+5V_brain #PWR?
U 1 1 61618007
P 8000 1400
F 0 "#PWR?" H 8000 1250 50  0001 C CNN
F 1 "+5V_brain" V 8000 1550 50  0000 L CNN
F 2 "" H 8000 1400 50  0001 C CNN
F 3 "" H 8000 1400 50  0001 C CNN
	1    8000 1400
	0    -1   -1   0   
$EndComp
Text Notes 1850 6200 0    31   ~ 0
Todo:\n- add switch\n- add LED circuits for other e_stops
Text Notes 1850 6500 0    31   ~ 0
Todo add rest of the LEDs for other lines
Wire Wire Line
	8650 1650 8650 1800
Wire Wire Line
	7800 1800 7850 1800
Wire Wire Line
	8150 1650 8150 1800
Connection ~ 8650 1650
Wire Wire Line
	8650 1650 9000 1650
Wire Wire Line
	9450 1800 9500 1800
Wire Wire Line
	8950 1800 9150 1800
Text Notes 8200 1600 0    31   ~ 0
Todo: add switch
Wire Wire Line
	8000 2350 8150 2350
$Comp
L JPL_Robotics_Lib:GND_brain #PWR?
U 1 1 611A028F
P 7800 2500
F 0 "#PWR?" H 7800 2250 50  0001 C CNN
F 1 "GND_brain" V 7800 2350 50  0000 R CNN
F 2 "" H 7800 2500 50  0001 C CNN
F 3 "" H 7800 2500 50  0001 C CNN
	1    7800 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 2350 8300 2350
Connection ~ 8150 2350
Wire Wire Line
	8450 2350 8650 2350
Text Label 9000 2350 2    50   ~ 0
E_STOP2
$Comp
L JPL_Robotics_Lib:GND_brain #PWR?
U 1 1 611A0299
P 9500 2500
F 0 "#PWR?" H 9500 2250 50  0001 C CNN
F 1 "GND_brain" V 9500 2350 50  0000 R CNN
F 2 "" H 9500 2500 50  0001 C CNN
F 3 "" H 9500 2500 50  0001 C CNN
	1    9500 2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 611A029F
P 9300 2500
F 0 "D?" H 9350 2350 50  0000 R CNN
F 1 "LED - WP1503GT (green)" H 9450 2250 31  0000 R CNN
F 2 "" H 9300 2500 50  0001 C CNN
F 3 "~" H 9300 2500 50  0001 C CNN
	1    9300 2500
	-1   0    0    1   
$EndComp
Text Label 8000 2350 2    50   ~ 0
E_STOP2_in
Wire Wire Line
	8000 2100 8350 2100
Wire Wire Line
	8350 2100 8350 2200
$Comp
L JPL_Robotics_Lib:+5V_brain #PWR?
U 1 1 611A02A8
P 8000 2100
F 0 "#PWR?" H 8000 1950 50  0001 C CNN
F 1 "+5V_brain" V 8000 2250 50  0000 L CNN
F 2 "" H 8000 2100 50  0001 C CNN
F 3 "" H 8000 2100 50  0001 C CNN
	1    8000 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8650 2350 8650 2500
Wire Wire Line
	7800 2500 7850 2500
Wire Wire Line
	8150 2350 8150 2500
Connection ~ 8650 2350
Wire Wire Line
	8650 2350 9000 2350
Wire Wire Line
	9450 2500 9500 2500
Wire Wire Line
	8950 2500 9150 2500
Text Notes 8200 2300 0    31   ~ 0
Todo: add switch
Wire Wire Line
	8000 3000 8150 3000
$Comp
L JPL_Robotics_Lib:GND_brain #PWR?
U 1 1 611A5DFB
P 7800 3150
F 0 "#PWR?" H 7800 2900 50  0001 C CNN
F 1 "GND_brain" V 7800 3000 50  0000 R CNN
F 2 "" H 7800 3150 50  0001 C CNN
F 3 "" H 7800 3150 50  0001 C CNN
	1    7800 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 3000 8300 3000
Connection ~ 8150 3000
Wire Wire Line
	8450 3000 8650 3000
Text Label 9000 3000 2    50   ~ 0
E_STOP3
$Comp
L JPL_Robotics_Lib:GND_brain #PWR?
U 1 1 611A5E05
P 9500 3150
F 0 "#PWR?" H 9500 2900 50  0001 C CNN
F 1 "GND_brain" V 9500 3000 50  0000 R CNN
F 2 "" H 9500 3150 50  0001 C CNN
F 3 "" H 9500 3150 50  0001 C CNN
	1    9500 3150
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 611A5E0B
P 9300 3150
F 0 "D?" H 9350 3000 50  0000 R CNN
F 1 "LED - WP1503GT (green)" H 9450 2900 31  0000 R CNN
F 2 "" H 9300 3150 50  0001 C CNN
F 3 "~" H 9300 3150 50  0001 C CNN
	1    9300 3150
	-1   0    0    1   
$EndComp
Text Label 8000 3000 2    50   ~ 0
E_STOP3_in
Wire Wire Line
	8000 2750 8350 2750
Wire Wire Line
	8350 2750 8350 2850
$Comp
L JPL_Robotics_Lib:+5V_brain #PWR?
U 1 1 611A5E14
P 8000 2750
F 0 "#PWR?" H 8000 2600 50  0001 C CNN
F 1 "+5V_brain" V 8000 2900 50  0000 L CNN
F 2 "" H 8000 2750 50  0001 C CNN
F 3 "" H 8000 2750 50  0001 C CNN
	1    8000 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8650 3000 8650 3150
Wire Wire Line
	7800 3150 7850 3150
Wire Wire Line
	8150 3000 8150 3150
Connection ~ 8650 3000
Wire Wire Line
	8650 3000 9000 3000
Wire Wire Line
	9450 3150 9500 3150
Wire Wire Line
	8950 3150 9150 3150
Text Notes 8200 2950 0    31   ~ 0
Todo: add switch
Wire Notes Line
	7100 1100 7100 3350
Wire Notes Line
	7100 3350 10200 3350
Wire Notes Line
	10200 3350 10200 1100
Wire Notes Line
	10200 1100 7100 1100
Text Notes 8100 1300 0    98   ~ 0
ESTOP LEDs
$Comp
L Device:C_Small C?
U 1 1 6129D299
P 8100 3900
F 0 "C?" V 7950 3750 50  0000 L CNN
F 1 "10nf" V 7950 3900 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 8100 3900 50  0001 C CNN
F 3 "~" H 8100 3900 50  0001 C CNN
	1    8100 3900
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:2N3906 Q?
U 1 1 6129E305
P 8650 4150
F 0 "Q?" H 8840 4104 50  0000 L CNN
F 1 "2N3906" H 8840 4195 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8850 4075 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3906-D.PDF" H 8650 4150 50  0001 L CNN
	1    8650 4150
	1    0    0    1   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 612DF187
P 7700 4050
F 0 "D?" H 7700 4267 50  0000 C CNN
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
L JPL_Robotics_Lib:+3.3V_brain #PWR?
U 1 1 61305B5B
P 8450 3850
F 0 "#PWR?" H 8450 3700 50  0001 C CNN
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
L Device:LED D?
U 1 1 6131007C
P 9350 4350
F 0 "D?" H 9400 4200 50  0000 R CNN
F 1 "LED - WP1503GT (green)" H 9500 4100 31  0000 R CNN
F 2 "" H 9350 4350 50  0001 C CNN
F 3 "~" H 9350 4350 50  0001 C CNN
	1    9350 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	8750 4350 9200 4350
Wire Wire Line
	9500 4350 9750 4350
$Comp
L JPL_Robotics_Lib:GND_brain #PWR?
U 1 1 6131A74E
P 9750 4350
F 0 "#PWR?" H 9750 4100 50  0001 C CNN
F 1 "GND_brain" V 9750 4200 50  0000 R CNN
F 2 "" H 9750 4350 50  0001 C CNN
F 3 "" H 9750 4350 50  0001 C CNN
	1    9750 4350
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 61326329
P 8100 4600
F 0 "C?" V 7950 4450 50  0000 L CNN
F 1 "10nf" V 7950 4600 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 8100 4600 50  0001 C CNN
F 3 "~" H 8100 4600 50  0001 C CNN
	1    8100 4600
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:2N3906 Q?
U 1 1 6132632F
P 8650 4850
F 0 "Q?" H 8840 4804 50  0000 L CNN
F 1 "2N3906" H 8840 4895 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8850 4775 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3906-D.PDF" H 8650 4850 50  0001 L CNN
	1    8650 4850
	1    0    0    1   
$EndComp
$Comp
L Diode:1N4148 D?
U 1 1 61326335
P 7700 4750
F 0 "D?" H 7700 4967 50  0000 C CNN
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
L JPL_Robotics_Lib:+3.3V_brain #PWR?
U 1 1 61326349
P 8450 4550
F 0 "#PWR?" H 8450 4400 50  0001 C CNN
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
L Device:LED D?
U 1 1 61326354
P 9350 5050
F 0 "D?" H 9400 4900 50  0000 R CNN
F 1 "LED - WP1503GT (green)" H 9500 4800 31  0000 R CNN
F 2 "" H 9350 5050 50  0001 C CNN
F 3 "~" H 9350 5050 50  0001 C CNN
	1    9350 5050
	-1   0    0    1   
$EndComp
Wire Wire Line
	8750 5050 9200 5050
Wire Wire Line
	9500 5050 9750 5050
$Comp
L JPL_Robotics_Lib:GND_brain #PWR?
U 1 1 6132635C
P 9750 5050
F 0 "#PWR?" H 9750 4800 50  0001 C CNN
F 1 "GND_brain" V 9750 4900 50  0000 R CNN
F 2 "" H 9750 5050 50  0001 C CNN
F 3 "" H 9750 5050 50  0001 C CNN
	1    9750 5050
	0    -1   -1   0   
$EndComp
Text Notes 7000 1300 0    31   ~ 0
Todo: should this be 5v or 3.3v? E_STOP_pi \nwill be 3.3v… seems weird to put different\nvoltages through the led
$Comp
L Device:R_US R?
U 1 1 6139D881
P 1700 3250
AR Path="/6139D881" Ref="R?"  Part="1" 
AR Path="/60A51BAC/6139D881" Ref="R?"  Part="1" 
AR Path="/60A5279E/6139D881" Ref="R1"  Part="1" 
F 0 "R1" H 1768 3296 50  0000 L CNN
F 1 "4.7k" H 1768 3205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1740 3240 50  0001 C CNN
F 3 "~" H 1700 3250 50  0001 C CNN
	1    1700 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 613A416D
P 8800 1800
AR Path="/613A416D" Ref="R?"  Part="1" 
AR Path="/60A51BAC/613A416D" Ref="R?"  Part="1" 
AR Path="/60A5279E/613A416D" Ref="R?"  Part="1" 
F 0 "R?" V 8800 1500 50  0000 L CNN
F 1 "140" V 8900 1450 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8840 1790 50  0001 C CNN
F 3 "~" H 8800 1800 50  0001 C CNN
	1    8800 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 613A639A
P 8800 2500
AR Path="/613A639A" Ref="R?"  Part="1" 
AR Path="/60A51BAC/613A639A" Ref="R?"  Part="1" 
AR Path="/60A5279E/613A639A" Ref="R?"  Part="1" 
F 0 "R?" V 8800 2200 50  0000 L CNN
F 1 "140" V 8900 2150 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8840 2490 50  0001 C CNN
F 3 "~" H 8800 2500 50  0001 C CNN
	1    8800 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 613A6626
P 8800 3150
AR Path="/613A6626" Ref="R?"  Part="1" 
AR Path="/60A51BAC/613A6626" Ref="R?"  Part="1" 
AR Path="/60A5279E/613A6626" Ref="R?"  Part="1" 
F 0 "R?" V 8800 2850 50  0000 L CNN
F 1 "140" V 8900 2800 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8840 3140 50  0001 C CNN
F 3 "~" H 8800 3150 50  0001 C CNN
	1    8800 3150
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 613A6BC5
P 8000 1800
AR Path="/613A6BC5" Ref="R?"  Part="1" 
AR Path="/60A51BAC/613A6BC5" Ref="R?"  Part="1" 
AR Path="/60A5279E/613A6BC5" Ref="R?"  Part="1" 
F 0 "R?" V 8000 2000 50  0000 L CNN
F 1 "4.7k" V 8100 1950 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8040 1790 50  0001 C CNN
F 3 "~" H 8000 1800 50  0001 C CNN
	1    8000 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 613A8AC5
P 8000 2500
AR Path="/613A8AC5" Ref="R?"  Part="1" 
AR Path="/60A51BAC/613A8AC5" Ref="R?"  Part="1" 
AR Path="/60A5279E/613A8AC5" Ref="R?"  Part="1" 
F 0 "R?" V 8000 2700 50  0000 L CNN
F 1 "4.7k" V 8100 2650 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8040 2490 50  0001 C CNN
F 3 "~" H 8000 2500 50  0001 C CNN
	1    8000 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 613A91FC
P 8000 3150
AR Path="/613A91FC" Ref="R?"  Part="1" 
AR Path="/60A51BAC/613A91FC" Ref="R?"  Part="1" 
AR Path="/60A5279E/613A91FC" Ref="R?"  Part="1" 
F 0 "R?" V 8000 3350 50  0000 L CNN
F 1 "4.7k" V 8100 3300 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8040 3140 50  0001 C CNN
F 3 "~" H 8000 3150 50  0001 C CNN
	1    8000 3150
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 613A99A2
P 8150 4150
AR Path="/613A99A2" Ref="R?"  Part="1" 
AR Path="/60A51BAC/613A99A2" Ref="R?"  Part="1" 
AR Path="/60A5279E/613A99A2" Ref="R?"  Part="1" 
F 0 "R?" V 8250 4000 50  0000 L CNN
F 1 "10k" V 8250 4200 50  0000 L CNN
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
AR Path="/60A5279E/613BCB40" Ref="R?"  Part="1" 
F 0 "R?" V 8250 4700 50  0000 L CNN
F 1 "10k" V 8250 4900 50  0000 L CNN
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
Text Notes 7000 950  0    31   ~ 0
Todo: pull ups for ESTOPs?
Text Notes 9300 3850 0    31   ~ 0
Todo: LED will light up when TXD / RXD is low. This is what we want, yeah?
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
AR Path="/60A5279E/6133EF1B" Ref="R?"  Part="1" 
F 0 "R?" V 8150 5800 50  0000 L CNN
F 1 "10k" V 8150 6000 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8090 5940 50  0001 C CNN
F 3 "~" H 8050 5950 50  0001 C CNN
	1    8050 5950
	0    1    1    0   
$EndComp
$Comp
L JPL_Robotics_Lib:GND_brain #PWR?
U 1 1 6133EF14
P 9650 6150
F 0 "#PWR?" H 9650 5900 50  0001 C CNN
F 1 "GND_brain" V 9650 6000 50  0000 R CNN
F 2 "" H 9650 6150 50  0001 C CNN
F 3 "" H 9650 6150 50  0001 C CNN
	1    9650 6150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9400 6150 9650 6150
Wire Wire Line
	8650 6150 9100 6150
$Comp
L Device:LED D?
U 1 1 6133EF0C
P 9250 6150
F 0 "D?" H 9300 6000 50  0000 R CNN
F 1 "LED - WP1503GT (green)" H 9400 5900 31  0000 R CNN
F 2 "" H 9250 6150 50  0001 C CNN
F 3 "~" H 9250 6150 50  0001 C CNN
	1    9250 6150
	-1   0    0    1   
$EndComp
Wire Wire Line
	8650 5700 8650 5750
$Comp
L JPL_Robotics_Lib:+3.3V_brain #PWR?
U 1 1 6133EF01
P 8750 5700
F 0 "#PWR?" H 8750 5550 50  0001 C CNN
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
L Diode:1N4148 D?
U 1 1 6133EEF4
P 7650 5950
F 0 "D?" H 7650 6167 50  0000 C CNN
F 1 "1N4148" H 7650 6076 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7650 5775 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7650 5950 50  0001 C CNN
	1    7650 5950
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3906 Q?
U 1 1 6133EEEE
P 8550 5950
F 0 "Q?" H 8740 5904 50  0000 L CNN
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
Text Notes 9350 5500 0    31   ~ 0
Todo: does this look right? alert signal should be default active low
$EndSCHEMATC
