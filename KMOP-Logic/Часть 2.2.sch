EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 3 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 1500 1380 0    50   ~ 0
Y = X1+X2 + X1+X2
Wire Bus Line
	1680 1300 1770 1300
Wire Bus Line
	1860 1300 1940 1300
Wire Bus Line
	1660 1270 1960 1270
Wire Bus Line
	2050 1290 2350 1290
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT?
U 1 1 67257CCD
P 3050 2870
AR Path="/67257CCD" Ref="VT?"  Part="1" 
AR Path="/6724E955/67257CCD" Ref="VT?"  Part="1" 
F 0 "VT?" H 3346 2870 79  0001 L CNN
F 1 "2Т3130А9" H 3050 2370 79  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3050 2270 79  0001 C CNN
F 3 "" H 3082 2870 79  0001 C CNN
	1    3050 2870
	1    0    0    -1  
$EndComp
Text Notes 2500 2500 0    50   ~ 0
НЕ
$Comp
L Device_GOST:R R?
U 1 1 67257CD4
P 2300 2870
AR Path="/67257CD4" Ref="R?"  Part="1" 
AR Path="/6724E955/67257CD4" Ref="R?"  Part="1" 
F 0 "R?" H 2300 3180 79  0001 C CNN
F 1 "10k" H 2300 2870 79  0000 C CNN
F 2 "" H 2200 2895 60  0001 C CNN
F 3 "" H 2325 2695 60  0001 C CNN
	1    2300 2870
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:R R?
U 1 1 67257CDA
P 3200 2070
AR Path="/67257CDA" Ref="R?"  Part="1" 
AR Path="/6724E955/67257CDA" Ref="R?"  Part="1" 
F 0 "R?" V 3132 2177 79  0001 L CNN
F 1 "1k" H 3150 2070 79  0000 L CNN
F 2 "" H 3100 2095 60  0001 C CNN
F 3 "" H 3225 1895 60  0001 C CNN
	1    3200 2070
	0    1    1    0   
$EndComp
$Comp
L power_GOST:+5V #PWR?
U 1 1 67257CE0
P 3200 1670
AR Path="/67257CE0" Ref="#PWR?"  Part="1" 
AR Path="/6724E955/67257CE0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3200 1570 79  0001 C CNN
F 1 "+5V" H 3200 1891 79  0000 C CNN
F 2 "" V 3200 1795 98  0000 C CNN
F 3 "" H 3200 1795 98  0001 C CNN
	1    3200 1670
	1    0    0    -1  
$EndComp
$Comp
L power_GOST:GND #PWR?
U 1 1 67257CE6
P 3200 3370
AR Path="/67257CE6" Ref="#PWR?"  Part="1" 
AR Path="/6724E955/67257CE6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3200 3420 60  0001 C CNN
F 1 "GND" H 3200 3120 79  0001 C CNN
F 2 "" H 3200 3370 60  0000 C CNN
F 3 "" H 3200 3370 60  0001 C CNN
	1    3200 3370
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic_GOST:CON X?
U 1 1 67257CED
P 1850 2870
AR Path="/67257CED" Ref="X?"  Part="1" 
AR Path="/6724E955/67257CED" Ref="X?"  Part="1" 
F 0 "X?" H 1743 3131 79  0001 C CNN
F 1 "CON" H 1650 2770 79  0001 C CNN
F 2 "" H 1850 2870 60  0001 C CNN
F 3 "" H 1600 2770 60  0001 C CNN
F 4 "X1" H 1743 2995 79  0000 C CNN "PIN"
	1    1850 2870
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2870 1950 2870
Wire Wire Line
	3200 3220 3200 3370
Wire Wire Line
	2650 2870 2700 2870
Wire Wire Line
	3200 2420 3200 2470
Connection ~ 3200 2470
Wire Wire Line
	3200 2470 3200 2520
