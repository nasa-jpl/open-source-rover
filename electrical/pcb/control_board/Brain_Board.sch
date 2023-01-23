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
Text Label 1400 3450 3    50   ~ 0
RXD
Wire Wire Line
	1400 3400 1400 3450
Wire Wire Line
	1950 2100 1800 2100
Wire Wire Line
	1950 2500 1800 2500
Wire Wire Line
	1950 2850 1800 2850
Wire Wire Line
	3100 1950 2950 1950
Wire Wire Line
	3100 2000 2950 2000
Wire Wire Line
	3100 2050 2950 2050
Wire Wire Line
	3100 2100 2950 2100
Wire Wire Line
	3100 2200 2950 2200
Wire Wire Line
	3100 2250 2950 2250
Wire Wire Line
	3100 2350 2950 2350
Wire Wire Line
	3100 2600 2950 2600
Wire Wire Line
	3100 2700 2950 2700
Text Label 1750 2300 0    30   ~ 0
+3.3V_brain
Text Label 3100 1900 2    30   ~ 0
+5V_brain
Text Label 3100 2050 2    30   ~ 0
TXD
Text Label 3100 2100 2    30   ~ 0
RXD
Text Label 3100 2250 2    30   ~ 0
E_STOP_pi
Wire Wire Line
	2000 3400 1850 3400
Wire Wire Line
	2000 3800 1850 3800
Wire Wire Line
	2000 4150 1850 4150
Wire Wire Line
	3150 3200 3000 3200
Wire Wire Line
	3150 3250 3000 3250
Wire Wire Line
	3150 3300 3000 3300
Wire Wire Line
	3150 3350 3000 3350
Wire Wire Line
	3150 3400 3000 3400
Wire Wire Line
	3150 3500 3000 3500
Wire Wire Line
	3150 3650 3000 3650
Wire Wire Line
	3150 3900 3000 3900
Wire Wire Line
	3150 4000 3000 4000
Text Label 1800 3200 0    30   ~ 0
+3.3V_brain
Text Label 1850 3400 0    30   ~ 0
GND
Text Label 1800 3600 0    30   ~ 0
+3.3V_brain
Text Label 1850 3800 0    30   ~ 0
GND
Text Label 1850 4150 0    30   ~ 0
GND
Text Label 3150 3300 2    30   ~ 0
GND
Text Label 3150 3350 2    30   ~ 0
TXD
Text Label 3150 3400 2    30   ~ 0
RXD
Text Label 3150 3500 2    30   ~ 0
GND
Text Label 3150 3650 2    30   ~ 0
GND
Text Label 3150 3900 2    30   ~ 0
GND
Text Label 3150 4000 2    30   ~ 0
GND
$Comp
L JPL_Robotics_Lib:6posheader J24
U 1 1 60A8A929
P 2300 5550
F 0 "J24" H 2406 5973 50  0000 C CNN
F 1 "6posheader" H 2500 6050 50  0001 C CNN
F 2 "JPL Robotics:455-1708-ND" H 2300 5550 50  0001 C CNN
F 3 "" H 2300 5550 50  0001 C CNN
	1    2300 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 5250 2750 5250
Wire Wire Line
	2500 5300 2750 5300
Wire Wire Line
	2500 5350 2750 5350
Text Label 2750 5250 2    30   ~ 0
+12V_brain
Text Label 2750 5300 2    30   ~ 0
+5V_brain
Text Label 2750 5350 2    30   ~ 0
GND
Wire Wire Line
	2500 5450 2750 5450
Text Label 2750 5400 2    30   ~ 0
SCL_rpi
Text Label 2750 5450 2    30   ~ 0
SDA_rpi
Text Notes 1800 1500 0    98   ~ 0
Raspberry Pi breakout
Text Notes 1600 4900 0    98   ~ 0
Arduino Communication
Text Label 3100 2350 2    30   ~ 0
GND
Text Label 1800 2850 0    30   ~ 0
GND
Text Label 1800 2500 0    30   ~ 0
GND
Text Label 1800 2100 0    30   ~ 0
GND
$Comp
L Device:C_Small C31
U 1 1 60A8A94F
P 1350 2100
F 0 "C31" H 1442 2146 50  0000 L CNN
F 1 "100nf" H 1442 2055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 1350 2100 50  0001 C CNN
F 3 "~" H 1350 2100 50  0001 C CNN
	1    1350 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1900 1350 2000
Wire Wire Line
	2500 5400 2750 5400
NoConn ~ 2500 5500
$Comp
L power:PWR_FLAG #FLG06
U 1 1 60A8A96F
P 1600 1850
F 0 "#FLG06" H 1600 1925 50  0001 C CNN
F 1 "PWR_FLAG" V 1500 2100 50  0000 C CNN
F 2 "" H 1600 1850 50  0001 C CNN
F 3 "~" H 1600 1850 50  0001 C CNN
	1    1600 1850
	1    0    0    -1  
