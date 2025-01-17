EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "Импульсный\\nстабилизатор напряжения"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 "Шайхуллин "
Comment3 "Кулиев"
Comment4 "Кулиев"
$EndDescr
$Comp
L Device_GOST:R R1
U 1 1 66F342BE
P 9450 6300
F 0 "R1" V 9382 6407 79  0000 L CNN
F 1 "510" H 9350 6300 79  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 9350 6325 60  0001 C CNN
F 3 "" H 9475 6125 60  0001 C CNN
	1    9450 6300
	0    1    1    0   
$EndComp
$Comp
L Device_GOST:VD_ZENER VD1
U 1 1 66F34E45
P 9450 7350
F 0 "VD1" H 9596 7418 79  0000 L CNN
F 1 "Д818Е" H 9596 7283 79  0000 L CNN
F 2 "Diode_THT_RU:Д818Д_P22.50mm_Pad0.8mm" H 9450 7448 79  0001 C CNN
F 3 "" H 9450 7448 79  0001 C CNN
	1    9450 7350
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:C C4
U 1 1 66F378AF
P 10250 7650
F 0 "C4" H 10435 7718 79  0000 L CNN
F 1 "0.15" H 10435 7583 79  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 10175 7650 60  0001 C CNN
F 3 "" H 10275 7750 60  0001 C CNN
	1    10250 7650
	1    0    0    -1  
$EndComp
$Comp
L power_GOST:+12V #PWR03
U 1 1 66F42D75
P 9450 5250
F 0 "#PWR03" H 9450 5150 79  0001 C CNN
F 1 "+12V" H 9450 5471 79  0000 C CNN
F 2 "" V 9450 5375 98  0000 C CNN
F 3 "" H 9450 5375 98  0001 C CNN
	1    9450 5250
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:R R4
U 1 1 66F485F1
P 11000 7200
F 0 "R4" V 10932 7307 79  0000 L CNN
F 1 "510" H 10850 7200 79  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 10900 7225 60  0001 C CNN
F 3 "" H 11025 7025 60  0001 C CNN
	1    11000 7200
	0    1    1    0   
$EndComp
$Comp
L Device_GOST:R R5
U 1 1 66F48F44
P 11000 8050
F 0 "R5" V 10932 8157 79  0000 L CNN
F 1 "360" H 10850 8050 79  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 10900 8075 60  0001 C CNN
F 3 "" H 11025 7875 60  0001 C CNN
	1    11000 8050
	0    1    1    0   
$EndComp
Wire Wire Line
	11000 6850 10250 6850
Wire Wire Line
	9450 6650 9450 6850
Connection ~ 9450 6850
Wire Wire Line
	9450 6850 9450 7100
Wire Wire Line
	11000 8400 11000 8550
Connection ~ 9450 8550
Wire Wire Line
	9450 8550 9450 8650
Wire Wire Line
	9450 7600 9450 8550
Wire Wire Line
	10250 7850 10250 8550
Wire Wire Line
	9450 8550 10250 8550
Connection ~ 10250 8550
Wire Wire Line
	10250 8550 11000 8550
Wire Wire Line
	10250 7450 10250 6850
Connection ~ 10250 6850
Wire Wire Line
	10250 6850 9450 6850
$Comp
L Regulator_Switching:MC34063AD U1
U 1 1 66FC7E25
P 3200 2900
F 0 "U1" H 3200 3367 50  0000 C CNN
F 1 "MC34063ABD-TR" H 3200 3276 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3250 2450 50  0001 L CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MC34063A-D.PDF" H 3700 2800 50  0001 C CNN
	1    3200 2900
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:CP C1
U 1 1 66FC89B3
P 1750 2900
F 0 "C1" H 1850 3050 79  0000 L CNN
F 1 "15" H 1850 2750 79  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-7343-40_Kemet-Y" H 1675 2900 60  0001 C CNN
F 3 "" H 1775 3000 60  0001 C CNN
	1    1750 2900
	1    0    0    -1  