Wire Wire Line
	3200 1670 3200 1720
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT?
U 1 1 67259AAC
P 3060 5180
AR Path="/67259AAC" Ref="VT?"  Part="1" 
AR Path="/6724E955/67259AAC" Ref="VT?"  Part="1" 
F 0 "VT?" H 3356 5180 79  0001 L CNN
F 1 "2Т3130А9" H 3060 4680 79  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3060 4580 79  0001 C CNN
F 3 "" H 3092 5180 79  0001 C CNN
	1    3060 5180
	1    0    0    -1  
$EndComp
Text Notes 2510 4810 0    50   ~ 0
НЕ
$Comp
L Device_GOST:R R?
U 1 1 67259AB3
P 2310 5180
AR Path="/67259AB3" Ref="R?"  Part="1" 
AR Path="/6724E955/67259AB3" Ref="R?"  Part="1" 
F 0 "R?" H 2310 5490 79  0001 C CNN
F 1 "10k" H 2310 5180 79  0000 C CNN
F 2 "" H 2210 5205 60  0001 C CNN
F 3 "" H 2335 5005 60  0001 C CNN
	1    2310 5180
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:R R?
U 1 1 67259AB9
P 3210 4380
AR Path="/67259AB9" Ref="R?"  Part="1" 
AR Path="/6724E955/67259AB9" Ref="R?"  Part="1" 
F 0 "R?" V 3142 4487 79  0001 L CNN
F 1 "1k" H 3160 4380 79  0000 L CNN
F 2 "" H 3110 4405 60  0001 C CNN
F 3 "" H 3235 4205 60  0001 C CNN
	1    3210 4380
	0    1    1    0   
$EndComp
$Comp
L power_GOST:+5V #PWR?
U 1 1 67259ABF
P 3210 3980
AR Path="/67259ABF" Ref="#PWR?"  Part="1" 
AR Path="/6724E955/67259ABF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3210 3880 79  0001 C CNN
F 1 "+5V" H 3210 4201 79  0000 C CNN
F 2 "" V 3210 4105 98  0000 C CNN
F 3 "" H 3210 4105 98  0001 C CNN
	1    3210 3980
	1    0    0    -1  
$EndComp
$Comp
L power_GOST:GND #PWR?
U 1 1 67259AC5
P 3210 5680
AR Path="/67259AC5" Ref="#PWR?"  Part="1" 
AR Path="/6724E955/67259AC5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3210 5730 60  0001 C CNN
F 1 "GND" H 3210 5430 79  0001 C CNN
F 2 "" H 3210 5680 60  0000 C CNN
F 3 "" H 3210 5680 60  0001 C CNN
	1    3210 5680
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic_GOST:CON X?
U 1 1 67259ACC
P 1860 5180
AR Path="/67259ACC" Ref="X?"  Part="1" 
AR Path="/6724E955/67259ACC" Ref="X?"  Part="1" 
F 0 "X?" H 1753 5441 79  0001 C CNN
F 1 "CON" H 1660 5080 79  0001 C CNN
F 2 "" H 1860 5180 60  0001 C CNN
F 3 "" H 1610 5080 60  0001 C CNN
F 4 "X2" H 1753 5305 79  0000 C CNN "PIN"
	1    1860 5180
	1    0    0    -1  
$EndComp
Wire Wire Line
	1860 5180 1960 5180
Wire Wire Line
	3210 5530 3210 5680
Wire Wire Line
	2660 5180 2710 5180
Wire Wire Line
	3210 4730 3210 4780
Connection ~ 3210 4780
Wire Wire Line
	3210 4780 3210 4830
