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
	3100 2200 2950 2200
Wire Wire Line
	3100 2350 2950 2350
Wire Wire Line
	3100 2600 2950 2600
Wire Wire Line
	3100 2700 2950 2700
Text Label 3100 1900 2    30   ~ 0
+5V_brain
Text Label 3100 2050 2    30   ~ 0
TXD
Text Label 3100 2100 2    30   ~ 0
RXD
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
Text Label 1850 3400 0    30   ~ 0
GND
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
P 8350 6250
F 0 "J24" H 8456 6673 50  0000 C CNN
F 1 "6posheader" H 8550 6750 50  0001 C CNN
F 2 "JPL Robotics:455-1708-ND" H 8350 6250 50  0001 C CNN
F 3 "" H 8350 6250 50  0001 C CNN
	1    8350 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 5950 8800 5950
Wire Wire Line
	8550 6000 8800 6000
Wire Wire Line
	8550 6050 8800 6050
Text Label 8800 5950 2    30   ~ 0
+12V_brain
Text Label 8800 6000 2    30   ~ 0
+5V_brain
Text Label 8800 6050 2    30   ~ 0
GND
Wire Wire Line
	8550 6150 8800 6150
Text Label 8800 6100 2    30   ~ 0
SCL_rpi
Text Label 8800 6150 2    30   ~ 0
SDA_rpi
Text Notes 1800 1500 0    98   ~ 0
Raspberry Pi breakout
Text Notes 7650 5600 0    98   ~ 0
Arduino Communication
Text Label 3100 2350 2    30   ~ 0
GND
Text Label 1800 2850 0    30   ~ 0
GND
Text Label 1800 2500 0    30   ~ 0
GND
Text Label 1800 2100 0    30   ~ 0
GND
Wire Wire Line
	8550 6100 8800 6100
NoConn ~ 8550 6200
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
Secondary ESTOP header
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
ESTOP_in_2
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
ESTOP_in_3
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
F 1 "PWR_FLAG" H 6450 2500 30  0000 C CNN
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
F 1 "+12V_brain" V 6400 2500 39  0000 L CNN
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
Text Notes 2850 4950 0    98   ~ 0
RPi I2C Header
Wire Wire Line
	3150 5100 2950 5100
Text Label 2950 5100 0    30   ~ 0
SDA_rpi
Wire Wire Line
	3150 5200 2950 5200
Text Label 2950 5200 0    30   ~ 0
SCL_rpi
Wire Wire Line
	3150 5300 2950 5300
Text Label 2950 5300 0    30   ~ 0
GND
Wire Notes Line
	2650 4650 4200 4650
Wire Notes Line
	4450 3400 6900 3400
Text Label 7350 1750 0    50   ~ 0
ESTOP_in_1_pi
Wire Wire Line
	8850 1650 8850 1800
Text Label 9200 2100 2    50   ~ 0
E_STOP2
Text Label 7450 2100 0    50   ~ 0
ESTOP_in_2
Wire Wire Line
	8850 2100 8850 2250
Text Label 9200 2550 2    50   ~ 0
E_STOP3
Text Label 7450 2450 0    50   ~ 0
ESTOP_in_3
Wire Wire Line
	8850 2550 8850 2700
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
F 1 "GND_brain" H 3700 2000 39  0000 C CNN
F 2 "" H 3450 2100 50  0001 C CNN
F 3 "" H 3450 2100 50  0001 C CNN
	1    3450 2100
	1    0    0    -1  
$EndComp
$Comp
L JPL_Robotics_Lib:+3.3V_brain #PWR060
U 1 1 614BE59A
P 6400 2600
F 0 "#PWR060" H 6400 2450 50  0001 C CNN
F 1 "+3.3V_brain" V 6400 2900 39  0000 C CNN
F 2 "" H 6400 2600 50  0001 C CNN
F 3 "" H 6400 2600 50  0001 C CNN
	1    6400 2600
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 613A416D
P 9850 1950
AR Path="/613A416D" Ref="R?"  Part="1" 
AR Path="/60A51BAC/613A416D" Ref="R?"  Part="1" 
AR Path="/60A5279E/613A416D" Ref="R18"  Part="1" 
F 0 "R18" V 9800 1750 39  0000 L CNN
F 1 "68" V 9800 2000 39  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9890 1940 50  0001 C CNN
F 3 "~" H 9850 1950 50  0001 C CNN
	1    9850 1950
	0    1    1    0   
$EndComp
Text Label 9200 1650 2    50   ~ 0
E_STOP
Text Notes 9500 1450 0    31   ~ 0
- Roboclaw ESTOPs active low \n   (emergency stop when pulled low)\n- When enabled by SW1, pull an ESTOP_in_ \n   signal low to cause ESTOP\n- LEDs on when estop’ed (nominal off)
$Comp
L JPL_Robotics_Lib:SSW-104-01-F-T J25
U 1 1 61D7BA49
P 3350 6500
AR Path="/61D7BA49" Ref="J25"  Part="1" 
AR Path="/60A5279E/61D7BA49" Ref="J25"  Part="1" 
F 0 "J25" H 3578 7280 50  0000 L CNN
F 1 "SSW-104-01-F-T" H 3578 7235 50  0001 L CNN
F 2 "JPL Robotics:SSW-104-01-F-T" H 3350 6500 50  0001 C CNN
F 3 "" H 3350 6500 50  0001 C CNN
	1    3350 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 5450 2950 5450