$EndComp
$Comp
L power_GOST:+27V #PWR01
U 1 1 66FC9489
P 2150 2500
F 0 "#PWR01" H 2150 2400 79  0001 C CNN
F 1 "+27V" H 2150 2721 79  0000 C CNN
F 2 "" V 2150 2625 98  0000 C CNN
F 3 "" H 2150 2625 98  0001 C CNN
	1    2150 2500
	1    0    0    -1  
$EndComp
$Comp
L power_GOST:GND #PWR02
U 1 1 66FCA35D
P 2150 3300
F 0 "#PWR02" H 2150 3350 60  0001 C CNN
F 1 "GND" H 2150 3050 79  0001 C CNN
F 2 "" H 2150 3300 60  0000 C CNN
F 3 "" H 2150 3300 60  0001 C CNN
	1    2150 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2700 2650 2700
Wire Wire Line
	2650 2700 2650 2600
Wire Wire Line
	2650 2600 2150 2600
Wire Wire Line
	2150 2600 2150 2700
Wire Wire Line
	2800 3100 2650 3100
Wire Wire Line
	2150 3200 2150 3100
Wire Wire Line
	2150 3300 2150 3200
Connection ~ 2150 3200
Wire Wire Line
	2150 2500 2150 2600
Connection ~ 2150 2600
$Comp
L Device_GOST:C C2
U 1 1 66FDFEDE
P 2150 2900
F 0 "C2" H 2250 3050 79  0000 L CNN
F 1 "0.15" H 2250 2750 79  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2075 2900 60  0001 C CNN
F 3 "" H 2175 3000 60  0001 C CNN
	1    2150 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2600 1750 2600
Wire Wire Line
	1750 2600 1750 2700
Wire Wire Line
	1750 3100 1750 3200
Wire Wire Line
	1750 3200 2150 3200
Connection ~ 2650 2600
Wire Wire Line
	3800 2700 3600 2700
$Comp
L power_GOST:GND #PWR05
U 1 1 6703DCF6
P 3200 4100
F 0 "#PWR05" H 3200 4150 60  0001 C CNN
F 1 "GND" H 3200 3850 79  0001 C CNN
F 2 "" H 3200 4100 60  0000 C CNN
F 3 "" H 3200 4100 60  0001 C CNN
	1    3200 4100
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:C C3
U 1 1 6703E6E6
P 2650 3500
F 0 "C3" H 2750 3650 79  0000 L CNN
F 1 "8p" H 2750 3350 79  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-1608-08_AVX-J_Pad1.25x1.05mm_HandSolder" H 2575 3500 60  0001 C CNN
F 3 "" H 2675 3600 60  0001 C CNN
	1    2650 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3950 3200 3950
Connection ~ 3200 3950
Wire Wire Line
	3600 3100 3850 3100
Wire Wire Line
	3850 3950 3200 3950
$Comp
L Device_GOST:R R3
U 1 1 6705998D
P 4200 3550
F 0 "R3" V 4500 3200 79  0000 L CNN
F 1 "12.5k" H 4050 3550 79  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 4100 3575 60  0001 C CNN
F 3 "" H 4225 3375 60  0001 C CNN
	1    4200 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 3200 4100 3200
Wire Wire Line
	3200 3400 3200 3950
Wire Wire Line
	2650 3700 2650 3950
Wire Wire Line
	3200 4100 3200 3950
Wire Wire Line
	3850 3100 3850 3950
Wire Wire Line
	3850 3950 4200 3950
Wire Wire Line
	4200 3950 4200 3900
Connection ~ 3850 3950
$Comp
L Device_GOST:R R6
U 1 1 6708D081
P 5300 1550
F 0 "R6" H 5200 1350 79  0000 L CNN
F 1 "107.5k" H 5100 1550 79  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 5200 1575 60  0001 C CNN
F 3 "" H 5325 1375 60  0001 C CNN
	1    5300 1550
	-1   0    0    1   
$EndComp
Wire Wire Line
	3600 2900 3750 2900
Wire Wire Line
	6250 2550 6250 1850
Wire Wire Line
	3600 2800 3750 2800
Wire Wire Line
	3750 2800 3750 2900
Connection ~ 3750 2900
Connection ~ 3800 1850
Wire Wire Line
	3800 1850 3800 2700
