EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "MOSFET reverse polarity protection"
Date "2020-02-18"
Rev "1.0"
Comp "www.hexefx.com"
Comment1 "(c) 2020 by Piotr aZpart"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	4300 3400 5250 3400
Text Label 6900 3300 0    70   ~ 0
VTG
Wire Wire Line
	4300 3300 4400 3300
$Comp
L power:GND #PWR01
U 1 1 5C0D14D4
P 5250 4200
F 0 "#PWR01" H 5250 3950 50  0001 C CNN
F 1 "GND" H 5255 4027 50  0000 C CNN
F 2 "" H 5250 4200 50  0001 C CNN
F 3 "" H 5250 4200 50  0001 C CNN
	1    5250 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4200 5250 4150
$Comp
L H_transistors:Q_PMOS_SO8 Q1
U 1 1 5C0D9A53
P 5650 3400
F 0 "Q1" V 6275 3400 50  0000 C CNN
F 1 "SI4497DY" V 6184 3400 50  0000 C CNN
F 2 "H_soic:SOIC8" H 5850 3500 50  0001 C CNN
F 3 "https://www.vishay.com/docs/65748/si4497dy.pdf" H 5650 3400 50  0001 C CNN
	1    5650 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5850 3300 5950 3300
Wire Wire Line
	5450 3000 5400 3000
Wire Wire Line
	5400 3000 5400 3100
Connection ~ 5400 3300
Wire Wire Line
	5400 3300 5450 3300
Wire Wire Line
	5450 3200 5400 3200
Connection ~ 5400 3200
Wire Wire Line
	5400 3200 5400 3300
Wire Wire Line
	5450 3100 5400 3100
Connection ~ 5400 3100
Wire Wire Line
	5400 3100 5400 3200
Wire Wire Line
	5950 3300 5950 3200
Wire Wire Line
	5950 3100 5850 3100
Wire Wire Line
	5850 3200 5950 3200
Connection ~ 5950 3200
Wire Wire Line
	5950 3200 5950 3100
Wire Wire Line
	5950 3300 6500 3300
Connection ~ 5950 3300
$Comp
L H_passives:R R1
U 1 1 5C0E8A2D
P 5650 3900
F 0 "R1" H 5721 3938 40  0000 L CNN
F 1 "100k" H 5721 3862 40  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5580 3900 30  0001 C CNN
F 3 "" H 5650 3900 30  0000 C CNN
	1    5650 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3600 5650 3650
Wire Wire Line
	5650 4100 5650 4150
Wire Wire Line
	5650 4150 5250 4150
Connection ~ 5250 4150
Wire Wire Line
	5250 4150 5250 3400
$Comp
L Diode:BZX84Cxx D1
U 1 1 5C0F0E8C
P 5950 3500
F 0 "D1" V 5904 3579 50  0000 L CNN
F 1 "BZX84C9V1" V 5995 3579 50  0000 L CNN
F 2 "Diode_SMD:D_SOT-23_ANK" H 5950 3325 50  0001 C CNN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bzx84c2v4.pdf" H 5950 3500 50  0001 C CNN
	1    5950 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	5950 3350 5950 3300
Wire Wire Line
	5650 3650 5950 3650
Connection ~ 5650 3650
Wire Wire Line
	5650 3650 5650 3700
$Comp
L Device:Polyfuse_Small F1
U 1 1 5C0AD188
P 4600 3300
F 0 "F1" V 4395 3300 50  0000 C CNN
F 1 "100mA" V 4486 3300 50  0000 C CNN
F 2 "Fuse:Fuse_1206_3216Metric" H 4650 3100 50  0001 L CNN
F 3 "~" H 4600 3300 50  0001 C CNN
	1    4600 3300
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5C0E1E7B
P 4100 3300
F 0 "J1" H 4100 3400 50  0000 C CNN
F 1 "VIN" H 4100 3100 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4100 3300 50  0001 C CNN
F 3 "~" H 4100 3300 50  0001 C CNN
	1    4100 3300
	-1   0    0    -1  
$EndComp
Text Label 5250 3300 2    50   ~ 0
PWR_F
Wire Wire Line
	4700 3300 4800 3300
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5C3335D5
P 4600 3000
F 0 "JP1" H 4600 3205 50  0000 C CNN
F 1 "FuseBypass" H 4600 3114 50  0000 C CNN
F 2 "NetTie:NetTie-2_SMD_Pad0.5mm" H 4600 3000 50  0001 C CNN
F 3 "~" H 4600 3000 50  0001 C CNN
	1    4600 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3000 4400 3000
Wire Wire Line
	4400 3000 4400 3300
Connection ~ 4400 3300
Wire Wire Line
	4400 3300 4500 3300
Wire Wire Line
	4750 3000 4800 3000
Wire Wire Line
	4800 3000 4800 3300
Connection ~ 4800 3300
Wire Wire Line
	4800 3300 5400 3300
$Comp
L H_passives:CAP_NP C1
U 1 1 5C334550
P 6500 3800
F 0 "C1" H 6602 3838 40  0000 L CNN
F 1 "10u" H 6602 3762 40  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6538 3650 30  0001 C CNN
F 3 "" H 6500 3800 60  0000 C CNN
	1    6500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4150 6500 4150
Wire Wire Line
	6500 4150 6500 3950
Connection ~ 5650 4150
Wire Wire Line
	6500 3650 6500 3300
Connection ~ 6500 3300
Wire Wire Line
	6500 3300 6800 3300
$Comp
L H_passives:CAP_NP C2
U 1 1 5C335350
P 6800 3800
F 0 "C2" H 6902 3838 40  0000 L CNN
F 1 "100n" H 6902 3762 40  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6838 3650 30  0001 C CNN
F 3 "" H 6800 3800 60  0000 C CNN
	1    6800 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3650 6800 3300
Connection ~ 6800 3300
Wire Wire Line
	6800 3300 7150 3300
Wire Wire Line
	6800 3950 6800 4150
Wire Wire Line
	6800 4150 6500 4150
Connection ~ 6500 4150
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5C336B0A
P 7350 3300
F 0 "J2" H 7350 3400 50  0000 C CNN
F 1 "VTG" H 7350 3100 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7350 3300 50  0001 C CNN
F 3 "~" H 7350 3300 50  0001 C CNN
	1    7350 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 4150 7100 4150
Wire Wire Line
	7100 4150 7100 3400
Wire Wire Line
	7100 3400 7150 3400
Connection ~ 6800 4150
Text Notes 3450 3400 0    118  Italic 24
Input
Text Notes 7500 3400 0    118  Italic 24
Output/Target
Text Notes 4300 2750 0    50   ~ 0
Optional Polyfuse \nfor overcurrent\nprotection
Text Notes 6550 3950 0    50   ~ 0
25V
Text Notes 6500 4500 0    50   ~ 0
Depending on the max input votage\nchoose the 10uF cap accordingly, or if don't install it  at all\n(target board usually have it's own supply filter caps)
Wire Notes Line
	8950 4250 8950 4550
Wire Notes Line
	8950 4550 6300 4550
Wire Notes Line
	6300 4550 6300 3950
Wire Notes Line
	6300 3950 6400 3850
Wire Notes Line
	6400 3850 6350 3850
Wire Notes Line
	6400 3850 6400 3900
Text Notes 4100 2150 0    118  Italic 24
Low dropout reverse polarity protection
$EndSCHEMATC