$EndComp
Text Notes 1250 2600 0    50   ~ 0
*3.3v bus \nsupplied\nby rpi
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
F 1 "WM6548-ND" H 5650 1834 50  0000 C CNN
F 2 "JPL Robotics:WM6548-ND" H 5950 1850 50  0001 C CNN
F 3 "" H 5950 1850 50  0001 C CNN
	1    5650 1850
	1    0    0    -1  
$EndComp
$Comp
L JPL_Robotics_Lib:+5V_brain #PWR061
U 1 1 618E53AB
P 1400 3100
F 0 "#PWR061" H 1400 2950 50  0001 C CNN
F 1 "+5V_brain" H 1415 3273 50  0000 C CNN
F 2 "" H 1400 3100 50  0001 C CNN
F 3 "" H 1400 3100 50  0001 C CNN
	1    1400 3100
	1    0    0    -1  
$EndComp
$Comp
L JPL_Robotics_Lib:GND_brain #PWR059
U 1 1 618E86D3
P 1350 2200
F 0 "#PWR059" H 1350 1950 50  0001 C CNN
F 1 "GND_brain" H 1100 2150 50  0000 C CNN
F 2 "" H 1350 2200 50  0001 C CNN
F 3 "" H 1350 2200 50  0001 C CNN
	1    1350 2200
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
Text Label 5000 2000 0    50   ~ 0
+5V_brain
Text Label 5200 2200 0    50   ~ 0
GND
Text Label 6350 2400 2    50   ~ 0
+12V_brain
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
	1950 2200 1800 2200
Text Label 1800 2200 0    30   ~ 0
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
	1950 1950 1800 1950
Wire Wire Line
	1950 2000 1800 2000
Text Label 1800 1950 0    30   ~ 0
SDA_rpi
Text Label 1800 2000 0    30   ~ 0
SCL_rpi
Wire Wire Line
	2000 3250 1850 3250
Wire Wire Line
	2000 3300 1850 3300
Text Label 1850 3250 0    30   ~ 0
SDA_rpi
Text Label 1850 3300 0    30   ~ 0
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
Wire Wire Line
	1950 2250 1800 2250
Text Label 1800 2250 0    30   ~ 0
OEservos
Text Label 6250 2200 2    50   ~ 0
GND
Text Label 6250 2000 2    50   ~ 0
+5V_brain
Wire Wire Line
	5900 2000 6250 2000
Wire Wire Line
	5900 2200 6250 2200
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
Text Label 5050 2600 0    39   ~ 0
+3.3V_brain
Text Label 6250 2600 2    39   ~ 0
+3.3V_brain
Wire Wire Line
	5900 2600 6250 2600
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
ESTOP LED logic
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
P 1400 3250
AR Path="/6139D881" Ref="R?"  Part="1" 
AR Path="/60A51BAC/6139D881" Ref="R?"  Part="1" 
AR Path="/60A5279E/6139D881" Ref="R11"  Part="1" 
F 0 "R11" H 1468 3296 50  0000 L CNN
F 1 "4.7k" H 1468 3205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1440 3240 50  0001 C CNN
F 3 "~" H 1400 3250 50  0001 C CNN
	1    1400 3250
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
F 1 "200" V 9550 2200 50  0000 L CNN
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
F 1 "200" V 9550 2650 50  0000 L CNN
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
Serial TXD/RXD LED logic
Wire Notes Line
	7100 3450 7100 5200
Wire Notes Line
	7100 5200 10350 5200
Wire Notes Line
	10350 5200 10350 3450
Wire Notes Line
	10350 3450 7100 3450
Text Notes 7850 5500 0    98   ~ 0
Alert Signal LED logic
Wire Notes Line
	10350 5300 7100 5300
$Comp
L Device:C_Small C32
U 1 1 61420FF3
P 3450 2000
F 0 "C32" H 3542 2046 50  0000 L CNN
F 1 "100nf" H 3542 1955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 3450 2000 50  0001 C CNN
F 3 "~" H 3450 2000 50  0001 C CNN
	1    3450 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1900 3450 1900
$Comp
L JPL_Robotics_Lib:GND_brain #PWR062
U 1 1 614285E9
P 3450 2100
F 0 "#PWR062" H 3450 1850 50  0001 C CNN
F 1 "GND_brain" H 3700 2050 50  0000 C CNN
F 2 "" H 3450 2100 50  0001 C CNN
F 3 "" H 3450 2100 50  0001 C CNN
	1    3450 2100
	1    0    0    -1  
$EndComp
$Comp
L JPL_Robotics_Lib:+3.3V_brain #PWR060
U 1 1 614BE59A
P 1400 1850
F 0 "#PWR060" H 1400 1700 50  0001 C CNN
F 1 "+3.3V_brain" V 1300 2050 50  0000 C CNN
F 2 "" H 1400 1850 50  0001 C CNN
F 3 "" H 1400 1850 50  0001 C CNN
	1    1400 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1900 1400 1900
