EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 4 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 2070 1400 0    50   ~ 0
Y = X1*X2 + X1*X2
Wire Bus Line
	2250 1320 2340 1320
Wire Bus Line
	2620 1310 2920 1310
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT?
U 1 1 672BB859
P 3440 3450
AR Path="/672BB859" Ref="VT?"  Part="1" 
AR Path="/6724E955/672BB859" Ref="VT?"  Part="1" 
AR Path="/6724F3EC/672BB859" Ref="VT?"  Part="1" 
F 0 "VT?" H 3736 3450 79  0001 L CNN
F 1 "2Т3130А9" H 3440 2950 79  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3440 2850 79  0001 C CNN
F 3 "" H 3472 3450 79  0001 C CNN
	1    3440 3450
	1    0    0    -1  
$EndComp
Text Notes 2890 3080 0    50   ~ 0
НЕ
$Comp
L Device_GOST:R R?
U 1 1 672BB860
P 2690 3450
AR Path="/672BB860" Ref="R?"  Part="1" 
AR Path="/6724E955/672BB860" Ref="R?"  Part="1" 
AR Path="/6724F3EC/672BB860" Ref="R?"  Part="1" 
F 0 "R?" H 2690 3760 79  0001 C CNN
F 1 "10k" H 2690 3450 79  0000 C CNN
F 2 "" H 2590 3475 60  0001 C CNN
F 3 "" H 2715 3275 60  0001 C CNN
	1    2690 3450
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:R R?
U 1 1 672BB866
P 3590 2650
AR Path="/672BB866" Ref="R?"  Part="1" 
AR Path="/6724E955/672BB866" Ref="R?"  Part="1" 
AR Path="/6724F3EC/672BB866" Ref="R?"  Part="1" 
F 0 "R?" V 3522 2757 79  0001 L CNN
F 1 "1k" H 3540 2650 79  0000 L CNN
F 2 "" H 3490 2675 60  0001 C CNN
F 3 "" H 3615 2475 60  0001 C CNN
	1    3590 2650
	0    1    1    0   
$EndComp
$Comp
L power_GOST:+5V #PWR?
U 1 1 672BB86C
P 3590 2250
AR Path="/672BB86C" Ref="#PWR?"  Part="1" 
AR Path="/6724E955/672BB86C" Ref="#PWR?"  Part="1" 
AR Path="/6724F3EC/672BB86C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3590 2150 79  0001 C CNN
F 1 "+5V" H 3590 2471 79  0000 C CNN
F 2 "" V 3590 2375 98  0000 C CNN
F 3 "" H 3590 2375 98  0001 C CNN
	1    3590 2250
	1    0    0    -1  
$EndComp
$Comp
L power_GOST:GND #PWR?
U 1 1 672BB872
P 3590 3950
AR Path="/672BB872" Ref="#PWR?"  Part="1" 
AR Path="/6724E955/672BB872" Ref="#PWR?"  Part="1" 
AR Path="/6724F3EC/672BB872" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3590 4000 60  0001 C CNN
F 1 "GND" H 3590 3700 79  0001 C CNN
F 2 "" H 3590 3950 60  0000 C CNN
F 3 "" H 3590 3950 60  0001 C CNN
	1    3590 3950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic_GOST:CON X?
U 1 1 672BB879
P 2240 3450
AR Path="/672BB879" Ref="X?"  Part="1" 
AR Path="/6724E955/672BB879" Ref="X?"  Part="1" 
AR Path="/6724F3EC/672BB879" Ref="X?"  Part="1" 
F 0 "X?" H 2133 3711 79  0001 C CNN
F 1 "CON" H 2040 3350 79  0001 C CNN
F 2 "" H 2240 3450 60  0001 C CNN
F 3 "" H 1990 3350 60  0001 C CNN
F 4 "X1" H 2133 3575 79  0000 C CNN "PIN"
	1    2240 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2240 3450 2340 3450