Wire Wire Line
	3210 3980 3210 4030
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT?
U 1 1 6725CF15
P 6340 8030
AR Path="/678B8349/6725CF15" Ref="VT?"  Part="1" 
AR Path="/6724E955/6725CF15" Ref="VT?"  Part="1" 
F 0 "VT?" H 6636 8030 79  0001 L CNN
F 1 "2Т3130А9" H 6340 7530 79  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6340 7430 79  0001 C CNN
F 3 "" H 6372 8030 79  0001 C CNN
	1    6340 8030
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic_GOST:CON X?
U 1 1 6725CF1C
P 7540 8030
AR Path="/678B8349/6725CF1C" Ref="X?"  Part="1" 
AR Path="/6724E955/6725CF1C" Ref="X?"  Part="1" 
F 0 "X?" H 7433 8291 79  0001 C CNN
F 1 "CON" H 7340 7930 79  0001 C CNN
F 2 "" H 7540 8030 60  0001 C CNN
F 3 "" H 7290 7930 60  0001 C CNN
F 4 "X2" H 7433 8155 79  0000 C CNN "PIN"
	1    7540 8030
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT?
U 1 1 6725CF22
P 7040 8030
AR Path="/678B8349/6725CF22" Ref="VT?"  Part="1" 
AR Path="/6724E955/6725CF22" Ref="VT?"  Part="1" 
F 0 "VT?" H 7336 8030 79  0001 L CNN
F 1 "2Т3130А9" H 7040 7530 79  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7040 7430 79  0001 C CNN
F 3 "" H 7072 8030 79  0001 C CNN
	1    7040 8030
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic_GOST:CON X?
U 1 1 6725CF29
P 5840 8030
AR Path="/678B8349/6725CF29" Ref="X?"  Part="1" 
AR Path="/6724E955/6725CF29" Ref="X?"  Part="1" 
F 0 "X?" H 5733 8291 79  0001 C CNN
F 1 "CON" H 5640 7930 79  0001 C CNN
F 2 "" H 5840 8030 60  0001 C CNN
F 3 "" H 5590 7930 60  0001 C CNN
F 4 "X1" H 5733 8155 79  0000 C CNN "PIN"
	1    5840 8030
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:R R?
U 1 1 6725CF2F
P 6690 6930
AR Path="/678B8349/6725CF2F" Ref="R?"  Part="1" 
AR Path="/6724E955/6725CF2F" Ref="R?"  Part="1" 
F 0 "R?" V 6622 7037 79  0001 L CNN
F 1 "1k" H 6640 6930 79  0000 L CNN
F 2 "" H 6590 6955 60  0001 C CNN
F 3 "" H 6715 6755 60  0001 C CNN
	1    6690 6930
	0    1    1    0   
$EndComp
$Comp
L power_GOST:+5V #PWR?
U 1 1 6725CF35
P 6690 6530
AR Path="/678B8349/6725CF35" Ref="#PWR?"  Part="1" 
AR Path="/6724E955/6725CF35" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6690 6430 79  0001 C CNN
F 1 "+5V" H 6690 6751 79  0000 C CNN
F 2 "" V 6690 6655 98  0000 C CNN
F 3 "" H 6690 6655 98  0001 C CNN
	1    6690 6530
	1    0    0    -1  
$EndComp
Wire Wire Line
	6690 7280 6690 7330
Connection ~ 6690 7330
Wire Wire Line
	6690 6530 6690 6580
$Comp
L Device_GOST:R R?
U 1 1 6725CF3E
P 5890 8530
AR Path="/678B8349/6725CF3E" Ref="R?"  Part="1" 
AR Path="/6724E955/6725CF3E" Ref="R?"  Part="1" 
F 0 "R?" H 5890 8840 79  0001 C CNN
F 1 "10k" H 5890 8530 79  0000 C CNN
F 2 "" H 5790 8555 60  0001 C CNN
F 3 "" H 5915 8355 60  0001 C CNN
	1    5890 8530
	0    1    1    0   
$EndComp
$Comp
L Device_GOST:R R?
U 1 1 6725CF44
P 7490 8530
AR Path="/678B8349/6725CF44" Ref="R?"  Part="1" 
AR Path="/6724E955/6725CF44" Ref="R?"  Part="1" 
F 0 "R?" H 7490 8840 79  0001 C CNN
F 1 "10k" H 7490 8530 79  0000 C CNN
F 2 "" H 7390 8555 60  0001 C CNN
F 3 "" H 7515 8355 60  0001 C CNN
	1    7490 8530
	0    1    1    0   