$Comp
L Device_GOST:VD_Schottky VD2
U 1 1 670D806A
P 6250 3650
F 0 "VD2" V 6250 3796 79  0000 L CNN
F 1 "VD_Schottky" H 6250 3450 79  0001 C CNN
F 2 "Package_TO_SOT_SMD_RU:КТ-90" H 6152 3650 79  0001 C CNN
F 3 "" H 6152 3650 79  0001 C CNN
	1    6250 3650
	0    1    1    0   
$EndComp
$Comp
L power_GOST:GND #PWR06
U 1 1 670D99CC
P 6250 4100
F 0 "#PWR06" H 6250 4150 60  0001 C CNN
F 1 "GND" H 6250 3850 79  0001 C CNN
F 2 "" H 6250 4100 60  0000 C CNN
F 3 "" H 6250 4100 60  0001 C CNN
	1    6250 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3250 6250 3350
Wire Wire Line
	6250 4100 6250 4050
Connection ~ 6250 3350
Wire Wire Line
	6250 3350 6250 3400
Connection ~ 6250 4050
Wire Wire Line
	6250 4050 6250 3900
Wire Wire Line
	4100 3200 4100 1550
Wire Wire Line
	4100 1550 4950 1550
Connection ~ 4100 3200
Wire Wire Line
	4100 3200 4200 3200
$Comp
L power_GOST:+12V #PWR08
U 1 1 67126B0C
P 7950 1400
F 0 "#PWR08" H 7950 1700 79  0001 C CNN
F 1 "+12V" H 7950 1621 79  0000 C CNN
F 2 "" V 7950 1525 98  0000 C CNN
F 3 "" H 7950 1525 98  0001 C CNN
	1    7950 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1550 6900 1550
Wire Wire Line
	2650 3100 2650 3300
$Comp
L Device_GOST:CP C7
U 1 1 66FE82DE
P 7950 2650
F 0 "C7" H 8050 2800 79  0000 L CNN
F 1 "680" H 8050 2500 79  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 7875 2650 60  0001 C CNN
F 3 "" H 7975 2750 60  0001 C CNN
	1    7950 2650
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:L_INDUCTOR L1
U 1 1 670DA73F
P 6900 2450
F 0 "L1" H 6900 2650 79  0000 C CNN
F 1 "27мк" H 6900 2400 79  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 6800 2500 60  0001 C CNN
F 3 "" H 6900 2600 60  0001 C CNN
	1    6900 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 1850 6250 1850
$Comp
L Device_GOST:R R7
U 1 1 670D51FA
P 5350 3600
F 0 "R7" V 5450 3300 79  0000 L CNN
F 1 "1k" H 5300 3600 79  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 5250 3625 60  0001 C CNN
F 3 "" H 5375 3425 60  0001 C CNN
	1    5350 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5350 3250 5350 2900
Connection ~ 5350 2900
Wire Wire Line
	5350 2900 5750 2900
Wire Wire Line
	4200 3950 5350 3950
Connection ~ 4200 3950
Wire Wire Line
	3750 2900 5350 2900
$Comp
L Device_GOST:CP C6
U 1 1 67106D9F
P 7450 2650
F 0 "C6" H 7550 2800 79  0000 L CNN
F 1 "680" H 7550 2500 79  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 7375 2650 60  0001 C CNN
F 3 "" H 7475 2750 60  0001 C CNN
	1    7450 2650
	1    0    0    -1  
$EndComp
Text Notes 800  -600 0    50   ~ 0
Задание\nТребуется импульсный стабилизатор напряжения\nUвх. = 24 В                      Uвых=12 В.\nР = 45 Вт           =>          Iн = 3,75А\n                      =>          Rн = 3,2 Ом\n\n
$Comp
L Device_GOST:CP C8
U 1 1 6705408C
P 8500 2650
F 0 "C8" H 8600 2800 79  0000 L CNN
F 1 "680" H 8600 2500 79  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 8425 2650 60  0001 C CNN
F 3 "" H 8525 2750 60  0001 C CNN
	1    8500 2650
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:CP C9
U 1 1 67054803
P 9100 2650
F 0 "C9" H 9200 2800 79  0000 L CNN
F 1 "680" H 9200 2500 79  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 9025 2650 60  0001 C CNN
F 3 "" H 9125 2750 60  0001 C CNN
	1    9100 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1850 2650 2600