Wire Wire Line
	3590 3800 3590 3950
Wire Wire Line
	3040 3450 3090 3450
Wire Wire Line
	3590 3000 3590 3050
Connection ~ 3590 3050
Wire Wire Line
	3590 3050 3590 3100
Wire Wire Line
	3590 2250 3590 2300
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT?
U 1 1 672BB886
P 3450 5060
AR Path="/672BB886" Ref="VT?"  Part="1" 
AR Path="/6724E955/672BB886" Ref="VT?"  Part="1" 
AR Path="/6724F3EC/672BB886" Ref="VT?"  Part="1" 
F 0 "VT?" H 3746 5060 79  0001 L CNN
F 1 "2Т3130А9" H 3450 4560 79  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3450 4460 79  0001 C CNN
F 3 "" H 3482 5060 79  0001 C CNN
	1    3450 5060
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:R R?
U 1 1 672BB88D
P 2700 5060
AR Path="/672BB88D" Ref="R?"  Part="1" 
AR Path="/6724E955/672BB88D" Ref="R?"  Part="1" 
AR Path="/6724F3EC/672BB88D" Ref="R?"  Part="1" 
F 0 "R?" H 2700 5370 79  0001 C CNN
F 1 "10k" H 2700 5060 79  0000 C CNN
F 2 "" H 2600 5085 60  0001 C CNN
F 3 "" H 2725 4885 60  0001 C CNN
	1    2700 5060
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:R R?
U 1 1 672BB893
P 3600 6030
AR Path="/672BB893" Ref="R?"  Part="1" 
AR Path="/6724E955/672BB893" Ref="R?"  Part="1" 
AR Path="/6724F3EC/672BB893" Ref="R?"  Part="1" 
F 0 "R?" V 3532 6137 79  0001 L CNN
F 1 "1k" H 3550 6030 79  0000 L CNN
F 2 "" H 3500 6055 60  0001 C CNN
F 3 "" H 3625 5855 60  0001 C CNN
	1    3600 6030
	0    1    1    0   
$EndComp
$Comp
L power_GOST:+5V #PWR?
U 1 1 672BB899
P 3600 4560
AR Path="/672BB899" Ref="#PWR?"  Part="1" 
AR Path="/6724E955/672BB899" Ref="#PWR?"  Part="1" 
AR Path="/6724F3EC/672BB899" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3600 4460 79  0001 C CNN
F 1 "+5V" H 3600 4781 79  0000 C CNN
F 2 "" V 3600 4685 98  0000 C CNN
F 3 "" H 3600 4685 98  0001 C CNN
	1    3600 4560
	1    0    0    -1  
$EndComp
$Comp
L power_GOST:GND #PWR?
U 1 1 672BB89F
P 3600 6530
AR Path="/672BB89F" Ref="#PWR?"  Part="1" 
AR Path="/6724E955/672BB89F" Ref="#PWR?"  Part="1" 
AR Path="/6724F3EC/672BB89F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3600 6580 60  0001 C CNN
F 1 "GND" H 3600 6280 79  0001 C CNN
F 2 "" H 3600 6530 60  0000 C CNN
F 3 "" H 3600 6530 60  0001 C CNN
	1    3600 6530
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic_GOST:CON X?
U 1 1 672BB8A6
P 2250 5060
AR Path="/672BB8A6" Ref="X?"  Part="1" 
AR Path="/6724E955/672BB8A6" Ref="X?"  Part="1" 
AR Path="/6724F3EC/672BB8A6" Ref="X?"  Part="1" 
F 0 "X?" H 2143 5321 79  0001 C CNN
F 1 "CON" H 2050 4960 79  0001 C CNN
F 2 "" H 2250 5060 60  0001 C CNN
F 3 "" H 2000 4960 60  0001 C CNN
F 4 "X2" H 2143 5185 79  0000 C CNN "PIN"
	1    2250 5060
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 5060 2350 5060
Wire Wire Line
	3600 6380 3600 6530