Text Label 2950 5450 0    30   ~ 0
SDA_rpi
Wire Wire Line
	3150 5550 2950 5550
Text Label 2950 5550 0    30   ~ 0
SCL_rpi
Wire Wire Line
	3150 5650 2950 5650
Text Label 2950 5650 0    30   ~ 0
GND
Wire Wire Line
	3150 5800 2950 5800
Text Label 2950 5800 0    30   ~ 0
SDA_rpi
Wire Wire Line
	3150 5900 2950 5900
Text Label 2950 5900 0    30   ~ 0
SCL_rpi
Wire Wire Line
	3150 6000 2950 6000
Text Label 2950 6000 0    30   ~ 0
GND
Wire Wire Line
	3150 6150 2950 6150
Text Label 2950 6150 0    30   ~ 0
SDA_rpi
Wire Wire Line
	3150 6250 2950 6250
Text Label 2950 6250 0    30   ~ 0
SCL_rpi
Wire Wire Line
	3150 6350 2950 6350
Text Label 2950 6350 0    30   ~ 0
GND
Text Notes 3700 5300 0    31   ~ 0
4 redundant i2c \nconnections, for \ntalking to arbitrary \nperipherals
Wire Notes Line
	10800 1100 10800 3350
Wire Notes Line
	7100 1100 10800 1100
Wire Wire Line
	8850 2100 9200 2100
Wire Wire Line
	8850 2550 9200 2550
$Comp
L JPL_Robotics_Lib:Mounting_Holes M?
U 1 1 61DB5332
P 1050 5750
AR Path="/60A51BAC/61DB5332" Ref="M?"  Part="1" 
AR Path="/60A5279E/61DB5332" Ref="M1"  Part="1" 
F 0 "M1" V 1480 5929 30  0000 L CNN
F 1 "Mounting_Holes" V 1540 5929 30  0000 L CNN
F 2 "JPL Robotics:raspberry_pi_3b" H 1230 5930 30  0001 C CNN
F 3 "" H 1230 5930 30  0001 C CNN
	1    1050 5750
	0    1    1    0   
$EndComp
$Comp
L JPL_Robotics_Lib:CTS-206-124 SW1
U 1 1 61DFAF04
P 8100 3150
F 0 "SW1" H 8250 4683 50  0000 C CNN
F 1 "CT206124-ND" H 8300 3200 50  0000 C CNN
F 2 "JPL Robotics:CTS-206-124" H 8100 3150 50  0001 C CNN
F 3 "" H 8100 3150 50  0001 C CNN
	1    8100 3150
	1    0    0    -1  
$EndComp
NoConn ~ 7900 2800
NoConn ~ 7900 2950
NoConn ~ 8700 2800
NoConn ~ 8700 2950
Wire Wire Line
	8700 1900 8700 1800
Wire Wire Line
	8700 1800 8850 1800
Connection ~ 8700 1800
Wire Wire Line
	8700 1800 8700 1750
Wire Wire Line
	8700 2100 8700 2250
Wire Wire Line
	8700 2250 8850 2250
Connection ~ 8700 2250
Wire Wire Line
	8700 2450 8700 2550
Wire Wire Line
	8700 2550 8850 2550
Connection ~ 8700 2550
Wire Wire Line
	8700 2550 8700 2600
Connection ~ 8850 2550
Wire Notes Line
	7100 3350 10800 3350
Text Notes 7150 3300 0    28   ~ 0
Note that two adjacent odd numbered pins \nMUST be connected together, due to the \nimplementation of the switch array
Text Label 10150 1950 0    39   ~ 0
ESTOP_LED_1
Text Label 10150 2950 0    39   ~ 0
ESTOP_LED_3
Text Label 9800 5050 2    50   ~ 0
RXD_LED
$Comp
L JPL_Robotics_Lib:DC7G3HWA U6
U 1 1 62C709B3
P 4850 6650
F 0 "U6" H 5400 7665 50  0000 C CNN
F 1 "DC7G3HWA" H 5400 7574 50  0000 C CNN
F 2 "JPL Robotics:DC7G3HWA_led_array" H 4850 6650 50  0001 C CNN
F 3 "" H 4850 6650 50  0001 C CNN
	1    4850 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 5900 5150 5900
Wire Wire Line
	5150 6000 4600 6000
Text Label 4600 5900 0    50   ~ 0
TXD_LED
Text Label 4600 6000 0    50   ~ 0
RXD_LED
Wire Wire Line
	5150 6600 4650 6600
Wire Wire Line
	5150 6700 4650 6700
Wire Wire Line
	5150 6800 4650 6800
Text Label 4650 6600 0    50   ~ 0
ESTOP_LED_1
Text Label 4650 6700 0    50   ~ 0
ESTOP_LED_2
Text Label 4650 6800 0    50   ~ 0
ESTOP_LED_3
$Comp
L JPL_Robotics_Lib:GND_brain #PWR075
U 1 1 62CA41E0
P 5850 6950
F 0 "#PWR075" H 5850 6700 50  0001 C CNN
F 1 "GND_brain" H 6000 6800 50  0000 R CNN
F 2 "" H 5850 6950 50  0001 C CNN
F 3 "" H 5850 6950 50  0001 C CNN
	1    5850 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 5900 5850 5900