Wire Wire Line
	1400 1850 1400 1900
Connection ~ 1400 1900
Wire Wire Line
	1400 1900 1600 1900
Wire Wire Line
	1600 1850 1600 1900
Connection ~ 1600 1900
Wire Wire Line
	1600 1900 1950 1900
$Comp
L Device:R_US R?
U 1 1 613A416D
P 9450 1800
AR Path="/613A416D" Ref="R?"  Part="1" 
AR Path="/60A51BAC/613A416D" Ref="R?"  Part="1" 
AR Path="/60A5279E/613A416D" Ref="R18"  Part="1" 
F 0 "R18" V 9350 1700 50  0000 L CNN
F 1 "200" V 9550 1750 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9490 1790 50  0001 C CNN
F 3 "~" H 9450 1800 50  0001 C CNN
	1    9450 1800
	0    1    1    0   
$EndComp
Text Label 9650 1650 2    50   ~ 0
E_STOP
Wire Wire Line
	7900 2600 8200 2600
Text Notes 3300 3250 0    31   ~ 0
Todo: eric add more leds for \nthe other gpio pins
Text Notes 9800 1500 0    31   ~ 0
- Roboclaw ESTOPs active low \n(emergency stop when pulled low)\n- LEDs off when estop’ed (nominal on)
Text Notes 7200 1450 0    31   ~ 0
TODO: check logic here, make sure it’s what we want
Text Notes 7200 5100 0    31   ~ 0
TODO: check logic here, make sure it’s what we want
$Comp
L JPL_Robotics_Lib:SSW-104-01-F-T J25
U 1 1 61D7BA49
P 3350 7650
AR Path="/61D7BA49" Ref="J25"  Part="1" 
AR Path="/60A5279E/61D7BA49" Ref="J25"  Part="1" 
F 0 "J25" H 3578 8430 50  0000 L CNN
F 1 "SSW-104-01-F-T" H 3578 8385 50  0001 L CNN
F 2 "JPL Robotics:SSW-104-01-F-T" H 3350 7650 50  0001 C CNN
F 3 "" H 3350 7650 50  0001 C CNN
	1    3350 7650
	1    0    0    -1  
$EndComp
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
	9300 2100 9650 2100
Wire Wire Line
	9300 2550 9650 2550
$Comp
L JPL_Robotics_Lib:Mounting_Holes M?
U 1 1 61DB5332
P 1050 6900
AR Path="/60A51BAC/61DB5332" Ref="M?"  Part="1" 
AR Path="/60A5279E/61DB5332" Ref="M1"  Part="1" 
F 0 "M1" V 1480 7079 30  0000 L CNN
F 1 "Mounting_Holes" V 1540 7079 30  0000 L CNN
F 2 "JPL Robotics:raspberry_pi_3b" H 1230 7080 30  0001 C CNN
F 3 "" H 1230 7080 30  0001 C CNN
	1    1050 6900
	0    1    1    0   
$EndComp
$Comp
L JPL_Robotics_Lib:CTS-206-124 SW1
U 1 1 61DFAF04
P 8550 3150
F 0 "SW1" H 8700 4683 50  0000 C CNN
F 1 "CT206124-ND" H 8750 3200 50  0000 C CNN
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
Text Label 9800 5050 2    50   ~ 0
RXD_LED
Text Label 9800 4350 2    50   ~ 0
TXD_LED
Wire Wire Line
	8650 6250 9200 6250
Text Label 9900 6250 2    50   ~ 0
ALERT_LED
$Comp
L JPL_Robotics_Lib:DC7G3HWA U6
U 1 1 62C709B3
P 5400 6650
F 0 "U6" H 5950 7665 50  0000 C CNN
F 1 "DC7G3HWA" H 5950 7574 50  0000 C CNN
F 2 "JPL Robotics:DC7G3HWA_led_array" H 5400 6650 50  0001 C CNN
F 3 "" H 5400 6650 50  0001 C CNN
	1    5400 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 5900 5700 5900
Wire Wire Line
	5700 6000 5150 6000
Wire Wire Line
	5700 6100 5150 6100
Text Label 5150 5900 0    50   ~ 0
TXD_LED
Text Label 5150 6000 0    50   ~ 0
RXD_LED
Text Label 5150 6100 0    50   ~ 0
ALERT_LED
Wire Wire Line
	5700 6600 5200 6600
Wire Wire Line
	5700 6700 5200 6700
Wire Wire Line
	5700 6800 5200 6800