Wire Wire Line
	2650 1850 2800 1850
Wire Wire Line
	3500 1850 3800 1850
$Comp
L Device_GOST:R R2
U 1 1 67000187
P 3150 1850
F 0 "R2" H 2850 1700 79  0000 L CNN
F 1 "0.5" H 3100 1850 79  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 3050 1875 60  0001 C CNN
F 3 "" H 3175 1675 60  0001 C CNN
	1    3150 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	11000 7550 11000 7600
$Comp
L Amplifier_Operational_GOST:1486УД3 DA1
U 1 1 670E9D7F
P 12150 7250
F 0 "DA1" H 12150 8037 79  0000 C CNN
F 1 "1486УД3" H 12150 7924 50  0000 C CNN
F 2 "Package_CDFP_RU:401.14-5" H 12150 6450 50  0001 C CNN
F 3 "" H 12150 7250 50  0001 C CNN
	1    12150 7250
	1    0    0    -1  
$EndComp
$Comp
L power_GOST:+12V #PWR07
U 1 1 670EF027
P 13100 7650
F 0 "#PWR07" H 13100 7550 79  0001 C CNN
F 1 "+12V" V 13100 8000 79  0000 C CNN
F 2 "" V 13100 7775 98  0000 C CNN
F 3 "" H 13100 7775 98  0001 C CNN
	1    13100 7650
	0    1    1    0   
$EndComp
$Comp
L Device_GOST:C C5
U 1 1 67101A88
P 13000 7950
F 0 "C5" H 13185 8018 79  0000 L CNN
F 1 "0.15" H 13185 7883 79  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 12925 7950 60  0001 C CNN
F 3 "" H 13025 8050 60  0001 C CNN
	1    13000 7950
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:R R8
U 1 1 6710C593
P 13350 7050
F 0 "R8" H 13250 6900 79  0000 L CNN
F 1 "1k" H 13300 7050 79  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 13250 7075 60  0001 C CNN
F 3 "" H 13375 6875 60  0001 C CNN
	1    13350 7050
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT2
U 1 1 67117091
P 14500 6250
F 0 "VT2" H 14800 6450 79  0000 L CNN
F 1 "КТ805АМ" H 14800 6050 79  0000 L CNN
F 2 "Package_TO_SOT_SMD_RU:КТ-28А-2.02_Horizontal_smd" H 14500 5650 79  0001 C CNN
F 3 "" H 14532 6250 79  0001 C CNN
	1    14500 6250
	1    0    0    -1  
$EndComp
Connection ~ 11000 7600
Wire Wire Line
	11000 7600 11000 7700
Wire Wire Line
	11500 7600 11500 7250
Wire Wire Line
	11500 7250 11550 7250
Wire Wire Line
	11000 7600 11500 7600
Wire Wire Line
	11400 7050 11550 7050
Wire Wire Line
	13000 7050 12750 7050
Wire Wire Line
	9450 5250 9450 5700
Wire Wire Line
	13000 7750 13000 7650
Wire Wire Line
	13000 7650 13100 7650
Wire Wire Line
	12800 8200 13000 8200
Wire Wire Line
	13000 8200 13000 8150
Connection ~ 13000 8200
Connection ~ 9450 5700
Wire Wire Line
	9450 5700 9450 5950
$Comp
L Device_GOST:thermocouple B1
U 1 1 670DAC4D
P 11400 5400
F 0 "B1" H 11544 5405 98  0000 L CNN
F 1 "thermocouple" H 11400 4800 98  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0617_L17.0mm_D6.0mm_P20.32mm_Horizontal" H 11400 5400 98  0001 C CNN
F 3 "" H 11400 5400 98  0001 C CNN
	1    11400 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	11300 5700 11300 5600
Wire Wire Line
	9450 5700 11300 5700
Wire Wire Line
	11500 5600 11500 5700