Wire Wire Line
	5850 5900 5850 6000
Wire Wire Line
	5650 6800 5850 6800
Connection ~ 5850 6800
Wire Wire Line
	5850 6800 5850 6950
Wire Wire Line
	5650 6700 5850 6700
Connection ~ 5850 6700
Wire Wire Line
	5850 6700 5850 6800
Wire Wire Line
	5650 6600 5850 6600
Connection ~ 5850 6600
Wire Wire Line
	5850 6600 5850 6700
Wire Wire Line
	5650 6000 5850 6000
Connection ~ 5850 6000
Wire Wire Line
	5050 2600 5400 2600
Text Notes 2300 6500 0    50   ~ 0
\n
$Comp
L JPL_Robotics_Lib:#6THRU-HOLE MH?
U 1 1 626D877C
P 1900 5950
AR Path="/60A51BAC/626D877C" Ref="MH?"  Part="1" 
AR Path="/60A5279E/626D877C" Ref="MH9"  Part="1" 
F 0 "MH9" H 2031 5950 30  0000 L CNN
F 1 "#6THRU-HOLE" H 1900 6090 30  0001 C CNN
F 2 "JPL Robotics:#6THRU-HOLE" H 1900 6040 30  0001 C CNN
F 3 "" H 1900 6040 30  0001 C CNN
	1    1900 5950
	1    0    0    -1  
$EndComp
$Comp
L JPL_Robotics_Lib:#6THRU-HOLE MH?
U 1 1 626D8782
P 1900 6100
AR Path="/60A51BAC/626D8782" Ref="MH?"  Part="1" 
AR Path="/60A5279E/626D8782" Ref="MH10"  Part="1" 
F 0 "MH10" H 2031 6100 30  0000 L CNN
F 1 "#6THRU-HOLE" H 1900 6240 30  0001 C CNN
F 2 "JPL Robotics:#6THRU-HOLE" H 1900 6190 30  0001 C CNN
F 3 "" H 1900 6190 30  0001 C CNN
	1    1900 6100
	1    0    0    -1  
$EndComp
$Comp
L JPL_Robotics_Lib:#6THRU-HOLE MH?
U 1 1 626D8788
P 1900 6250
AR Path="/60A51BAC/626D8788" Ref="MH?"  Part="1" 
AR Path="/60A5279E/626D8788" Ref="MH11"  Part="1" 
F 0 "MH11" H 2031 6250 30  0000 L CNN
F 1 "#6THRU-HOLE" H 1900 6390 30  0001 C CNN
F 2 "JPL Robotics:#6THRU-HOLE" H 1900 6340 30  0001 C CNN
F 3 "" H 1900 6340 30  0001 C CNN
	1    1900 6250
	1    0    0    -1  
$EndComp
$Comp
L JPL_Robotics_Lib:#6THRU-HOLE MH?
U 1 1 626D878E
P 1900 6400
AR Path="/60A51BAC/626D878E" Ref="MH?"  Part="1" 
AR Path="/60A5279E/626D878E" Ref="MH12"  Part="1" 
F 0 "MH12" H 2031 6400 30  0000 L CNN
F 1 "#6THRU-HOLE" H 1900 6540 30  0001 C CNN
F 2 "JPL Robotics:#6THRU-HOLE" H 1900 6490 30  0001 C CNN
F 3 "" H 1900 6490 30  0001 C CNN
	1    1900 6400
	1    0    0    -1  
$EndComp
Text Notes 1450 5850 0    31   ~ 0
For mounting brain board to motor board
Text Notes 800  5850 0    31   ~ 0
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
	9950 5300 9950 6400
Wire Notes Line
	7100 6400 7100 5300
Wire Notes Line
	3900 1100 3900 4450
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
Text Notes 1750 4400 0    31   ~ 0
For GPIO avilability, see worksheet here: \nhttps://www.notion.so/GPIO-Pins-Worksheet-9ebb23e9beee4172a7b114ba388c0c59
Text Notes 9050 3250 0    31   ~ 0
LED R sizing: \n(V_in - collector emitter saturation voltage - LED forward voltage) / \ndesired current = resistor value
Text Notes 4650 7150 0    31   ~ 0
LED forward voltage = 2 to 2.45 V\nChoose R to target 15mA current
$Comp
L Device:R_US R?
U 1 1 62FC3C34
P 9350 4350
AR Path="/62FC3C34" Ref="R?"  Part="1" 
AR Path="/60A51BAC/62FC3C34" Ref="R?"  Part="1" 
AR Path="/60A5279E/62FC3C34" Ref="R22"  Part="1" 
F 0 "R22" V 9250 4250 50  0000 L CNN
F 1 "68" V 9450 4300 50  0000 L CNN
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
F 1 "68" V 9450 5000 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9390 5040 50  0001 C CNN
F 3 "~" H 9350 5050 50  0001 C CNN
	1    9350 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 5050 9200 5050
Wire Wire Line
	9500 5050 9800 5050