Text Label 5200 6800 0    50   ~ 0
ESTOP_LED_1
Text Label 5200 6700 0    50   ~ 0
ESTOP_LED_2
Text Label 5200 6600 0    50   ~ 0
ESTOP_LED_3
$Comp
L JPL_Robotics_Lib:GND_brain #PWR075
U 1 1 62CA41E0
P 6400 6950
F 0 "#PWR075" H 6400 6700 50  0001 C CNN
F 1 "GND_brain" H 6550 6800 50  0000 R CNN
F 2 "" H 6400 6950 50  0001 C CNN
F 3 "" H 6400 6950 50  0001 C CNN
	1    6400 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 5900 6400 5900
Wire Wire Line
	6400 5900 6400 6000
Wire Wire Line
	6200 6800 6400 6800
Connection ~ 6400 6800
Wire Wire Line
	6400 6800 6400 6950
Wire Wire Line
	6200 6700 6400 6700
Connection ~ 6400 6700
Wire Wire Line
	6400 6700 6400 6800
Wire Wire Line
	6200 6600 6400 6600
Connection ~ 6400 6600
Wire Wire Line
	6400 6600 6400 6700
Wire Wire Line
	6200 6500 6400 6500
Connection ~ 6400 6500
Wire Wire Line
	6400 6500 6400 6600
Wire Wire Line
	6200 6400 6400 6400
Connection ~ 6400 6400
Wire Wire Line
	6400 6400 6400 6500
Wire Wire Line
	6200 6300 6400 6300
Connection ~ 6400 6300
Wire Wire Line
	6400 6300 6400 6400
Wire Wire Line
	6200 6200 6400 6200
Connection ~ 6400 6200
Wire Wire Line
	6400 6200 6400 6300
Wire Wire Line
	6200 6100 6400 6100
Connection ~ 6400 6100
Wire Wire Line
	6400 6100 6400 6200
Wire Wire Line
	6200 6000 6400 6000
Connection ~ 6400 6000
Wire Wire Line
	6400 6000 6400 6100
Text Label 1750 1900 0    30   ~ 0
+3.3V_brain
Wire Wire Line
	5050 2600 5400 2600
Wire Wire Line
	1750 2300 1950 2300
Wire Wire Line
	1800 3200 2000 3200
Wire Wire Line
	1800 3600 2000 3600
Text Notes 2300 7650 0    50   ~ 0
\n
$Comp
L JPL_Robotics_Lib:#6THRU-HOLE MH?
U 1 1 626D877C
P 1900 7100
AR Path="/60A51BAC/626D877C" Ref="MH?"  Part="1" 
AR Path="/60A5279E/626D877C" Ref="MH9"  Part="1" 
F 0 "MH9" H 2031 7100 30  0000 L CNN
F 1 "#6THRU-HOLE" H 1900 7240 30  0001 C CNN
F 2 "JPL Robotics:#6THRU-HOLE" H 1900 7190 30  0001 C CNN
F 3 "" H 1900 7190 30  0001 C CNN
	1    1900 7100
	1    0    0    -1  
$EndComp
$Comp
L JPL_Robotics_Lib:#6THRU-HOLE MH?
U 1 1 626D8782
P 1900 7250
AR Path="/60A51BAC/626D8782" Ref="MH?"  Part="1" 
AR Path="/60A5279E/626D8782" Ref="MH10"  Part="1" 
F 0 "MH10" H 2031 7250 30  0000 L CNN
F 1 "#6THRU-HOLE" H 1900 7390 30  0001 C CNN
F 2 "JPL Robotics:#6THRU-HOLE" H 1900 7340 30  0001 C CNN
F 3 "" H 1900 7340 30  0001 C CNN
	1    1900 7250
	1    0    0    -1  
$EndComp
$Comp
L JPL_Robotics_Lib:#6THRU-HOLE MH?
U 1 1 626D8788
P 1900 7400
AR Path="/60A51BAC/626D8788" Ref="MH?"  Part="1" 
AR Path="/60A5279E/626D8788" Ref="MH11"  Part="1" 
F 0 "MH11" H 2031 7400 30  0000 L CNN
F 1 "#6THRU-HOLE" H 1900 7540 30  0001 C CNN
F 2 "JPL Robotics:#6THRU-HOLE" H 1900 7490 30  0001 C CNN
F 3 "" H 1900 7490 30  0001 C CNN
	1    1900 7400
	1    0    0    -1  
$EndComp
$Comp
L JPL_Robotics_Lib:#6THRU-HOLE MH?
U 1 1 626D878E
P 1900 7550
AR Path="/60A51BAC/626D878E" Ref="MH?"  Part="1" 
AR Path="/60A5279E/626D878E" Ref="MH12"  Part="1" 
F 0 "MH12" H 2031 7550 30  0000 L CNN
F 1 "#6THRU-HOLE" H 1900 7690 30  0001 C CNN
F 2 "JPL Robotics:#6THRU-HOLE" H 1900 7640 30  0001 C CNN
F 3 "" H 1900 7640 30  0001 C CNN
	1    1900 7550
	1    0    0    -1  