Wire Wire Line
	3050 5060 3100 5060
Wire Bus Line
	6230 6950 6530 6950
Text Notes 6240 7060 0    50   ~ 0
X1*X2
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT?
U 1 1 672BB90D
P 8800 6390
AR Path="/672BB90D" Ref="VT?"  Part="1" 
AR Path="/678B8349/672BB90D" Ref="VT?"  Part="1" 
AR Path="/6724E955/672BB90D" Ref="VT?"  Part="1" 
AR Path="/6724F3EC/672BB90D" Ref="VT?"  Part="1" 
F 0 "VT?" H 9096 6390 79  0001 L CNN
F 1 "2Т3130А9" H 8800 5890 79  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8800 5790 79  0001 C CNN
F 3 "" H 8832 6390 79  0001 C CNN
	1    8800 6390
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:R R?
U 1 1 672BB913
P 8050 6390
AR Path="/672BB913" Ref="R?"  Part="1" 
AR Path="/678B8349/672BB913" Ref="R?"  Part="1" 
AR Path="/6724E955/672BB913" Ref="R?"  Part="1" 
AR Path="/6724F3EC/672BB913" Ref="R?"  Part="1" 
F 0 "R?" H 8050 6700 79  0001 C CNN
F 1 "10k" H 8050 6390 79  0000 C CNN
F 2 "" H 7950 6415 60  0001 C CNN
F 3 "" H 8075 6215 60  0001 C CNN
	1    8050 6390
	1    0    0    -1  
$EndComp
$Comp
L power_GOST:GND #PWR?
U 1 1 672BB919
P 9550 7740
AR Path="/672BB919" Ref="#PWR?"  Part="1" 
AR Path="/678B8349/672BB919" Ref="#PWR?"  Part="1" 
AR Path="/6724E955/672BB919" Ref="#PWR?"  Part="1" 
AR Path="/6724F3EC/672BB919" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9550 7790 60  0001 C CNN
F 1 "GND" H 9550 7490 79  0001 C CNN
F 2 "" H 9550 7740 60  0000 C CNN
F 3 "" H 9550 7740 60  0001 C CNN
	1    9550 7740
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic_GOST:CON X?
U 1 1 672BB920
P 9650 6940
AR Path="/672BB920" Ref="X?"  Part="1" 
AR Path="/678B8349/672BB920" Ref="X?"  Part="1" 
AR Path="/6724E955/672BB920" Ref="X?"  Part="1" 
AR Path="/6724F3EC/672BB920" Ref="X?"  Part="1" 
F 0 "X?" H 9543 6679 79  0001 C CNN
F 1 "CON" H 9450 6840 79  0001 C CNN
F 2 "" H 9650 6940 60  0001 C CNN
F 3 "" H 9400 6840 60  0001 C CNN
F 4 "OUT" H 9543 6815 79  0000 C CNN "PIN"
	1    9650 6940
	-1   0    0    1   
$EndComp
Wire Wire Line
	8400 6390 8450 6390
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT?
U 1 1 672BB927
P 8800 5540
AR Path="/672BB927" Ref="VT?"  Part="1" 
AR Path="/678B8349/672BB927" Ref="VT?"  Part="1" 
AR Path="/6724E955/672BB927" Ref="VT?"  Part="1" 
AR Path="/6724F3EC/672BB927" Ref="VT?"  Part="1" 
F 0 "VT?" H 9096 5540 79  0001 L CNN
F 1 "2Т3130А9" H 8800 5040 79  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8800 4940 79  0001 C CNN
F 3 "" H 8832 5540 79  0001 C CNN
	1    8800 5540
	1    0    0    -1  
