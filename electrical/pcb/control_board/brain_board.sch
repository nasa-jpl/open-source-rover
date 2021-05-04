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
L Device:R R?
U 1 1 60A8A8D9
P 2350 3100
F 0 "R?" H 2280 3054 50  0000 R CNN
F 1 "4.7K" H 2280 3145 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2280 3100 50  0001 C CNN
F 3 "~" H 2350 3100 50  0001 C CNN
	1    2350 3100
	-1   0    0    1   
$EndComp
Text Label 2350 3300 3    30   ~ 0
RXD
$Comp
L power:+5V #PWR?
U 1 1 60A8A8E0
P 2350 2950
F 0 "#PWR?" H 2350 2800 50  0001 C CNN
F 1 "+5V" H 2365 3108 30  0000 C CNN
F 2 "" H 2350 2950 50  0001 C CNN
F 3 "" H 2350 2950 50  0001 C CNN
	1    2350 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3250 2350 3300
Wire Wire Line
	2900 2200 2750 2200
Wire Wire Line
	2900 2400 2750 2400
Wire Wire Line
	2900 2600 2750 2600
Wire Wire Line
	2900 2950 2750 2950
Wire Wire Line
	4050 2000 3900 2000
Wire Wire Line
	4050 2050 3900 2050
Wire Wire Line
	4050 2100 3900 2100
Wire Wire Line
	4050 2150 3900 2150
Wire Wire Line
	4050 2200 3900 2200
Wire Wire Line
	4050 2300 3900 2300
Wire Wire Line
	4050 2350 3900 2350
Wire Wire Line
	4050 2450 3900 2450
Wire Wire Line
	4050 2700 3900 2700
Wire Wire Line
	4050 2800 3900 2800
Text Label 2750 2000 0    30   ~ 0
3.3V
Text Label 2750 2400 0    30   ~ 0
3.3V
Text Label 4050 2000 2    30   ~ 0
+5V
Text Label 4050 2050 2    30   ~ 0
+5V
Text Label 4050 2150 2    30   ~ 0
TXD
Text Label 4050 2200 2    30   ~ 0
RXD
Text Label 4050 2350 2    30   ~ 0
E_STOP
$Comp
L JPL_Robotics_Lib:S9175-ND_rpi_breakout J?
U 1 1 60A8A8FC
P 2850 4400
F 0 "J?" H 3450 5715 50  0000 C CNN
F 1 "S9175-ND_rpi_breakout" H 3450 5624 50  0000 C CNN
F 2 "JPL Robotics:S9175-ND" H 3100 5650 50  0001 C CNN
F 3 "" H 3100 5650 50  0001 C CNN
	1    2850 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 3300 2800 3300
Wire Wire Line
	2950 3500 2800 3500
Wire Wire Line
	2950 3700 2800 3700
Wire Wire Line
	2950 3900 2800 3900
Wire Wire Line
	2950 4250 2800 4250
Wire Wire Line
	4100 3300 3950 3300
Wire Wire Line
	4100 3350 3950 3350
Wire Wire Line
	4100 3400 3950 3400
Wire Wire Line
	4100 3450 3950 3450
Wire Wire Line
	4100 3500 3950 3500
Wire Wire Line
	4100 3600 3950 3600
Wire Wire Line
	4100 3750 3950 3750
Wire Wire Line
	4100 4000 3950 4000
Wire Wire Line
	4100 4100 3950 4100
Text Label 2800 3300 0    30   ~ 0
3.3V
Text Label 2800 3500 0    30   ~ 0
GND
Text Label 2800 3700 0    30   ~ 0
3.3V
Text Label 2800 3900 0    30   ~ 0
GND
Text Label 2800 4250 0    30   ~ 0
GND
Text Label 4100 3300 2    30   ~ 0
+5V
Text Label 4100 3350 2    30   ~ 0
+5V
Text Label 4100 3400 2    30   ~ 0
GND
Text Label 4100 3450 2    30   ~ 0
TXD
Text Label 4100 3500 2    30   ~ 0
RXD
Text Label 4100 3600 2    30   ~ 0
GND
Text Label 4100 3750 2    30   ~ 0
GND
Text Label 4100 4000 2    30   ~ 0
GND
Text Label 4100 4100 2    30   ~ 0
GND
$Comp
L JPL_Robotics_Lib:6posheader J?
U 1 1 60A8A91E
P 2750 5650
F 0 "J?" H 2856 6073 50  0000 C CNN
F 1 "6posheader" H 2950 6150 50  0001 C CNN
F 2 "JPL Robotics:6x1 Header Pin 0.1 Pitch" H 2750 5650 50  0001 C CNN
F 3 "" H 2750 5650 50  0001 C CNN
	1    2750 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5350 3200 5350
Wire Wire Line
	2950 5400 3200 5400
Wire Wire Line
	2950 5500 3200 5500
Wire Wire Line
	2950 5550 3200 5550
Wire Wire Line
	2950 5600 3200 5600
$Comp
L JPL_Robotics_Lib:6posheader J?
U 1 1 60A8A929
P 3450 5650
F 0 "J?" H 3556 6073 50  0000 C CNN
F 1 "6posheader" H 3650 6150 50  0001 C CNN
F 2 "JPL Robotics:455-1708-ND" H 3450 5650 50  0001 C CNN
F 3 "" H 3450 5650 50  0001 C CNN
	1    3450 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 5350 3900 5350
Wire Wire Line
	3650 5400 3900 5400
Wire Wire Line
	3650 5450 3900 5450