$EndComp
Text Notes 1450 7000 0    31   ~ 0
For mounting brain board to motor board
Text Notes 800  7000 0    31   ~ 0
RPi mounting holes
Wire Wire Line
	5400 2700 5100 2700
Text Label 5100 2700 0    50   ~ 0
12V_EN
Text Label 3100 2300 2    30   ~ 0
12V_EN
Wire Wire Line
	2950 2300 3100 2300
Text Label 3100 2600 2    30   ~ 0
GND
Text Label 3100 2700 2    30   ~ 0
GND
Text Label 3100 2200 2    30   ~ 0
GND
Text Label 3100 2000 2    30   ~ 0
GND
Wire Notes Line
	1150 4600 3900 4600
Wire Notes Line
	3900 4600 3900 5700
Wire Notes Line
	3900 5700 1150 5700
Wire Notes Line
	1150 5700 1150 4600
Wire Notes Line
	1150 1100 3900 1100
Wire Notes Line
	3900 1100 3900 4450
Wire Notes Line
	1150 4450 1150 1100
Wire Notes Line
	3900 4450 1150 4450
Wire Notes Line
	4450 1100 6900 1100
Text Notes 5250 5500 0    98   ~ 0
LED array
Wire Notes Line
	4450 5300 6900 5300
Wire Notes Line
	6900 5300 6900 7250
Wire Notes Line
	6900 7250 4450 7250
Wire Notes Line
	4450 7250 4450 5300
Text Notes 9500 5800 0    31   ~ 0
ina260 alert signal is default \nactive low (APOL=0), LED \nwill light on alert low
$Comp
L JPL_Robotics_Lib:+5V_brain #PWR069
U 1 1 62FBEEB5
P 7900 1600
F 0 "#PWR069" H 7900 1450 50  0001 C CNN
F 1 "+5V_brain" V 7915 1727 50  0000 L CNN
F 2 "" H 7900 1600 50  0001 C CNN
F 3 "" H 7900 1600 50  0001 C CNN
	1    7900 1600
	0    -1   -1   0   
$EndComp
$Comp
L JPL_Robotics_Lib:+5V_brain #PWR070
U 1 1 62FBF43E
P 7900 2100
F 0 "#PWR070" H 7900 1950 50  0001 C CNN
F 1 "+5V_brain" V 7915 2227 50  0000 L CNN
F 2 "" H 7900 2100 50  0001 C CNN
F 3 "" H 7900 2100 50  0001 C CNN
	1    7900 2100
	0    -1   -1   0   
$EndComp
$Comp
L JPL_Robotics_Lib:+5V_brain #PWR071
U 1 1 62FBF7C3
P 7900 2600
F 0 "#PWR071" H 7900 2450 50  0001 C CNN
F 1 "+5V_brain" V 7915 2727 50  0000 L CNN
F 2 "" H 7900 2600 50  0001 C CNN
F 3 "" H 7900 2600 50  0001 C CNN
	1    7900 2600
	0    -1   -1   0   
$EndComp
Text Notes 1750 4400 0    31   ~ 0
For GPIO avilability, see worksheet here: \nhttps://www.notion.so/GPIO-Pins-Worksheet-9ebb23e9beee4172a7b114ba388c0c59
Text Notes 9700 2950 0    31   ~ 0
LED R sizing: \n(V_in - LED forward voltage) / \ndesired current = resistor value
Text Notes 4950 7150 0    31   ~ 0
LED V forward = 2 to 2.45 V\nChoose 15mA forward current
$Comp
L Device:R_US R?
U 1 1 62FC3C34
P 9350 4350
AR Path="/62FC3C34" Ref="R?"  Part="1" 
AR Path="/60A51BAC/62FC3C34" Ref="R?"  Part="1" 
AR Path="/60A5279E/62FC3C34" Ref="R22"  Part="1" 
F 0 "R22" V 9250 4250 50  0000 L CNN
F 1 "82" V 9450 4300 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9390 4340 50  0001 C CNN
F 3 "~" H 9350 4350 50  0001 C CNN
	1    9350 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 4350 9200 4350
Wire Wire Line
	9500 4350 9800 4350
$Comp
L Device:R_US R?
U 1 1 62FDC871
P 9350 5050
AR Path="/62FDC871" Ref="R?"  Part="1" 
AR Path="/60A51BAC/62FDC871" Ref="R?"  Part="1" 
AR Path="/60A5279E/62FDC871" Ref="R23"  Part="1" 
F 0 "R23" V 9250 4950 50  0000 L CNN
F 1 "82" V 9450 5000 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9390 5040 50  0001 C CNN
F 3 "~" H 9350 5050 50  0001 C CNN
	1    9350 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 5050 9200 5050
Wire Wire Line
	9500 5050 9800 5050