$EndComp
Text Notes 8450 5990 0    50   ~ 0
ИЛИ
$Comp
L Device_GOST:R R?
U 1 1 672BB92E
P 8050 5540
AR Path="/672BB92E" Ref="R?"  Part="1" 
AR Path="/678B8349/672BB92E" Ref="R?"  Part="1" 
AR Path="/6724E955/672BB92E" Ref="R?"  Part="1" 
AR Path="/6724F3EC/672BB92E" Ref="R?"  Part="1" 
F 0 "R?" H 8050 5850 79  0001 C CNN
F 1 "10k" H 8050 5540 79  0000 C CNN
F 2 "" H 7950 5565 60  0001 C CNN
F 3 "" H 8075 5365 60  0001 C CNN
	1    8050 5540
	1    0    0    -1  
$EndComp
$Comp
L power_GOST:+5V #PWR?
U 1 1 672BB934
P 8950 5140
AR Path="/672BB934" Ref="#PWR?"  Part="1" 
AR Path="/678B8349/672BB934" Ref="#PWR?"  Part="1" 
AR Path="/6724E955/672BB934" Ref="#PWR?"  Part="1" 
AR Path="/6724F3EC/672BB934" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8950 5040 79  0001 C CNN
F 1 "+5V" H 8950 5361 79  0000 C CNN
F 2 "" V 8950 5265 98  0000 C CNN
F 3 "" H 8950 5265 98  0001 C CNN
	1    8950 5140
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 5890 8950 5990
Wire Wire Line
	8400 5540 8450 5540
Wire Wire Line
	8950 5140 8950 5190
$Comp
L Device_GOST:R R?
U 1 1 672BB93D
P 9550 7340
AR Path="/672BB93D" Ref="R?"  Part="1" 
AR Path="/678B8349/672BB93D" Ref="R?"  Part="1" 
AR Path="/6724E955/672BB93D" Ref="R?"  Part="1" 
AR Path="/6724F3EC/672BB93D" Ref="R?"  Part="1" 
F 0 "R?" V 9482 7447 79  0001 L CNN
F 1 "1k" H 9500 7340 79  0000 L CNN
F 2 "" H 9450 7365 60  0001 C CNN
F 3 "" H 9575 7165 60  0001 C CNN
	1    9550 7340
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 6990 9550 6940
Wire Wire Line
	9650 6940 9550 6940
Connection ~ 9550 6940
Wire Wire Line
	9550 7740 9550 7690
Wire Wire Line
	8950 6740 8950 6940
Wire Wire Line
	8950 6940 9550 6940
Wire Wire Line
	9550 5990 8950 5990
Wire Wire Line
	9550 5990 9550 6940
Connection ~ 8950 5990
Wire Wire Line
	8950 5990 8950 6040
Wire Wire Line
	7250 5540 7700 5540
Wire Wire Line
	7700 6390 7250 6390
Wire Wire Line
	7250 6390 7250 7150
Text Notes 3800 2980 0    50   ~ 0
X1
Wire Bus Line
	3800 2900 3890 2900
Text Notes 6080 4550 0    50   ~ 0
X1*X2
Wire Bus Line
	6080 4450 6170 4450
Text Notes 3800 5310 0    50   ~ 0
X2
Text Notes 10000 1760 0    98   ~ 0
X1
Text Notes 10350 1760 0    98   ~ 0
X2
Text Notes 10650 1760 0    98   ~ 0
OUT
Wire Bus Line
	9900 1810 10950 1810
Wire Bus Line
	9900 2110 10950 2110
Wire Bus Line
	9900 2410 10950 2410
Wire Bus Line
	9900 2710 10950 2710
Text Notes 10000 2010 0    98   ~ 0
0
Text Notes 10000 2360 0    98   ~ 0
0
Text Notes 10000 2660 0    98   ~ 0
1
Wire Bus Line
	10950 1610 10950 1810
Wire Bus Line
	9900 3010 10250 3010
Wire Bus Line
	10250 1610 10250 3010
Wire Bus Line
	10600 1610 10600 3010
