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
$Comp
L Device:R R1
U 1 1 60A8A8D9
P 1700 3250
F 0 "R1" H 1630 3204 50  0000 R CNN
F 1 "4.7K" H 1630 3295 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1630 3250 50  0001 C CNN
F 3 "~" H 1700 3250 50  0001 C CNN
	1    1700 3250
	-1   0    0    1   
$EndComp
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
Wire Wire Line
	5050 4000 5400 4000
Text Label 5050 4000 0    50   ~ 0
E_STOP2
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
Wire Wire Line
	5050 4450 5400 4450
Text Label 5050 4450 0    50   ~ 0
E_STOP3
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
Text Notes 7250 1400 0    98   ~ 0
RPi I2C Header
$Comp
L JPL_Robotics_Lib:PPTC041LFBN-RC J67
U 1 1 61023155
P 7750 1900
F 0 "J67" H 7878 2025 39  0000 L CNN
F 1 "PPTC041LFBN-RC" H 7800 2250 50  0001 C CNN
F 2 "" H 7900 2100 50  0001 C CNN
F 3 "" H 7900 2100 50  0001 C CNN
	1    7750 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1700 7450 1700
Text Label 7450 1700 0    30   ~ 0
SDA_rpi
Wire Wire Line
	7650 1750 7450 1750
Text Label 7450 1750 0    30   ~ 0
SCL_rpi
Wire Wire Line
	7650 1800 7450 1800
Text Label 7450 1800 0    30   ~ 0
GND
NoConn ~ 7650 1850
Wire Notes Line
	7050 1100 7050 2200
Wire Notes Line
	7050 1100 8600 1100
Wire Notes Line
	8600 1100 8600 2200
Wire Notes Line
	8600 2200 7050 2200
Wire Notes Line
	4450 3400 6900 3400
Wire Wire Line
	7950 2850 8100 2850
$Comp
L JPL_Robotics_Lib:GND_brain #PWR?
U 1 1 615F0C13
P 7750 3000
F 0 "#PWR?" H 7750 2750 50  0001 C CNN
F 1 "GND_brain" V 7750 2850 50  0000 R CNN
F 2 "" H 7750 3000 50  0001 C CNN
F 3 "" H 7750 3000 50  0001 C CNN
	1    7750 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 2850 8250 2850
Connection ~ 8100 2850
Wire Wire Line
	8400 2850 8600 2850
Text Label 8950 2850 2    50   ~ 0
E_STOP
$Comp
L JPL_Robotics_Lib:GND_brain #PWR?
U 1 1 61606D72
P 9450 3000
F 0 "#PWR?" H 9450 2750 50  0001 C CNN
F 1 "GND_brain" V 9450 2850 50  0000 R CNN
F 2 "" H 9450 3000 50  0001 C CNN
F 3 "" H 9450 3000 50  0001 C CNN
	1    9450 3000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 61604AEF
P 9250 3000
F 0 "D?" H 9300 2850 50  0000 R CNN
F 1 "LED - WP1503GT (green)" H 9400 2750 31  0000 R CNN
F 2 "" H 9250 3000 50  0001 C CNN
F 3 "~" H 9250 3000 50  0001 C CNN
	1    9250 3000
	-1   0    0    1   
$EndComp
Text Label 7950 2850 2    50   ~ 0
E_STOP_pi
Wire Wire Line
	7950 2600 8300 2600
Wire Wire Line
	8300 2600 8300 2700
$Comp
L JPL_Robotics_Lib:+5V_brain #PWR?
U 1 1 61618007
P 7950 2600
F 0 "#PWR?" H 7950 2450 50  0001 C CNN
F 1 "+5V_brain" V 7950 2750 50  0000 L CNN
F 2 "" H 7950 2600 50  0001 C CNN
F 3 "" H 7950 2600 50  0001 C CNN
	1    7950 2600
	0    -1   -1   0   
$EndComp
Text Notes 7550 5100 0    31   ~ 0
Todo:\n- add switch\n- add LED circuits for other e_stops
Text Notes 7550 5400 0    31   ~ 0
Todo add rest of the LEDs for other lines
$Comp
L Device:R R?
U 1 1 6114BB8C
P 7950 3000
F 0 "R?" V 7950 2800 50  0000 R CNN
F 1 "4.7K" V 7850 2850 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7880 3000 50  0001 C CNN
F 3 "~" H 7950 3000 50  0001 C CNN
	1    7950 3000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 615FD963
P 8750 3000
F 0 "R?" V 8750 2800 50  0000 R CNN
F 1 "120" V 8850 2850 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8680 3000 50  0001 C CNN
F 3 "~" H 8750 3000 50  0001 C CNN
	1    8750 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 2850 8600 3000
Wire Wire Line
	7750 3000 7800 3000
Wire Wire Line
	8100 2850 8100 3000
Connection ~ 8600 2850
Wire Wire Line
	8600 2850 8950 2850
Wire Wire Line
	9400 3000 9450 3000
Wire Wire Line
	8900 3000 9100 3000
Text Notes 8150 2800 0    31   ~ 0
Todo: add switch
Wire Wire Line
	7950 3550 8100 3550
$Comp
L JPL_Robotics_Lib:GND_brain #PWR?
U 1 1 611A028F
P 7750 3700
F 0 "#PWR?" H 7750 3450 50  0001 C CNN
F 1 "GND_brain" V 7750 3550 50  0000 R CNN
F 2 "" H 7750 3700 50  0001 C CNN
F 3 "" H 7750 3700 50  0001 C CNN
	1    7750 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 3550 8250 3550
Connection ~ 8100 3550
Wire Wire Line
	8400 3550 8600 3550