$Comp
L Device:R_US R?
U 1 1 62FF5520
P 9350 6250
AR Path="/62FF5520" Ref="R?"  Part="1" 
AR Path="/60A51BAC/62FF5520" Ref="R?"  Part="1" 
AR Path="/60A5279E/62FF5520" Ref="R24"  Part="1" 
F 0 "R24" V 9250 6150 50  0000 L CNN
F 1 "82" V 9450 6200 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9390 6240 50  0001 C CNN
F 3 "~" H 9350 6250 50  0001 C CNN
	1    9350 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	9500 6250 9900 6250
Wire Notes Line
	7100 6400 10350 6400
Wire Notes Line
	7100 5300 7100 6400
Wire Notes Line
	10350 5300 10350 6400
Text Label 3100 2400 2    30   ~ 0
RPI_LED_1
Wire Wire Line
	2950 2400 3100 2400
Text Label 1800 2800 0    30   ~ 0
RPI_LED_2
Wire Wire Line
	1950 2800 1800 2800
Text Label 1800 2600 0    30   ~ 0
RPI_LED_3
Wire Wire Line
	1950 2600 1800 2600
Text Label 1800 2650 0    30   ~ 0
RPI_LED_4
Wire Wire Line
	1950 2650 1800 2650
Text Label 5150 6200 2    50   ~ 0
RPI_LED_1
$Comp
L Device:R_US R?
U 1 1 63060529
P 5450 6200
AR Path="/63060529" Ref="R?"  Part="1" 
AR Path="/60A51BAC/63060529" Ref="R?"  Part="1" 
AR Path="/60A5279E/63060529" Ref="R25"  Part="1" 
F 0 "R25" V 5400 5950 50  0000 L CNN
F 1 "82" V 5400 6300 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5490 6190 50  0001 C CNN
F 3 "~" H 5450 6200 50  0001 C CNN
	1    5450 6200
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 63070EA8
P 5450 6300
AR Path="/63070EA8" Ref="R?"  Part="1" 
AR Path="/60A51BAC/63070EA8" Ref="R?"  Part="1" 
AR Path="/60A5279E/63070EA8" Ref="R26"  Part="1" 
F 0 "R26" V 5400 6050 50  0000 L CNN
F 1 "82" V 5400 6400 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5490 6290 50  0001 C CNN
F 3 "~" H 5450 6300 50  0001 C CNN
	1    5450 6300
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 630714EF
P 5450 6400
AR Path="/630714EF" Ref="R?"  Part="1" 
AR Path="/60A51BAC/630714EF" Ref="R?"  Part="1" 
AR Path="/60A5279E/630714EF" Ref="R27"  Part="1" 
F 0 "R27" V 5400 6150 50  0000 L CNN
F 1 "82" V 5400 6500 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5490 6390 50  0001 C CNN
F 3 "~" H 5450 6400 50  0001 C CNN
	1    5450 6400
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 630718BC
P 5450 6500
AR Path="/630718BC" Ref="R?"  Part="1" 
AR Path="/60A51BAC/630718BC" Ref="R?"  Part="1" 
AR Path="/60A5279E/630718BC" Ref="R28"  Part="1" 
F 0 "R28" V 5400 6250 50  0000 L CNN
F 1 "82" V 5400 6600 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5490 6490 50  0001 C CNN
F 3 "~" H 5450 6500 50  0001 C CNN
	1    5450 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 6200 5700 6200
Wire Wire Line
	5600 6300 5700 6300
Wire Wire Line
	5600 6400 5700 6400
Wire Wire Line
	5600 6500 5700 6500
Wire Wire Line
	5150 6200 5300 6200
Text Label 5150 6300 2    50   ~ 0
RPI_LED_2
Wire Wire Line
	5150 6300 5300 6300
Text Label 5150 6400 2    50   ~ 0
RPI_LED_3
Wire Wire Line
	5150 6400 5300 6400
Text Label 5150 6500 2    50   ~ 0
RPI_LED_4
Wire Wire Line
	5150 6500 5300 6500
Wire Wire Line
	1950 2050 1800 2050
Text Label 1800 2050 0    16   ~ 0
X_RPI_GPIO_GCLK
Wire Wire Line
	2000 3350 1850 3350
Text Label 1850 3350 0    16   ~ 0
X_RPI_GPIO_GCLK
$Comp
L JPL_Robotics_Lib:S9175-ND_rpi_breakout J22
U 1 1 60A8A979
P 1850 3000
F 0 "J22" H 2450 4315 50  0000 C CNN
F 1 "S9175-ND_rpi_breakout" H 2450 4224 50  0000 C CNN
F 2 "JPL Robotics:S9175-ND" H 2100 4250 50  0001 C CNN
F 3 "" H 2100 4250 50  0001 C CNN
	1    1850 3000
	1    0    0    -1  
$EndComp
Text Label 1800 2150 0    16   ~ 0
X_RPI_GPIO_GEN0
Wire Wire Line
	1950 2150 1800 2150