Text Label 3100 2400 2    30   ~ 0
RPI_LED_1
Text Label 1800 2800 0    30   ~ 0
RPI_LED_2
Text Label 1800 2600 0    30   ~ 0
RPI_LED_3
Text Label 1800 2650 0    30   ~ 0
RPI_LED_4
Text Label 6450 6100 0    50   ~ 0
RPI_LED_1
$Comp
L Device:R_US R?
U 1 1 63060529
P 6150 6100
AR Path="/63060529" Ref="R?"  Part="1" 
AR Path="/60A51BAC/63060529" Ref="R?"  Part="1" 
AR Path="/60A5279E/63060529" Ref="R25"  Part="1" 
F 0 "R25" V 6100 5850 50  0000 L CNN
F 1 "82" V 6100 6200 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6190 6090 50  0001 C CNN
F 3 "~" H 6150 6100 50  0001 C CNN
	1    6150 6100
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 63070EA8
P 6150 6200
AR Path="/63070EA8" Ref="R?"  Part="1" 
AR Path="/60A51BAC/63070EA8" Ref="R?"  Part="1" 
AR Path="/60A5279E/63070EA8" Ref="R26"  Part="1" 
F 0 "R26" V 6100 5950 50  0000 L CNN
F 1 "82" V 6100 6300 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6190 6190 50  0001 C CNN
F 3 "~" H 6150 6200 50  0001 C CNN
	1    6150 6200
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 630714EF
P 6150 6300
AR Path="/630714EF" Ref="R?"  Part="1" 
AR Path="/60A51BAC/630714EF" Ref="R?"  Part="1" 
AR Path="/60A5279E/630714EF" Ref="R27"  Part="1" 
F 0 "R27" V 6100 6050 50  0000 L CNN
F 1 "82" V 6100 6400 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6190 6290 50  0001 C CNN
F 3 "~" H 6150 6300 50  0001 C CNN
	1    6150 6300
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 630718BC
P 6150 6400
AR Path="/630718BC" Ref="R?"  Part="1" 
AR Path="/60A51BAC/630718BC" Ref="R?"  Part="1" 
AR Path="/60A5279E/630718BC" Ref="R28"  Part="1" 
F 0 "R28" V 6100 6150 50  0000 L CNN
F 1 "82" V 6100 6500 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6190 6390 50  0001 C CNN
F 3 "~" H 6150 6400 50  0001 C CNN
	1    6150 6400
	0    1    1    0   
$EndComp
Text Label 6450 6200 0    50   ~ 0
RPI_LED_2
Text Label 6450 6300 0    50   ~ 0
RPI_LED_3
Text Label 6450 6400 0    50   ~ 0
RPI_LED_4
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
	3000 3600 3150 3600
Wire Wire Line
	8850 1650 9200 1650
Connection ~ 8850 1650
$Comp
L JPL_Robotics_Lib:test_point T13
U 1 1 6422F604
P 8850 1500
F 0 "T13" V 8900 1600 39  0000 R CNN
F 1 "test_point" H 9000 1750 50  0001 C CNN
F 2 "JPL Robotics:test_point" H 8800 1450 50  0001 C CNN
F 3 "" H 8800 1450 50  0001 C CNN
	1    8850 1500
	0    -1   -1   0   
$EndComp
$Comp
L JPL_Robotics_Lib:test_point T14
U 1 1 6428DE15
P 8850 1950
F 0 "T14" V 8900 2050 39  0000 R CNN
F 1 "test_point" H 9000 2200 50  0001 C CNN
F 2 "JPL Robotics:test_point" H 8800 1900 50  0001 C CNN
F 3 "" H 8800 1900 50  0001 C CNN
	1    8850 1950
	0    -1   -1   0   
$EndComp
Connection ~ 8850 2100
$Comp
L JPL_Robotics_Lib:test_point T15
U 1 1 6428E0D4
P 8850 2400
F 0 "T15" V 8900 2500 39  0000 R CNN
F 1 "test_point" H 9000 2650 50  0001 C CNN
F 2 "JPL Robotics:test_point" H 8800 2350 50  0001 C CNN
F 3 "" H 8800 2350 50  0001 C CNN
	1    8850 2400
	0    -1   -1   0   
$EndComp
$Comp
L JPL_Robotics_Lib:PEC08SAAN J?
U 1 1 647A8080
P 1950 4750
AR Path="/60A51BAC/647A8080" Ref="J?"  Part="1" 
AR Path="/60A5279E/647A8080" Ref="J30"  Part="1" 
F 0 "J30" H 1878 4301 50  0000 L CNN
F 1 "PEC08SAAN" H 1878 4210 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 2000 4750 50  0001 C CNN
F 3 "" H 2000 4750 50  0001 C CNN
	1    1950 4750
	1    0    0    -1  
$EndComp
Text Label 1150 4900 0    50   ~ 0
GND
Text Label 1150 5500 0    50   ~ 0
SCL_rpi
Text Label 1150 5600 0    50   ~ 0
SDA_rpi
Text Label 1150 5100 0    50   ~ 0
+5V_brain
Text Label 1150 5200 0    50   ~ 0
+12V_motor
Wire Wire Line
	1150 4900 1600 4900
Wire Wire Line
	1150 5000 1600 5000