$EndComp
$Comp
L power_GOST:GND #PWR?
U 1 1 6725CF4A
P 6690 9030
AR Path="/678B8349/6725CF4A" Ref="#PWR?"  Part="1" 
AR Path="/6724E955/6725CF4A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6690 9080 60  0001 C CNN
F 1 "GND" H 6690 8780 79  0001 C CNN
F 2 "" H 6690 9030 60  0000 C CNN
F 3 "" H 6690 9030 60  0001 C CNN
	1    6690 9030
	1    0    0    -1  
$EndComp
Wire Wire Line
	5890 8880 5890 8930
Wire Wire Line
	5890 8930 6690 8930
Wire Wire Line
	6490 8380 6490 8580
Wire Wire Line
	6490 8580 6690 8580
Wire Wire Line
	6690 8580 6690 8930
Connection ~ 6690 8930
Wire Wire Line
	6890 8580 6690 8580
Connection ~ 6690 8580
Wire Wire Line
	6890 8380 6890 8580
Wire Wire Line
	6690 9030 6690 8930
Wire Wire Line
	7490 8930 7490 8880
Wire Wire Line
	6690 8930 7490 8930
Wire Wire Line
	5890 8180 5890 8030
Wire Wire Line
	5890 8030 5990 8030
Wire Wire Line
	7390 8030 7490 8030
Wire Wire Line
	7490 8030 7490 8180
Wire Wire Line
	6490 7680 6490 7480
Wire Wire Line
	6490 7480 6690 7480
Wire Wire Line
	6690 7330 6690 7480
Wire Wire Line
	6890 7680 6890 7480
Wire Wire Line
	6890 7480 6690 7480
Connection ~ 6690 7480
Wire Wire Line
	5840 8030 5890 8030
Connection ~ 5890 8030
Wire Wire Line
	7490 8030 7540 8030
Connection ~ 7490 8030
Text Notes 6040 7430 0    50   ~ 0
ИЛИ-НЕ
Wire Wire Line
	6690 7330 8230 7330
Wire Bus Line
	6970 7130 7270 7130
Text Notes 6980 7240 0    50   ~ 0
X1+X2
Wire Wire Line
	3200 2470 4200 2470
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT?
U 1 1 6726A006
P 9780 5810
AR Path="/6726A006" Ref="VT?"  Part="1" 
AR Path="/678B8349/6726A006" Ref="VT?"  Part="1" 
AR Path="/6724E955/6726A006" Ref="VT?"  Part="1" 
F 0 "VT?" H 10076 5810 79  0001 L CNN
F 1 "2Т3130А9" H 9780 5310 79  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9780 5210 79  0001 C CNN
F 3 "" H 9812 5810 79  0001 C CNN
	1    9780 5810
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:R R?
U 1 1 6726A00C
P 9030 5810
AR Path="/6726A00C" Ref="R?"  Part="1" 
AR Path="/678B8349/6726A00C" Ref="R?"  Part="1" 
AR Path="/6724E955/6726A00C" Ref="R?"  Part="1" 
F 0 "R?" H 9030 6120 79  0001 C CNN
F 1 "10k" H 9030 5810 79  0000 C CNN
F 2 "" H 8930 5835 60  0001 C CNN
F 3 "" H 9055 5635 60  0001 C CNN
	1    9030 5810
	1    0    0    -1  
$EndComp
$Comp
L power_GOST:GND #PWR?
U 1 1 6726A012
P 10530 7160
AR Path="/6726A012" Ref="#PWR?"  Part="1" 
AR Path="/678B8349/6726A012" Ref="#PWR?"  Part="1" 
AR Path="/6724E955/6726A012" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10530 7210 60  0001 C CNN
F 1 "GND" H 10530 6910 79  0001 C CNN
F 2 "" H 10530 7160 60  0000 C CNN
F 3 "" H 10530 7160 60  0001 C CNN
	1    10530 7160
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic_GOST:CON X?
U 1 1 6726A019
P 10630 6360
AR Path="/6726A019" Ref="X?"  Part="1" 
AR Path="/678B8349/6726A019" Ref="X?"  Part="1" 
AR Path="/6724E955/6726A019" Ref="X?"  Part="1" 
F 0 "X?" H 10523 6099 79  0001 C CNN
F 1 "CON" H 10430 6260 79  0001 C CNN
F 2 "" H 10630 6360 60  0001 C CNN
F 3 "" H 10380 6260 60  0001 C CNN
F 4 "OUT" H 10523 6235 79  0000 C CNN "PIN"
	1    10630 6360
	-1   0    0    1   