Text Label 1800 2350 0    16   ~ 0
X_RPI_SPI_MOSI
Text Label 1800 2400 0    16   ~ 0
X_RPI_SPI_MISO
Text Label 1800 2550 0    16   ~ 0
X_RPI_EEPROM_IDSD
Text Label 1800 2700 0    16   ~ 0
X_RPI_GPIO13
Text Label 1800 2750 0    16   ~ 0
X_RPI_GPIO19
Text Label 3100 2150 2    16   ~ 0
X_RPI_GPIO_GEN1
Text Label 3100 2650 2    16   ~ 0
X_RPI_GPIO12
Text Label 3100 2750 2    16   ~ 0
X_RPI_GPIO16
Text Label 3100 2800 2    16   ~ 0
X_RPI_GPIO20
Text Label 3100 2850 2    16   ~ 0
X_RPI_GPIO21
Text Label 1800 2450 0    16   ~ 0
X_RPI_SPI_CLK
Text Label 3100 2550 2    16   ~ 0
X_RPI_EEPROM_IDSC
Text Label 3100 2450 2    16   ~ 0
X_RPI_SPI_CE0_N
Text Label 3100 2500 2    16   ~ 0
X_RPI_SPI_CE1_N
Wire Wire Line
	1950 2350 1800 2350
Wire Wire Line
	1950 2400 1800 2400
Wire Wire Line
	1800 2450 1950 2450
Wire Wire Line
	1800 2550 1950 2550
Wire Wire Line
	1800 2700 1950 2700
Wire Wire Line
	1800 2750 1950 2750
Wire Wire Line
	2950 2150 3100 2150
Wire Wire Line
	2950 2450 3100 2450
Wire Wire Line
	2950 2650 3100 2650
Wire Wire Line
	2950 2550 3100 2550
Wire Wire Line
	2950 2500 3100 2500
Wire Wire Line
	2950 2750 3100 2750
Wire Wire Line
	2950 2800 3100 2800
Wire Wire Line
	2950 2850 3100 2850
Text Label 3150 4150 2    16   ~ 0
X_RPI_GPIO21
Text Label 3150 4100 2    16   ~ 0
X_RPI_GPIO20
Text Label 3150 4050 2    16   ~ 0
X_RPI_GPIO16
Text Label 3150 3950 2    16   ~ 0
X_RPI_GPIO12
Text Label 3150 3850 2    16   ~ 0
X_RPI_EEPROM_IDSC
Text Label 3150 3800 2    16   ~ 0
X_RPI_SPI_CE1_N
Text Label 3150 3750 2    16   ~ 0
X_RPI_SPI_CE0_N
Text Label 3150 3450 2    16   ~ 0
X_RPI_GPIO_GEN1
Text Label 1850 4050 0    16   ~ 0
X_RPI_GPIO19
Text Label 1850 4000 0    16   ~ 0
X_RPI_GPIO13
Text Label 1850 3850 0    16   ~ 0
X_RPI_EEPROM_IDSD
Text Label 1850 3750 0    16   ~ 0
X_RPI_SPI_CLK
Text Label 1850 3700 0    16   ~ 0
X_RPI_SPI_MISO
Text Label 1850 3650 0    16   ~ 0
X_RPI_SPI_MOSI
Text Label 1850 3450 0    16   ~ 0
X_RPI_GPIO_GEN0
Wire Wire Line
	1850 3450 2000 3450
Wire Wire Line
	1850 3650 2000 3650
Wire Wire Line
	1850 3700 2000 3700
Wire Wire Line
	1850 3750 2000 3750
Wire Wire Line
	1850 3850 2000 3850
Wire Wire Line
	1850 4000 2000 4000
Wire Wire Line
	1850 4050 2000 4050
Wire Wire Line
	3000 3450 3150 3450
Wire Wire Line
	3000 3750 3150 3750
Wire Wire Line
	3000 3800 3150 3800
Wire Wire Line
	3000 3850 3150 3850
Wire Wire Line
	3000 3950 3150 3950
Wire Wire Line
	3000 4050 3150 4050
Wire Wire Line
	3000 4100 3150 4100
Wire Wire Line
	3000 4150 3150 4150
$Comp
L JPL_Robotics_Lib:S9175-ND_rpi_breakout J23
U 1 1 60A8A8FC
P 1900 4300
F 0 "J23" H 2500 5615 50  0000 C CNN
F 1 "S9175-ND_rpi_breakout" H 2500 5524 50  0000 C CNN
F 2 "JPL Robotics:S9175-ND" H 2150 5550 50  0001 C CNN
F 3 "" H 2150 5550 50  0001 C CNN
	1    1900 4300
	1    0    0    -1  
$EndComp
Text Label 1850 3500 0    30   ~ 0
alert
Text Label 1850 3550 0    30   ~ 0
OEservos
Wire Wire Line
	1850 3550 2000 3550
Wire Wire Line
	1850 3500 2000 3500