Wire Wire Line
	1150 5200 1600 5200
Wire Wire Line
	1150 5500 1600 5500
Text Label 1150 5400 0    50   ~ 0
RXD
Wire Wire Line
	1150 5300 1600 5300
Wire Wire Line
	1150 5400 1600 5400
Text Label 1150 5300 0    50   ~ 0
TXD
Text Notes 900  4800 0    98   ~ 0
Test Pin Header
Text Label 1150 5000 0    50   ~ 0
+3.3V_brain
Wire Wire Line
	1150 5100 1600 5100
Wire Wire Line
	1150 5600 1600 5600
Wire Notes Line
	750  5700 750  4650
Wire Notes Line
	2500 5700 750  5700
Wire Notes Line
	750  4650 2500 4650
Wire Notes Line
	2500 4650 2500 5700
Wire Notes Line
	750  5750 2500 5750
Wire Notes Line
	2500 5750 2500 6500
Wire Notes Line
	2500 6500 750  6500
Wire Notes Line
	750  6500 750  5750
Wire Notes Line
	2650 6500 4200 6500
Wire Notes Line
	4200 4650 4200 6500
Wire Notes Line
	2650 4650 2650 6500
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
Wire Wire Line
	7900 2450 7450 2450
Wire Wire Line
	7900 2100 7450 2100
$Comp
L Transistor_BJT:2N3906 Q4
U 1 1 64ADE81C
P 9450 1750
F 0 "Q4" H 9650 1700 39  0000 L CNN
F 1 "2N3906" H 9650 1750 39  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9650 1675 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3906-D.PDF" H 9450 1750 50  0001 L CNN
	1    9450 1750
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R?
U 1 1 64C0012B
P 9050 1800
AR Path="/64C0012B" Ref="R?"  Part="1" 
AR Path="/60A51BAC/64C0012B" Ref="R?"  Part="1" 
AR Path="/60A5279E/64C0012B" Ref="R36"  Part="1" 
F 0 "R36" V 9000 1600 39  0000 L CNN
F 1 "10k" V 9000 1850 39  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9090 1790 50  0001 C CNN
F 3 "~" H 9050 1800 50  0001 C CNN
	1    9050 1800
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 64EBF3FA
P 6400 2650
F 0 "#FLG01" H 6400 2725 50  0001 C CNN
F 1 "PWR_FLAG" H 6350 2800 30  0000 C CNN
F 2 "" H 6400 2650 50  0001 C CNN
F 3 "~" H 6400 2650 50  0001 C CNN
	1    6400 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 2600 6400 2600
Wire Wire Line
	6400 2600 6400 2650
Connection ~ 6400 2600
Text Label 1800 1900 0    16   ~ 0
3.3V_rpi
Wire Wire Line
	1800 1900 1950 1900
Text Label 1800 2300 0    16   ~ 0
3.3V_rpi
Wire Wire Line
	1800 2300 1950 2300
Text Label 1850 3600 0    16   ~ 0
3.3V_rpi
Wire Wire Line
	1850 3600 2000 3600
Text Label 1850 3200 0    16   ~ 0
3.3V_rpi
Wire Wire Line
	1850 3200 2000 3200
$Comp
L JPL_Robotics_Lib:+3.3V_brain #PWR074
U 1 1 651689EF
P 5050 6100
F 0 "#PWR074" H 5050 5950 50  0001 C CNN
F 1 "+3.3V_brain" V 5065 6227 39  0000 L CNN
F 2 "" H 5050 6100 50  0001 C CNN
F 3 "" H 5050 6100 50  0001 C CNN
	1    5050 6100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 6100 6000 6100
Wire Wire Line
	5650 6200 6000 6200
Wire Wire Line
	5650 6300 6000 6300
Wire Wire Line
	5650 6400 6000 6400
Wire Wire Line
	5050 6100 5150 6100
Wire Wire Line
	5050 6200 5150 6200
Wire Wire Line
	5050 6300 5150 6300
Wire Wire Line
	5050 6400 5150 6400
Wire Wire Line
	6300 6400 6450 6400
Wire Wire Line
	6300 6300 6450 6300
Wire Wire Line
	6300 6200 6450 6200
Wire Wire Line
	6300 6100 6450 6100
$Comp
L Device:R_US R?
U 1 1 652DD0AB
P 1450 3000
AR Path="/652DD0AB" Ref="R?"  Part="1" 
AR Path="/60A51BAC/652DD0AB" Ref="R?"  Part="1" 
AR Path="/60A5279E/652DD0AB" Ref="R34"  Part="1" 
F 0 "R34" H 1450 3150 39  0000 L CNN
F 1 "4.7k" H 1450 2900 39  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1490 2990 50  0001 C CNN
F 3 "~" H 1450 3000 50  0001 C CNN
	1    1450 3000
	1    0    0    -1  