Text Label 3200 5350 2    30   ~ 0
GND
Text Label 3200 5400 2    30   ~ 0
CTS#
Text Label 3200 5500 2    30   ~ 0
TTL_TXD
Text Label 3200 5550 2    30   ~ 0
TTL_RXD
Text Label 3200 5600 2    30   ~ 0
RTS#
Text Label 3900 5350 2    30   ~ 0
+12V
Text Label 3900 5400 2    30   ~ 0
+5V
Text Label 3900 5450 2    30   ~ 0
GND
Wire Wire Line
	3650 5550 3900 5550
Text Label 3900 5500 2    30   ~ 0
TTL_TXD
Text Label 3900 5550 2    30   ~ 0
TTL_RXD
Text Notes 2750 1600 0    98   ~ 0
Raspberry Pi breakout
Text Notes 2550 5000 0    98   ~ 0
Arduino Communication
Wire Notes Line style solid
	4850 1200 4850 4550
Wire Notes Line style solid
	4850 4550 2100 4550
Wire Notes Line style solid
	2100 4550 2100 1200
Wire Notes Line style solid
	2100 1200 4850 1200
Wire Notes Line style solid rgb(0, 0, 0)
	4850 5800 4850 4700
Wire Notes Line style solid rgb(0, 0, 0)
	4850 4700 2100 4700
Wire Notes Line style solid rgb(0, 0, 0)
	2100 4700 2100 5800
Wire Notes Line style solid rgb(0, 0, 0)
	2100 5800 4850 5800
Text Label 3950 2100 0    30   ~ 0
GND
Text Label 3950 2300 0    30   ~ 0
GND
Text Label 3950 2450 0    30   ~ 0
GND
Text Label 3950 2700 0    30   ~ 0
GND
Text Label 3950 2800 0    30   ~ 0
GND
Text Label 2750 2950 0    30   ~ 0
GND
Text Label 2750 2600 0    30   ~ 0
GND
Text Label 2750 2200 0    30   ~ 0
GND
$Comp
L Device:C_Small C?
U 1 1 60A8A94F
P 2300 2200
F 0 "C?" H 2392 2246 50  0000 L CNN
F 1 "100nf" H 2392 2155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 2300 2200 50  0001 C CNN
F 3 "~" H 2300 2200 50  0001 C CNN
	1    2300 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60A8A955
P 2300 2300
F 0 "#PWR?" H 2300 2050 50  0001 C CNN
F 1 "GND" H 2400 2300 39  0000 C CNN
F 2 "" H 2300 2300 50  0001 C CNN
F 3 "" H 2300 2300 50  0001 C CNN
	1    2300 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2000 2400 2000
Wire Wire Line
	2300 2000 2300 2100
NoConn ~ 2950 5450
Wire Wire Line
	3650 5500 3900 5500
Wire Wire Line
	4100 3650 3950 3650
NoConn ~ 3650 5600
NoConn ~ 3200 5600
NoConn ~ 3200 5400
NoConn ~ 4100 3650
NoConn ~ 3150 3050
NoConn ~ 2900 2450
NoConn ~ 2900 2550
NoConn ~ 2900 2500
NoConn ~ 3900 2550
NoConn ~ 3900 2600
NoConn ~ 2950 3750
NoConn ~ 2950 3800
NoConn ~ 2950 3850
NoConn ~ 3950 3850
NoConn ~ 3950 3900
$Comp
L power:PWR_FLAG #FLG?
U 1 1 60A8A96F
P 2400 1950
F 0 "#FLG?" H 2400 2025 50  0001 C CNN
F 1 "PWR_FLAG" H 2400 2123 50  0000 C CNN
F 2 "" H 2400 1950 50  0001 C CNN
F 3 "~" H 2400 1950 50  0001 C CNN
	1    2400 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1950 2400 2000
Connection ~ 2400 2000
Wire Wire Line
	2400 2000 2900 2000
Text Notes 2150 2600 0    50   ~ 0
*3.3v bus is \nnot powered
$Comp
L JPL_Robotics_Lib:S9175-ND_rpi_breakout J?
U 1 1 60A8A979
P 2800 3100
F 0 "J?" H 3400 4415 50  0000 C CNN
F 1 "S9175-ND_rpi_breakout" H 3400 4324 50  0000 C CNN
F 2 "JPL Robotics:S9175-ND" H 3050 4350 50  0001 C CNN
F 3 "" H 3050 4350 50  0001 C CNN
	1    2800 3100
	1    0    0    -1  
$EndComp
NoConn ~ 2900 2150
NoConn ~ 2900 2250
NoConn ~ 2900 2300
NoConn ~ 2900 2350
NoConn ~ 2900 2650
NoConn ~ 2900 2700
NoConn ~ 2900 2750
NoConn ~ 2900 2800
NoConn ~ 2900 2850
NoConn ~ 2900 2900
NoConn ~ 3900 2750
NoConn ~ 3900 2900
NoConn ~ 3900 2850
NoConn ~ 3900 2950
NoConn ~ 3900 2650
NoConn ~ 3900 2500
NoConn ~ 3900 2400
NoConn ~ 3900 2250
NoConn ~ 2950 3450
NoConn ~ 2950 3550
NoConn ~ 2950 3600
NoConn ~ 2950 3650
NoConn ~ 2950 3950
NoConn ~ 2950 4000
NoConn ~ 2950 4050
NoConn ~ 2950 4100
NoConn ~ 2950 4150
NoConn ~ 2950 4200
NoConn ~ 3950 4250
NoConn ~ 3950 4200
NoConn ~ 3950 4150
NoConn ~ 3950 4050
NoConn ~ 3950 3950
NoConn ~ 3950 3800
NoConn ~ 3950 3700
NoConn ~ 3950 3550
NoConn ~ 2900 2050
NoConn ~ 2900 2100
NoConn ~ 2950 3350
NoConn ~ 2950 3400
$EndSCHEMATC