$EndComp
Wire Wire Line
	9380 5810 9430 5810
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT?
U 1 1 6726A020
P 9780 4960
AR Path="/6726A020" Ref="VT?"  Part="1" 
AR Path="/678B8349/6726A020" Ref="VT?"  Part="1" 
AR Path="/6724E955/6726A020" Ref="VT?"  Part="1" 
F 0 "VT?" H 10076 4960 79  0001 L CNN
F 1 "2Т3130А9" H 9780 4460 79  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9780 4360 79  0001 C CNN
F 3 "" H 9812 4960 79  0001 C CNN
	1    9780 4960
	1    0    0    -1  
$EndComp
Text Notes 9430 5410 0    50   ~ 0
ИЛИ
$Comp
L Device_GOST:R R?
U 1 1 6726A027
P 9030 4960
AR Path="/6726A027" Ref="R?"  Part="1" 
AR Path="/678B8349/6726A027" Ref="R?"  Part="1" 
AR Path="/6724E955/6726A027" Ref="R?"  Part="1" 
F 0 "R?" H 9030 5270 79  0001 C CNN
F 1 "10k" H 9030 4960 79  0000 C CNN
F 2 "" H 8930 4985 60  0001 C CNN
F 3 "" H 9055 4785 60  0001 C CNN
	1    9030 4960
	1    0    0    -1  
$EndComp
$Comp
L power_GOST:+5V #PWR?
U 1 1 6726A02D
P 9930 4560
AR Path="/6726A02D" Ref="#PWR?"  Part="1" 
AR Path="/678B8349/6726A02D" Ref="#PWR?"  Part="1" 
AR Path="/6724E955/6726A02D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9930 4460 79  0001 C CNN
F 1 "+5V" H 9930 4781 79  0000 C CNN
F 2 "" V 9930 4685 98  0000 C CNN
F 3 "" H 9930 4685 98  0001 C CNN
	1    9930 4560
	1    0    0    -1  
$EndComp
Wire Wire Line
	9930 5310 9930 5410
Wire Wire Line
	9380 4960 9430 4960
Wire Wire Line
	9930 4560 9930 4610
$Comp
L Device_GOST:R R?
U 1 1 6726A036
P 10530 6760
AR Path="/6726A036" Ref="R?"  Part="1" 
AR Path="/678B8349/6726A036" Ref="R?"  Part="1" 
AR Path="/6724E955/6726A036" Ref="R?"  Part="1" 
F 0 "R?" V 10462 6867 79  0001 L CNN
F 1 "1k" H 10480 6760 79  0000 L CNN
F 2 "" H 10430 6785 60  0001 C CNN
F 3 "" H 10555 6585 60  0001 C CNN
	1    10530 6760
	0    1    1    0   
$EndComp
Wire Wire Line
	10530 6410 10530 6360
Wire Wire Line
	10630 6360 10530 6360
Connection ~ 10530 6360
Wire Wire Line
	10530 7160 10530 7110
Wire Wire Line
	9930 6160 9930 6360
Wire Wire Line
	9930 6360 10530 6360
Wire Wire Line
	10530 5410 9930 5410
Wire Wire Line
	10530 5410 10530 6360
Connection ~ 9930 5410
Wire Wire Line
	9930 5410 9930 5460
Wire Wire Line
	8230 4960 8680 4960
Wire Wire Line
	8680 5810 8230 5810
Wire Wire Line
	8230 5810 8230 7330
Text Notes 3410 2400 0    50   ~ 0
X1
Wire Bus Line
	3410 2320 3500 2320