$EndComp
$Comp
L JPL_Robotics_Lib:+3.3V_brain #PWR067
U 1 1 65334004
P 3350 2850
F 0 "#PWR067" H 3350 2700 50  0001 C CNN
F 1 "+3.3V_brain" H 3350 3000 39  0000 C CNN
F 2 "" H 3350 2850 50  0001 C CNN
F 3 "" H 3350 2850 50  0001 C CNN
	1    3350 2850
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R?
U 1 1 654394E6
P 3500 2550
AR Path="/654394E6" Ref="R?"  Part="1" 
AR Path="/60A51BAC/654394E6" Ref="R?"  Part="1" 
AR Path="/60A5279E/654394E6" Ref="R11"  Part="1" 
F 0 "R11" H 3500 2700 39  0000 L CNN
F 1 "4.7k" H 3500 2450 39  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3540 2540 50  0001 C CNN
F 3 "~" H 3500 2550 50  0001 C CNN
	1    3500 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2400 3350 2400
Wire Wire Line
	3500 2350 3500 2400
Wire Wire Line
	3500 2750 3500 2700
$Comp
L JPL_Robotics_Lib:+3.3V_brain #PWR061
U 1 1 654A6BD0
P 1450 3200
F 0 "#PWR061" H 1450 3050 50  0001 C CNN
F 1 "+3.3V_brain" H 1450 3350 39  0000 C CNN
F 2 "" H 1450 3200 50  0001 C CNN
F 3 "" H 1450 3200 50  0001 C CNN
	1    1450 3200
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R?
U 1 1 654A6BD6
P 1300 3000
AR Path="/654A6BD6" Ref="R?"  Part="1" 
AR Path="/60A51BAC/654A6BD6" Ref="R?"  Part="1" 
AR Path="/60A5279E/654A6BD6" Ref="R33"  Part="1" 
F 0 "R33" H 1300 3150 39  0000 L CNN
F 1 "4.7k" H 1300 2900 39  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1340 2990 50  0001 C CNN
F 3 "~" H 1300 3000 50  0001 C CNN
	1    1300 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3150 1450 3200
Wire Wire Line
	1600 3200 1600 3150
Text Notes 3350 3150 0    31   ~ 0
pull-ups
$Comp
L JPL_Robotics_Lib:+5V_motor #PWR068
U 1 1 654D54BD
P 3500 2750
F 0 "#PWR068" H 3500 2600 50  0001 C CNN
F 1 "+5V_motor" H 3450 2900 39  0000 C CNN
F 2 "" H 3500 2750 50  0001 C CNN
F 3 "" H 3500 2750 50  0001 C CNN
	1    3500 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	3350 2700 3350 2850
Text Notes 1200 3500 0    31   ~ 0
pull-up so LEDs will \nbe off at RPI startup
$Comp
L Device:R_US R?
U 1 1 655195EF
P 1150 3000
AR Path="/655195EF" Ref="R?"  Part="1" 
AR Path="/60A51BAC/655195EF" Ref="R?"  Part="1" 
AR Path="/60A5279E/655195EF" Ref="R32"  Part="1" 
F 0 "R32" H 1150 3150 39  0000 L CNN
F 1 "4.7k" H 1150 2900 39  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1190 2990 50  0001 C CNN
F 3 "~" H 1150 3000 50  0001 C CNN
	1    1150 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 65519A0E
P 3350 2550
AR Path="/65519A0E" Ref="R?"  Part="1" 
AR Path="/60A51BAC/65519A0E" Ref="R?"  Part="1" 
AR Path="/60A5279E/65519A0E" Ref="R31"  Part="1" 
F 0 "R31" H 3350 2700 39  0000 L CNN
F 1 "4.7k" H 3350 2450 39  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3390 2540 50  0001 C CNN
F 3 "~" H 3350 2550 50  0001 C CNN
	1    3350 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2800 1600 2850
Wire Wire Line
	1600 2800 1950 2800
Wire Wire Line
	1450 2650 1450 2850
Wire Wire Line
	1450 2650 1950 2650
Wire Wire Line
	1300 2600 1300 2850
Wire Wire Line
	1300 2600 1950 2600
Connection ~ 1450 3200
Wire Wire Line
	1450 3200 1600 3200
Wire Wire Line
	1300 3150 1300 3200
Wire Wire Line
	1300 3200 1450 3200
Text Notes 3250 3400 0    20   ~ 0
RXD is pulled to 5V based on roboclaw \napplication example, see page 62 of \nthe roboclaw user manual for details: \nhttps://downloads.basicmicro.com/\ndocs/roboclaw_user_manual.pdf 
Text Label 1800 2150 0    30   ~ 0
RPI_LED_5
$Comp
L Device:R_US R?
U 1 1 6563065F
P 1600 3000
AR Path="/6563065F" Ref="R?"  Part="1" 
AR Path="/60A51BAC/6563065F" Ref="R?"  Part="1" 
AR Path="/60A5279E/6563065F" Ref="R35"  Part="1" 
F 0 "R35" H 1600 3150 39  0000 L CNN
F 1 "4.7k" H 1600 2900 39  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1640 2990 50  0001 C CNN
F 3 "~" H 1600 3000 50  0001 C CNN
	1    1600 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 2150 1650 2550
Wire Wire Line
	1650 2550 1150 2550
Wire Wire Line
	1150 2550 1150 2850
Wire Wire Line
	1650 2150 1950 2150
Wire Wire Line
	1150 3150 1150 3200
Wire Wire Line
	1150 3200 1300 3200
Connection ~ 1300 3200
Wire Notes Line
	1050 1100 1050 4450
Wire Notes Line
	1050 1100 3900 1100