Connection ~ 10950 1810
Wire Bus Line
	10950 1810 10950 2110
Connection ~ 10950 2110
Wire Bus Line
	10950 2110 10950 2410
Connection ~ 10950 2410
Wire Bus Line
	10950 2410 10950 2710
Connection ~ 10950 2710
Wire Bus Line
	10950 2710 10950 3010
Text Notes 10000 2910 0    98   ~ 0
1
Text Notes 10400 2010 0    98   ~ 0
0
Text Notes 10750 2010 0    98   ~ 0
1
Text Notes 10400 2360 0    98   ~ 0
1
Text Notes 10750 2360 0    98   ~ 0
1
Text Notes 10400 2660 0    98   ~ 0
0
Text Notes 10750 2660 0    98   ~ 0
1
Text Notes 10400 2910 0    98   ~ 0
1
Text Notes 10750 2910 0    98   ~ 0
0
Connection ~ 10250 3010
Wire Bus Line
	10250 3010 10600 3010
Connection ~ 10600 3010
Wire Bus Line
	10600 3010 10950 3010
Wire Wire Line
	3600 4560 3600 4710
Wire Wire Line
	3600 5410 3600 5580
Wire Wire Line
	4260 5580 3600 5580
Connection ~ 3600 5580
Wire Wire Line
	3600 5580 3600 5680
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT?
U 1 1 672FDAD8
P 5790 3900
AR Path="/672FDAD8" Ref="VT?"  Part="1" 
AR Path="/6724F3EC/672FDAD8" Ref="VT?"  Part="1" 
F 0 "VT?" H 6086 3900 79  0001 L CNN
F 1 "2Т3130А9" H 5790 3400 79  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5790 3300 79  0001 C CNN
F 3 "" H 5822 3900 79  0001 C CNN
	1    5790 3900
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:R R?
U 1 1 672FDADE
P 5340 4300
AR Path="/672FDADE" Ref="R?"  Part="1" 
AR Path="/6724F3EC/672FDADE" Ref="R?"  Part="1" 
F 0 "R?" H 5340 4610 79  0001 C CNN
F 1 "10k" H 5340 4300 79  0000 C CNN
F 2 "" H 5240 4325 60  0001 C CNN
F 3 "" H 5365 4125 60  0001 C CNN
	1    5340 4300
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT?
U 1 1 672FDAEB
P 5790 3050
AR Path="/672FDAEB" Ref="VT?"  Part="1" 
AR Path="/6724F3EC/672FDAEB" Ref="VT?"  Part="1" 
F 0 "VT?" H 6086 3050 79  0001 L CNN
F 1 "2Т3130А9" H 5790 2550 79  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5790 2450 79  0001 C CNN
F 3 "" H 5822 3050 79  0001 C CNN
	1    5790 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5940 3400 5940 3550
$Comp
L Device_GOST:R R?
U 1 1 672FDAF9
P 5940 5050
AR Path="/672FDAF9" Ref="R?"  Part="1" 
AR Path="/6724F3EC/672FDAF9" Ref="R?"  Part="1" 
F 0 "R?" V 5872 5157 79  0001 L CNN
F 1 "1k" H 5890 5050 79  0000 L CNN
F 2 "" H 5840 5075 60  0001 C CNN
F 3 "" H 5965 4875 60  0001 C CNN
	1    5940 5050
	0    1    1    0   
$EndComp
$Comp
L power_GOST:+5V #PWR?
U 1 1 672FDAFF
P 5940 2400
AR Path="/672FDAFF" Ref="#PWR?"  Part="1" 
AR Path="/6724F3EC/672FDAFF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5940 2300 79  0001 C CNN
F 1 "+5V" H 5940 2621 79  0000 C CNN
F 2 "" V 5940 2525 98  0000 C CNN
F 3 "" H 5940 2525 98  0001 C CNN
	1    5940 2400
	1    0    0    -1  