Text Label 1850 3900 0    30   ~ 0
RPI_LED_3
Text Label 1850 3950 0    30   ~ 0
RPI_LED_4
Text Label 1850 4100 0    30   ~ 0
RPI_LED_2
Text Label 3150 3550 2    30   ~ 0
E_STOP_pi
Text Label 3150 3600 2    30   ~ 0
12V_EN
Text Label 3150 3700 2    30   ~ 0
RPI_LED_1
Wire Wire Line
	1850 3900 2000 3900
Wire Wire Line
	1850 3950 2000 3950
Wire Wire Line
	1850 4100 2000 4100
Wire Wire Line
	3000 3550 3150 3550
Wire Wire Line
	3000 3600 3150 3600
Wire Wire Line
	3000 3700 3150 3700
Wire Wire Line
	9300 1650 9650 1650
Connection ~ 9300 1650
$Comp
L JPL_Robotics_Lib:test_point T13
U 1 1 6422F604
P 9300 1500
F 0 "T13" V 9350 1600 50  0000 R CNN
F 1 "test_point" H 9450 1750 50  0001 C CNN
F 2 "JPL Robotics:test_point" H 9250 1450 50  0001 C CNN
F 3 "" H 9250 1450 50  0001 C CNN
	1    9300 1500
	0    -1   -1   0   
$EndComp
$Comp
L JPL_Robotics_Lib:test_point T14
U 1 1 6428DE15
P 9300 1950
F 0 "T14" V 9350 2050 50  0000 R CNN
F 1 "test_point" H 9450 2200 50  0001 C CNN
F 2 "JPL Robotics:test_point" H 9250 1900 50  0001 C CNN
F 3 "" H 9250 1900 50  0001 C CNN
	1    9300 1950
	0    -1   -1   0   
$EndComp
Connection ~ 9300 2100
$Comp
L JPL_Robotics_Lib:test_point T15
U 1 1 6428E0D4
P 9300 2400
F 0 "T15" V 9350 2500 50  0000 R CNN
F 1 "test_point" H 9450 2650 50  0001 C CNN
F 2 "JPL Robotics:test_point" H 9250 2350 50  0001 C CNN
F 3 "" H 9250 2350 50  0001 C CNN
	1    9300 2400
	0    -1   -1   0   
$EndComp
$Comp
L JPL_Robotics_Lib:PEC08SAAN J?
U 1 1 647A8080
P 1950 5900
AR Path="/60A51BAC/647A8080" Ref="J?"  Part="1" 
AR Path="/60A5279E/647A8080" Ref="J30"  Part="1" 
F 0 "J30" H 1878 5451 50  0000 L CNN
F 1 "PEC08SAAN" H 1878 5360 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 2000 5900 50  0001 C CNN
F 3 "" H 2000 5900 50  0001 C CNN
	1    1950 5900
	1    0    0    -1  
$EndComp
Text Label 1150 6050 0    50   ~ 0
GND
Text Label 1150 6650 0    50   ~ 0
SCL_rpi
Text Label 1150 6750 0    50   ~ 0
SDA_rpi
Text Label 1150 6250 0    50   ~ 0
+5V_brain
Text Label 1150 6350 0    50   ~ 0
+12V_motor
Wire Wire Line
	1150 6050 1600 6050
Wire Wire Line
	1150 6150 1600 6150
Wire Wire Line
	1150 6350 1600 6350
Wire Wire Line
	1150 6650 1600 6650
Text Label 1150 6550 0    50   ~ 0
RXD
Wire Wire Line
	1150 6450 1600 6450
Wire Wire Line
	1150 6550 1600 6550
Text Label 1150 6450 0    50   ~ 0
TXD
Text Notes 900  5950 0    98   ~ 0
Test Pin Header
Text Label 1150 6150 0    50   ~ 0
+3.3V_brain
Wire Wire Line
	1150 6250 1600 6250
Wire Wire Line
	1150 6750 1600 6750
Wire Notes Line
	750  6850 750  5800
Wire Notes Line
	2500 6850 750  6850
Wire Notes Line
	750  5800 2500 5800
Wire Notes Line
	2500 5800 2500 6850
Wire Notes Line
	750  6900 2500 6900
Wire Notes Line
	2500 6900 2500 7650
Wire Notes Line
	2500 7650 750  7650
Wire Notes Line
	750  7650 750  6900
Wire Notes Line
	2650 7650 4200 7650
Wire Notes Line
	4200 5800 4200 7650
Wire Notes Line
	2650 5800 2650 7650
Text Label 5000 2400 0    50   ~ 0
+12V_brain
Wire Wire Line
	5000 2400 5400 2400
Text Label 3100 1950 2    30   ~ 0
+5V_brain
Text Label 3150 3200 2    30   ~ 0
+5V_brain
Text Label 3150 3250 2    30   ~ 0
+5V_brain
$EndSCHEMATC