Wire Notes Line
	1050 4450 3900 4450
Wire Notes Line
	7100 6400 9950 6400
Wire Notes Line
	7100 5300 9950 5300
Text Label 1850 3450 0    30   ~ 0
RPI_LED_5
Wire Wire Line
	1850 3450 2000 3450
Wire Wire Line
	3000 3700 3150 3700
Wire Wire Line
	5050 6500 5150 6500
Wire Wire Line
	5850 6000 5850 6600
$Comp
L Device:R_US R?
U 1 1 65763FEC
P 6150 6500
AR Path="/65763FEC" Ref="R?"  Part="1" 
AR Path="/60A51BAC/65763FEC" Ref="R?"  Part="1" 
AR Path="/60A5279E/65763FEC" Ref="R29"  Part="1" 
F 0 "R29" V 6100 6250 50  0000 L CNN
F 1 "82" V 6100 6600 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6190 6490 50  0001 C CNN
F 3 "~" H 6150 6500 50  0001 C CNN
	1    6150 6500
	0    1    1    0   
$EndComp
Text Label 6450 6500 0    50   ~ 0
RPI_LED_5
Wire Wire Line
	5650 6500 6000 6500
Wire Wire Line
	6300 6500 6450 6500
$Comp
L JPL_Robotics_Lib:+3.3V_brain #PWR081
U 1 1 65795117
P 10100 1550
F 0 "#PWR081" H 10100 1400 50  0001 C CNN
F 1 "+3.3V_brain" V 10100 1850 39  0000 C CNN
F 2 "" H 10100 1550 50  0001 C CNN
F 3 "" H 10100 1550 50  0001 C CNN
	1    10100 1550
	0    1    1    0   
$EndComp
Connection ~ 8850 1800
Wire Wire Line
	8850 1800 8900 1800
Wire Wire Line
	9550 1950 9700 1950
Wire Wire Line
	10000 1950 10150 1950
Text Label 10150 2450 0    39   ~ 0
ESTOP_LED_2
Wire Wire Line
	9200 1800 9250 1800
Wire Wire Line
	9250 1800 9250 1750
$Comp
L Transistor_BJT:2N3906 Q5
U 1 1 658A1FA9
P 9450 2250
F 0 "Q5" H 9650 2200 39  0000 L CNN
F 1 "2N3906" H 9650 2250 39  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9650 2175 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3906-D.PDF" H 9450 2250 50  0001 L CNN
	1    9450 2250
	1    0    0    1   
$EndComp
Wire Wire Line
	9200 2250 9250 2250
Wire Wire Line
	8850 2250 8900 2250
Connection ~ 8850 2250
$Comp
L Device:R_US R?
U 1 1 658D7F61
P 9850 2450
AR Path="/658D7F61" Ref="R?"  Part="1" 
AR Path="/60A51BAC/658D7F61" Ref="R?"  Part="1" 
AR Path="/60A5279E/658D7F61" Ref="R19"  Part="1" 
F 0 "R19" V 9800 2250 39  0000 L CNN
F 1 "68" V 9800 2500 39  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9890 2440 50  0001 C CNN
F 3 "~" H 9850 2450 50  0001 C CNN
	1    9850 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 2450 9700 2450
Wire Wire Line
	10000 2450 10150 2450
Wire Wire Line
	8850 2700 8900 2700
$Comp
L Transistor_BJT:2N3906 Q6
U 1 1 659206D7
P 9450 2750
F 0 "Q6" H 9650 2700 39  0000 L CNN
F 1 "2N3906" H 9650 2750 39  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9650 2675 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3906-D.PDF" H 9450 2750 50  0001 L CNN
	1    9450 2750
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R?
U 1 1 659206DD
P 9850 2950
AR Path="/659206DD" Ref="R?"  Part="1" 
AR Path="/60A51BAC/659206DD" Ref="R?"  Part="1" 
AR Path="/60A5279E/659206DD" Ref="R20"  Part="1" 
F 0 "R20" V 9800 2750 39  0000 L CNN
F 1 "68" V 9800 3000 39  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9890 2940 50  0001 C CNN
F 3 "~" H 9850 2950 50  0001 C CNN
	1    9850 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 2950 9700 2950
Wire Wire Line
	9200 2700 9250 2700
Wire Wire Line
	9250 2700 9250 2750
$Comp
L JPL_Robotics_Lib:+3.3V_brain #PWR082
U 1 1 659512D4
P 10100 2050
F 0 "#PWR082" H 10100 1900 50  0001 C CNN
F 1 "+3.3V_brain" V 10100 2350 39  0000 C CNN
F 2 "" H 10100 2050 50  0001 C CNN
F 3 "" H 10100 2050 50  0001 C CNN
	1    10100 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 1550 10100 1550
Wire Wire Line
	9550 2050 10100 2050
Wire Wire Line
	9550 2550 10100 2550
$Comp
L JPL_Robotics_Lib:+3.3V_brain #PWR083
U 1 1 659B310B
P 10100 2550
F 0 "#PWR083" H 10100 2400 50  0001 C CNN
F 1 "+3.3V_brain" V 10100 2850 39  0000 C CNN
F 2 "" H 10100 2550 50  0001 C CNN
F 3 "" H 10100 2550 50  0001 C CNN
	1    10100 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	10000 2950 10150 2950