Wire Wire Line
	13950 6250 14150 6250
Wire Wire Line
	13700 7050 13950 7050
Wire Wire Line
	13950 6250 13950 7050
Wire Wire Line
	11500 5700 14650 5700
Wire Wire Line
	14650 5700 14650 5900
Wire Wire Line
	14650 6600 14650 6800
$Comp
L Device_GOST:R_5W R9
U 1 1 670E0E9A
P 14650 7400
F 0 "R9" V 14582 7507 79  0000 L CNN
F 1 "1 Ом 20 Вт" V 14717 7507 79  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-2_Vertical" H 14550 7425 60  0001 C CNN
F 3 "" H 14675 7225 60  0001 C CNN
	1    14650 7400
	0    1    1    0   
$EndComp
Wire Wire Line
	11000 8550 13000 8550
Wire Wire Line
	14650 7750 14650 8550
Connection ~ 11000 8550
Wire Wire Line
	11400 7050 11400 6600
Wire Wire Line
	11400 6600 14500 6600
Wire Wire Line
	14500 6600 14500 6800
Wire Wire Line
	14500 6800 14650 6800
Connection ~ 14650 6800
Wire Wire Line
	14650 6800 14650 7050
Wire Wire Line
	13000 8200 13000 8550
Connection ~ 13000 8550
Wire Wire Line
	13000 8550 14650 8550
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT1
U 1 1 670D3479
P 6100 2900
F 0 "VT1" H 6396 2968 79  0000 L CNN
F 1 "КТ805АМ" H 5650 2550 79  0000 L CNN
F 2 "Package_TO_SOT_SMD_RU:КТ-28А-2.02_Horizontal_smd" H 6100 2300 79  0001 C CNN
F 3 "" H 6132 2900 79  0001 C CNN
	1    6100 2900
	1    0    0    -1  
$EndComp
Text Notes 11150 7550 0    50   ~ 0
+3.68V
$Comp
L Amplifier_Operational_GOST:1486УД3 DA1
U 2 1 67122C19
P 4000 9400
F 0 "DA1" H 4000 10187 79  0000 C CNN
F 1 "1486УД3" H 4000 10074 50  0000 C CNN
F 2 "Package_CDFP_RU:401.14-5" H 4000 8600 50  0001 C CNN
F 3 "" H 4000 9400 50  0001 C CNN
	2    4000 9400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 9500 3200 9300
Wire Wire Line
	3200 9300 3400 9300
$Comp
L power_GOST:GND #PWR04
U 1 1 66F3CB10
P 9450 8650
F 0 "#PWR04" H 9450 8700 60  0001 C CNN
F 1 "GND" H 9450 8400 79  0001 C CNN
F 2 "" H 9450 8650 60  0000 C CNN
F 3 "" H 9450 8650 60  0001 C CNN
	1    9450 8650
	1    0    0    -1  
$EndComp
$Comp
L power_GOST:GND #PWR09
U 1 1 67129CD4
P 5000 9550
F 0 "#PWR09" H 5000 9600 60  0001 C CNN
F 1 "GND" H 5000 9300 79  0001 C CNN
F 2 "" H 5000 9550 60  0000 C CNN
F 3 "" H 5000 9550 60  0001 C CNN
	1    5000 9550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 9550 5000 9300
Wire Wire Line
	5000 9300 4600 9300
Wire Wire Line
	3200 9500 3400 9500
Wire Wire Line
	13000 7650 13000 7250
Wire Wire Line
	13000 7250 12750 7250
Connection ~ 13000 7650
Wire Wire Line
	12800 8200 12800 7450
Wire Wire Line
	12800 7450 12750 7450
$Comp
L Amplifier_Operational_GOST:1486УД3 DA1
U 4 1 67153F19
P 3950 10250
F 0 "DA1" H 3700 10650 79  0000 C CNN
F 1 "1486УД3" H 4100 10600 50  0000 C CNN
F 2 "Package_CDFP_RU:401.14-5" H 3950 9450 50  0001 C CNN
F 3 "" H 3950 10250 50  0001 C CNN
	4    3950 10250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 10350 3150 10150