Text Notes 5890 2580 0    50   ~ 0
X1+X2
Wire Bus Line
	5890 2480 5980 2480
Wire Bus Line
	6070 2480 6150 2480
Wire Bus Line
	5870 2450 6170 2450
Text Notes 3410 4730 0    50   ~ 0
X2
Wire Bus Line
	3410 4650 3500 4650
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT?
U 1 1 6727F581
P 5290 3320
AR Path="/6727F581" Ref="VT?"  Part="1" 
AR Path="/6724E955/6727F581" Ref="VT?"  Part="1" 
F 0 "VT?" H 5586 3320 79  0001 L CNN
F 1 "2Т3130А9" H 5290 2820 79  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5290 2720 79  0001 C CNN
F 3 "" H 5322 3320 79  0001 C CNN
	1    5290 3320
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT?
U 1 1 6727F58E
P 5990 3320
AR Path="/6727F58E" Ref="VT?"  Part="1" 
AR Path="/6724E955/6727F58E" Ref="VT?"  Part="1" 
F 0 "VT?" H 6286 3320 79  0001 L CNN
F 1 "2Т3130А9" H 5990 2820 79  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5990 2720 79  0001 C CNN
F 3 "" H 6022 3320 79  0001 C CNN
	1    5990 3320
	-1   0    0    -1  
$EndComp
$Comp
L Device_GOST:R R?
U 1 1 6727F59B
P 5640 2220
AR Path="/6727F59B" Ref="R?"  Part="1" 
AR Path="/6724E955/6727F59B" Ref="R?"  Part="1" 
F 0 "R?" V 5572 2327 79  0001 L CNN
F 1 "1k" H 5590 2220 79  0000 L CNN
F 2 "" H 5540 2245 60  0001 C CNN
F 3 "" H 5665 2045 60  0001 C CNN
	1    5640 2220
	0    1    1    0   
$EndComp
$Comp
L power_GOST:+5V #PWR?
U 1 1 6727F5A1
P 5640 1820
AR Path="/6727F5A1" Ref="#PWR?"  Part="1" 
AR Path="/6724E955/6727F5A1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5640 1720 79  0001 C CNN
F 1 "+5V" H 5640 2041 79  0000 C CNN
F 2 "" V 5640 1945 98  0000 C CNN
F 3 "" H 5640 1945 98  0001 C CNN
	1    5640 1820
	1    0    0    -1  
$EndComp
Wire Wire Line
	5640 2570 5640 2620
Connection ~ 5640 2620
Wire Wire Line
	5640 1820 5640 1870
$Comp
L Device_GOST:R R?
U 1 1 6727F5B2
P 4840 3820
AR Path="/6727F5B2" Ref="R?"  Part="1" 
AR Path="/6724E955/6727F5B2" Ref="R?"  Part="1" 
F 0 "R?" H 4840 4130 79  0001 C CNN
F 1 "10k" H 4840 3820 79  0000 C CNN
F 2 "" H 4740 3845 60  0001 C CNN
F 3 "" H 4865 3645 60  0001 C CNN
	1    4840 3820
	0    1    1    0   
$EndComp
$Comp
L Device_GOST:R R?
U 1 1 6727F5B8
P 6440 3820
AR Path="/6727F5B8" Ref="R?"  Part="1" 
AR Path="/6724E955/6727F5B8" Ref="R?"  Part="1" 
F 0 "R?" H 6440 4130 79  0001 C CNN
F 1 "10k" H 6440 3820 79  0000 C CNN
F 2 "" H 6340 3845 60  0001 C CNN
F 3 "" H 6465 3645 60  0001 C CNN
	1    6440 3820
	0    1    1    0   
$EndComp
$Comp
L power_GOST:GND #PWR?
U 1 1 6727F5BE
P 5640 4320
AR Path="/6727F5BE" Ref="#PWR?"  Part="1" 
AR Path="/6724E955/6727F5BE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5640 4370 60  0001 C CNN
F 1 "GND" H 5640 4070 79  0001 C CNN
F 2 "" H 5640 4320 60  0000 C CNN
F 3 "" H 5640 4320 60  0001 C CNN
	1    5640 4320
	1    0    0    -1  