$Comp
L Device:R_US R?
U 1 1 659D0B34
P 9050 2250
AR Path="/659D0B34" Ref="R?"  Part="1" 
AR Path="/60A51BAC/659D0B34" Ref="R?"  Part="1" 
AR Path="/60A5279E/659D0B34" Ref="R37"  Part="1" 
F 0 "R37" V 9000 2050 39  0000 L CNN
F 1 "10k" V 9000 2300 39  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9090 2240 50  0001 C CNN
F 3 "~" H 9050 2250 50  0001 C CNN
	1    9050 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 659D205C
P 9050 2700
AR Path="/659D205C" Ref="R?"  Part="1" 
AR Path="/60A51BAC/659D205C" Ref="R?"  Part="1" 
AR Path="/60A5279E/659D205C" Ref="R38"  Part="1" 
F 0 "R38" V 9000 2500 39  0000 L CNN
F 1 "10k" V 9000 2750 39  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9090 2690 50  0001 C CNN
F 3 "~" H 9050 2700 50  0001 C CNN
	1    9050 2700
	0    1    1    0   
$EndComp
$Comp
L JPL_Robotics_Lib:+3.3V_brain #PWR0108
U 1 1 659D3F3B
P 7900 1900
F 0 "#PWR0108" H 7900 1750 50  0001 C CNN
F 1 "+3.3V_brain" V 7900 2200 39  0000 C CNN
F 2 "" H 7900 1900 50  0001 C CNN
F 3 "" H 7900 1900 50  0001 C CNN
	1    7900 1900
	0    -1   -1   0   
$EndComp
$Comp
L JPL_Robotics_Lib:+3.3V_brain #PWR0109
U 1 1 65A04FFC
P 7900 2250
F 0 "#PWR0109" H 7900 2100 50  0001 C CNN
F 1 "+3.3V_brain" V 7900 2550 39  0000 C CNN
F 2 "" H 7900 2250 50  0001 C CNN
F 3 "" H 7900 2250 50  0001 C CNN
	1    7900 2250
	0    -1   -1   0   
$EndComp
$Comp
L JPL_Robotics_Lib:+3.3V_brain #PWR0110
U 1 1 65A0548D
P 7900 2600
F 0 "#PWR0110" H 7900 2450 50  0001 C CNN
F 1 "+3.3V_brain" V 7900 2900 39  0000 C CNN
F 2 "" H 7900 2600 50  0001 C CNN
F 3 "" H 7900 2600 50  0001 C CNN
	1    7900 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7350 1750 7900 1750
Text Label 3250 3550 2    30   ~ 0
ESTOP_in_1_pi
Wire Wire Line
	3000 3550 3250 3550
Text Label 3200 2250 2    30   ~ 0
ESTOP_in_1_pi
Wire Wire Line
	2950 2250 3200 2250
Wire Wire Line
	3300 2100 3300 2350
Wire Wire Line
	3300 2350 3500 2350
Wire Wire Line
	2950 2100 3300 2100
$Comp
L JPL_Robotics_Lib:+3.3V_brain #PWR0111
U 1 1 65B6A9E2
P 5050 6200
F 0 "#PWR0111" H 5050 6050 50  0001 C CNN
F 1 "+3.3V_brain" V 5065 6327 39  0000 L CNN
F 2 "" H 5050 6200 50  0001 C CNN
F 3 "" H 5050 6200 50  0001 C CNN
	1    5050 6200
	0    -1   -1   0   
$EndComp
$Comp
L JPL_Robotics_Lib:+3.3V_brain #PWR0112
U 1 1 65B6ABD3
P 5050 6300
F 0 "#PWR0112" H 5050 6150 50  0001 C CNN
F 1 "+3.3V_brain" V 5065 6427 39  0000 L CNN
F 2 "" H 5050 6300 50  0001 C CNN
F 3 "" H 5050 6300 50  0001 C CNN
	1    5050 6300
	0    -1   -1   0   
$EndComp
$Comp
L JPL_Robotics_Lib:+3.3V_brain #PWR0113
U 1 1 65B6AF00
P 5050 6400
F 0 "#PWR0113" H 5050 6250 50  0001 C CNN
F 1 "+3.3V_brain" V 5065 6527 39  0000 L CNN
F 2 "" H 5050 6400 50  0001 C CNN
F 3 "" H 5050 6400 50  0001 C CNN
	1    5050 6400
	0    -1   -1   0   
$EndComp
$Comp
L JPL_Robotics_Lib:+3.3V_brain #PWR0114
U 1 1 65B6B172
P 5050 6500
F 0 "#PWR0114" H 5050 6350 50  0001 C CNN
F 1 "+3.3V_brain" V 5065 6627 39  0000 L CNN
F 2 "" H 5050 6500 50  0001 C CNN
F 3 "" H 5050 6500 50  0001 C CNN
	1    5050 6500
	0    -1   -1   0   
$EndComp
Text Label 9800 4350 2    50   ~ 0
TXD_LED
Text Notes 6100 7150 0    31   ~ 0
LED R sizing: \n(V_in - LED forward voltage) / \ndesired current = resistor value
$EndSCHEMATC