Text Label 8950 3550 2    50   ~ 0
E_STOP
$Comp
L JPL_Robotics_Lib:GND_brain #PWR?
U 1 1 611A0299
P 9450 3700
F 0 "#PWR?" H 9450 3450 50  0001 C CNN
F 1 "GND_brain" V 9450 3550 50  0000 R CNN
F 2 "" H 9450 3700 50  0001 C CNN
F 3 "" H 9450 3700 50  0001 C CNN
	1    9450 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 611A029F
P 9250 3700
F 0 "D?" H 9300 3550 50  0000 R CNN
F 1 "LED - WP1503GT (green)" H 9400 3450 31  0000 R CNN
F 2 "" H 9250 3700 50  0001 C CNN
F 3 "~" H 9250 3700 50  0001 C CNN
	1    9250 3700
	-1   0    0    1   
$EndComp
Text Label 7950 3550 2    50   ~ 0
E_STOP_pi
Wire Wire Line
	7950 3300 8300 3300
Wire Wire Line
	8300 3300 8300 3400
$Comp
L JPL_Robotics_Lib:+5V_brain #PWR?
U 1 1 611A02A8
P 7950 3300
F 0 "#PWR?" H 7950 3150 50  0001 C CNN
F 1 "+5V_brain" V 7950 3450 50  0000 L CNN
F 2 "" H 7950 3300 50  0001 C CNN
F 3 "" H 7950 3300 50  0001 C CNN
	1    7950 3300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 611A02AE
P 7950 3700
F 0 "R?" V 7950 3500 50  0000 R CNN
F 1 "4.7K" V 7850 3550 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7880 3700 50  0001 C CNN
F 3 "~" H 7950 3700 50  0001 C CNN
	1    7950 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 611A02B4
P 8750 3700
F 0 "R?" V 8750 3500 50  0000 R CNN
F 1 "120" V 8850 3550 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8680 3700 50  0001 C CNN
F 3 "~" H 8750 3700 50  0001 C CNN
	1    8750 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 3550 8600 3700
Wire Wire Line
	7750 3700 7800 3700
Wire Wire Line
	8100 3550 8100 3700
Connection ~ 8600 3550
Wire Wire Line
	8600 3550 8950 3550
Wire Wire Line
	9400 3700 9450 3700
Wire Wire Line
	8900 3700 9100 3700
Text Notes 8150 3500 0    31   ~ 0
Todo: add switch
Wire Wire Line
	7950 4200 8100 4200
$Comp
L JPL_Robotics_Lib:GND_brain #PWR?
U 1 1 611A5DFB
P 7750 4350
F 0 "#PWR?" H 7750 4100 50  0001 C CNN
F 1 "GND_brain" V 7750 4200 50  0000 R CNN
F 2 "" H 7750 4350 50  0001 C CNN
F 3 "" H 7750 4350 50  0001 C CNN
	1    7750 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 4200 8250 4200
Connection ~ 8100 4200
Wire Wire Line
	8400 4200 8600 4200
Text Label 8950 4200 2    50   ~ 0
E_STOP
$Comp
L JPL_Robotics_Lib:GND_brain #PWR?
U 1 1 611A5E05
P 9450 4350
F 0 "#PWR?" H 9450 4100 50  0001 C CNN
F 1 "GND_brain" V 9450 4200 50  0000 R CNN
F 2 "" H 9450 4350 50  0001 C CNN
F 3 "" H 9450 4350 50  0001 C CNN
	1    9450 4350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 611A5E0B
P 9250 4350
F 0 "D?" H 9300 4200 50  0000 R CNN
F 1 "LED - WP1503GT (green)" H 9400 4100 31  0000 R CNN
F 2 "" H 9250 4350 50  0001 C CNN
F 3 "~" H 9250 4350 50  0001 C CNN
	1    9250 4350
	-1   0    0    1   
$EndComp
Text Label 7950 4200 2    50   ~ 0
E_STOP_pi
Wire Wire Line
	7950 3950 8300 3950
Wire Wire Line
	8300 3950 8300 4050
$Comp
L JPL_Robotics_Lib:+5V_brain #PWR?
U 1 1 611A5E14
P 7950 3950
F 0 "#PWR?" H 7950 3800 50  0001 C CNN
F 1 "+5V_brain" V 7950 4100 50  0000 L CNN
F 2 "" H 7950 3950 50  0001 C CNN
F 3 "" H 7950 3950 50  0001 C CNN
	1    7950 3950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 611A5E1A
P 7950 4350
F 0 "R?" V 7950 4150 50  0000 R CNN
F 1 "4.7K" V 7850 4200 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7880 4350 50  0001 C CNN
F 3 "~" H 7950 4350 50  0001 C CNN
	1    7950 4350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 611A5E20
P 8750 4350
F 0 "R?" V 8750 4150 50  0000 R CNN
F 1 "120" V 8850 4200 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8680 4350 50  0001 C CNN
F 3 "~" H 8750 4350 50  0001 C CNN
	1    8750 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 4200 8600 4350
Wire Wire Line
	7750 4350 7800 4350
Wire Wire Line
	8100 4200 8100 4350
Connection ~ 8600 4200
Wire Wire Line
	8600 4200 8950 4200
Wire Wire Line
	9400 4350 9450 4350
Wire Wire Line
	8900 4350 9100 4350
Text Notes 8150 4150 0    31   ~ 0
Todo: add switch
Wire Notes Line
	7050 2300 7050 4550
Wire Notes Line
	7050 4550 10150 4550
Wire Notes Line
	10150 4550 10150 2300
Wire Notes Line
	10150 2300 7050 2300
Text Notes 8050 2500 0    98   ~ 0
ESTOP LEDs
Wire Notes Line
	8450 2400 8450 2450
Wire Notes Line
	8450 2450 8500 2450
$EndSCHEMATC