$EndComp
Wire Wire Line
	4840 4170 4840 4220
Wire Wire Line
	4840 4220 5640 4220
Wire Wire Line
	5440 3670 5440 3870
Wire Wire Line
	5440 3870 5640 3870
Wire Wire Line
	5640 3870 5640 4220
Connection ~ 5640 4220
Wire Wire Line
	5840 3870 5640 3870
Connection ~ 5640 3870
Wire Wire Line
	5840 3670 5840 3870
Wire Wire Line
	5640 4320 5640 4220
Wire Wire Line
	6440 4220 6440 4170
Wire Wire Line
	5640 4220 6440 4220
Wire Wire Line
	4840 3470 4840 3320
Wire Wire Line
	4840 3320 4940 3320
Wire Wire Line
	6340 3320 6440 3320
Wire Wire Line
	6440 3320 6440 3470
Wire Wire Line
	5440 2970 5440 2770
Wire Wire Line
	5440 2770 5640 2770
Wire Wire Line
	5640 2620 5640 2770
Wire Wire Line
	5840 2970 5840 2770
Wire Wire Line
	5840 2770 5640 2770
Connection ~ 5640 2770
Connection ~ 4840 3320
Connection ~ 6440 3320
Wire Wire Line
	8230 2620 8230 4960
Wire Wire Line
	5640 2620 8230 2620
Wire Wire Line
	4200 3320 4840 3320
Wire Wire Line
	4200 2470 4200 3320
Wire Wire Line
	6920 3320 6920 4780
Wire Wire Line
	6440 3320 6920 3320
Wire Wire Line
	3210 4780 6920 4780
Text Notes 9610 1180 0    98   ~ 0
X1
Text Notes 9960 1180 0    98   ~ 0
X2
Text Notes 10260 1180 0    98   ~ 0
OUT
Wire Bus Line
	9510 1230 10560 1230
Wire Bus Line
	9510 1530 10560 1530
Wire Bus Line
	9510 1830 10560 1830
Wire Bus Line
	9510 2130 10560 2130
Text Notes 9610 1430 0    98   ~ 0
0
Text Notes 9610 1780 0    98   ~ 0
0
Text Notes 9610 2080 0    98   ~ 0
1
Wire Bus Line
	10560 1030 10560 1230
Wire Bus Line
	9510 2430 9860 2430
Wire Bus Line
	9860 1030 9860 2430
Wire Bus Line
	10210 1030 10210 2430
Connection ~ 10560 1230
Wire Bus Line
	10560 1230 10560 1530
Connection ~ 10560 1530
Wire Bus Line
	10560 1530 10560 1830
Connection ~ 10560 1830
Wire Bus Line
	10560 1830 10560 2130
Connection ~ 10560 2130
Wire Bus Line
	10560 2130 10560 2430
Text Notes 9610 2330 0    98   ~ 0
1
Text Notes 10010 1430 0    98   ~ 0
0
Text Notes 10360 1430 0    98   ~ 0
1
Text Notes 10010 1780 0    98   ~ 0
1
Text Notes 10360 1780 0    98   ~ 0
0
Text Notes 10010 2080 0    98   ~ 0
0
Text Notes 10360 2080 0    98   ~ 0
0
Text Notes 10010 2330 0    98   ~ 0
1
Text Notes 10360 2330 0    98   ~ 0
1
Connection ~ 9860 2430
Wire Bus Line
	9860 2430 10210 2430
Connection ~ 10210 2430
Wire Bus Line
	10210 2430 10560 2430
Text Notes 10370 5370 0    50   ~ 0
X1+X2 + X1+X2
Wire Bus Line
	10370 5280 10460 5280
Wire Bus Line
	10550 5280 10630 5280
Wire Bus Line
	10350 5250 10650 5250
Wire Bus Line
	10740 5270 11040 5270
$EndSCHEMATC