Wire Wire Line
	3150 10150 3350 10150
$Comp
L power_GOST:GND #PWR010
U 1 1 67153F21
P 4950 10400
F 0 "#PWR010" H 4950 10450 60  0001 C CNN
F 1 "GND" H 4950 10150 79  0001 C CNN
F 2 "" H 4950 10400 60  0000 C CNN
F 3 "" H 4950 10400 60  0001 C CNN
	1    4950 10400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 10400 4950 10150
Wire Wire Line
	4950 10150 4550 10150
Wire Wire Line
	3150 10350 3350 10350
$Comp
L Amplifier_Operational_GOST:1486УД3 DA1
U 3 1 671583D6
P 6200 9450
F 0 "DA1" H 6200 10237 79  0000 C CNN
F 1 "1486УД3" H 6200 10124 50  0000 C CNN
F 2 "Package_CDFP_RU:401.14-5" H 6200 8650 50  0001 C CNN
F 3 "" H 6200 9450 50  0001 C CNN
	3    6200 9450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 9550 5400 9350
Wire Wire Line
	5400 9350 5600 9350
$Comp
L power_GOST:GND #PWR011
U 1 1 671583DE
P 7200 9600
F 0 "#PWR011" H 7200 9650 60  0001 C CNN
F 1 "GND" H 7200 9350 79  0001 C CNN
F 2 "" H 7200 9600 60  0000 C CNN
F 3 "" H 7200 9600 60  0001 C CNN
	1    7200 9600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 9600 7200 9350
Wire Wire Line
	7200 9350 6800 9350
Wire Wire Line
	5400 9550 5600 9550
$Comp
L Connector_Generic_GOST:CON X2
U 1 1 671674A6
P 1550 3200
F 0 "X2" H 1443 3461 79  0000 C CNN
F 1 "-27V" H 1443 3326 79  0000 C CNN
F 2 "Connector_RU:2,5x1,3" H 1550 3200 60  0001 C CNN
F 3 "" H 1300 3100 60  0001 C CNN
F 4 "NAME" H 1443 3326 79  0001 C CNN "PIN"
	1    1550 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2600 1750 2600
Connection ~ 1750 2600
Wire Wire Line
	1550 3200 1750 3200
Connection ~ 1750 3200
$Comp
L Connector_Generic_GOST:CON X1
U 1 1 671666D0
P 1550 2600
F 0 "X1" H 1443 2861 79  0000 C CNN
F 1 "+27V" H 1443 2726 79  0000 C CNN
F 2 "Connector_RU:2,5x1,3" H 1550 2600 60  0001 C CNN
F 3 "" H 1300 2500 60  0001 C CNN
F 4 "NAME" H 1443 2725 79  0001 C CNN "PIN"
	1    1550 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2850 6900 3350
Wire Wire Line
	6250 3350 6900 3350
Wire Wire Line
	6900 2050 6900 1550
Connection ~ 6900 1550
Wire Wire Line
	6900 1550 7450 1550
Wire Wire Line
	7450 2450 7450 1550
Connection ~ 7450 1550
Wire Wire Line
	7450 1550 7950 1550
Connection ~ 7950 1550
Wire Wire Line
	7950 1550 8500 1550
Wire Wire Line
	7950 1400 7950 1550
Wire Wire Line
	7950 1550 7950 2450
Wire Wire Line
	8500 2450 8500 1550
Connection ~ 8500 1550
Wire Wire Line
	8500 1550 9100 1550
Wire Wire Line
	9100 1550 9100 2450
Wire Wire Line
	7450 2850 7450 4050
Connection ~ 7450 4050
Wire Wire Line
	7450 4050 6250 4050
Wire Wire Line
	7950 2850 7950 4050
Wire Wire Line
	7950 4050 7450 4050
Wire Wire Line
	8500 2850 8500 4050
Wire Wire Line
	8500 4050 7950 4050
Connection ~ 7950 4050
Wire Wire Line
	9100 2850 9100 4050
Wire Wire Line
	9100 4050 8500 4050
Connection ~ 8500 4050
$EndSCHEMATC