$EndComp
$Comp
L power_GOST:GND #PWR?
U 1 1 672FDB0D
P 5940 5400
AR Path="/672FDB0D" Ref="#PWR?"  Part="1" 
AR Path="/6724F3EC/672FDB0D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5940 5450 60  0001 C CNN
F 1 "GND" H 5940 5150 79  0001 C CNN
F 2 "" H 5940 5400 60  0000 C CNN
F 3 "" H 5940 5400 60  0001 C CNN
	1    5940 5400
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:R R?
U 1 1 672FDB13
P 4790 4300
AR Path="/672FDB13" Ref="R?"  Part="1" 
AR Path="/6724F3EC/672FDB13" Ref="R?"  Part="1" 
F 0 "R?" H 4790 4610 79  0001 C CNN
F 1 "10k" H 4790 4300 79  0000 C CNN
F 2 "" H 4690 4325 60  0001 C CNN
F 3 "" H 4815 4125 60  0001 C CNN
	1    4790 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	5340 4650 5340 4700
Wire Wire Line
	5340 3900 5340 3950
Connection ~ 5340 3900
Wire Wire Line
	5340 3900 5440 3900
Wire Wire Line
	5340 4700 5940 4700
Wire Wire Line
	5940 4250 5940 4700
Wire Wire Line
	4790 4650 4790 4700
Wire Wire Line
	4790 4700 5340 4700
Connection ~ 5340 4700
Wire Wire Line
	4790 3950 4790 3050
Wire Wire Line
	4790 3050 5440 3050
Connection ~ 4790 3050
Text Notes 5400 3480 0    50   ~ 0
И
Wire Wire Line
	5940 2400 5940 2700
Connection ~ 5940 4700
Wire Wire Line
	3590 3050 4790 3050
Wire Wire Line
	4260 3900 4260 5580
Wire Wire Line
	4260 3900 5340 3900
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT?
U 1 1 67312802
P 5820 8550
AR Path="/67312802" Ref="VT?"  Part="1" 
AR Path="/6724F3EC/67312802" Ref="VT?"  Part="1" 
F 0 "VT?" H 6116 8550 79  0001 L CNN
F 1 "2Т3130А9" H 5820 8050 79  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5820 7950 79  0001 C CNN
F 3 "" H 5852 8550 79  0001 C CNN
	1    5820 8550
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:R R?
U 1 1 67312808
P 5370 8950
AR Path="/67312808" Ref="R?"  Part="1" 
AR Path="/6724F3EC/67312808" Ref="R?"  Part="1" 
F 0 "R?" H 5370 9260 79  0001 C CNN
F 1 "10k" H 5370 8950 79  0000 C CNN
F 2 "" H 5270 8975 60  0001 C CNN
F 3 "" H 5395 8775 60  0001 C CNN
	1    5370 8950
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic_GOST:CON X?
U 1 1 6731280F
P 5270 8550
AR Path="/6731280F" Ref="X?"  Part="1" 
AR Path="/6724F3EC/6731280F" Ref="X?"  Part="1" 
F 0 "X?" H 5163 8811 79  0001 C CNN
F 1 "CON" H 5070 8450 79  0001 C CNN
F 2 "" H 5270 8550 60  0001 C CNN
F 3 "" H 5020 8450 60  0001 C CNN
F 4 "X2" H 5163 8675 79  0000 C CNN "PIN"
	1    5270 8550
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT?
U 1 1 67312815
P 5820 7700
AR Path="/67312815" Ref="VT?"  Part="1" 
AR Path="/6724F3EC/67312815" Ref="VT?"  Part="1" 
F 0 "VT?" H 6116 7700 79  0001 L CNN
F 1 "2Т3130А9" H 5820 7200 79  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5820 7100 79  0001 C CNN
F 3 "" H 5852 7700 79  0001 C CNN
	1    5820 7700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic_GOST:CON X?
U 1 1 6731281C
P 4620 7700
AR Path="/6731281C" Ref="X?"  Part="1" 
AR Path="/6724F3EC/6731281C" Ref="X?"  Part="1" 
F 0 "X?" H 4513 7961 79  0001 C CNN
F 1 "CON" H 4420 7600 79  0001 C CNN
F 2 "" H 4620 7700 60  0001 C CNN
F 3 "" H 4370 7600 60  0001 C CNN
F 4 "X1" H 4513 7825 79  0000 C CNN "PIN"
	1    4620 7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5970 8050 5970 8200
$Comp
L Device_GOST:R R?
U 1 1 67312823
P 5970 6750
AR Path="/67312823" Ref="R?"  Part="1" 
AR Path="/6724F3EC/67312823" Ref="R?"  Part="1" 
F 0 "R?" V 5902 6857 79  0001 L CNN
F 1 "1k" H 5920 6750 79  0000 L CNN
F 2 "" H 5870 6775 60  0001 C CNN
F 3 "" H 5995 6575 60  0001 C CNN
	1    5970 6750
	0    1    1    0   
$EndComp
$Comp
L power_GOST:+5V #PWR?
U 1 1 67312829
P 5970 6350
AR Path="/67312829" Ref="#PWR?"  Part="1" 
AR Path="/6724F3EC/67312829" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5970 6250 79  0001 C CNN
F 1 "+5V" H 5970 6571 79  0000 C CNN
F 2 "" V 5970 6475 98  0000 C CNN
F 3 "" H 5970 6475 98  0001 C CNN
	1    5970 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5970 7100 5970 7150
Connection ~ 5970 7150
Wire Wire Line
	5970 6350 5970 6400
Wire Wire Line
	5970 7150 5970 7350
$Comp
L power_GOST:GND #PWR?
U 1 1 6731283B
P 5970 9350
AR Path="/6731283B" Ref="#PWR?"  Part="1" 
AR Path="/6724F3EC/6731283B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5970 9400 60  0001 C CNN
F 1 "GND" H 5970 9100 79  0001 C CNN
F 2 "" H 5970 9350 60  0000 C CNN
F 3 "" H 5970 9350 60  0001 C CNN
	1    5970 9350
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:R R?
U 1 1 67312841
P 4820 8950
AR Path="/67312841" Ref="R?"  Part="1" 
AR Path="/6724F3EC/67312841" Ref="R?"  Part="1" 
F 0 "R?" H 4820 9260 79  0001 C CNN
F 1 "10k" H 4820 8950 79  0000 C CNN
F 2 "" H 4720 8975 60  0001 C CNN
F 3 "" H 4845 8775 60  0001 C CNN
	1    4820 8950
	0    1    1    0   
$EndComp
Wire Wire Line
	5370 9300 5370 9350
Wire Wire Line
	5370 8550 5370 8600
Wire Wire Line
	5270 8550 5370 8550
Connection ~ 5370 8550
Wire Wire Line
	5370 8550 5470 8550
Wire Wire Line
	5370 9350 5970 9350
Wire Wire Line
	5970 8900 5970 9350
Connection ~ 5970 9350
Wire Wire Line
	4820 9300 4820 9350
Wire Wire Line
	4820 9350 5370 9350
Connection ~ 5370 9350
Wire Wire Line
	4820 8600 4820 7700
Wire Wire Line
	4620 7700 4820 7700
Wire Wire Line
	4820 7700 5470 7700
Connection ~ 4820 7700
Text Notes 5320 7300 0    50   ~ 0
И-НЕ
Wire Wire Line
	7250 4700 7250 5540
Wire Wire Line
	5940 4700 7250 4700
Wire Wire Line
	5970 7150 7250 7150
Text Notes 9270 5970 0    50   ~ 0
X1*X2 + X1*X2
Wire Bus Line
	9260 5880 9350 5880
Wire Bus Line
	9630 5870 9930 5870
$EndSCHEMATC
