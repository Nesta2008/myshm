EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 2 4
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
L Transistor_BJT_GOST:2Т3130А9 VT?
U 1 1 678C18F9
P 4890 2980
AR Path="/678C18F9" Ref="VT?"  Part="1" 
AR Path="/678B8349/678C18F9" Ref="VT?"  Part="1" 
F 0 "VT?" H 5186 2980 79  0001 L CNN
F 1 "2Т3130А9" H 4890 2480 79  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4890 2380 79  0001 C CNN
F 3 "" H 4922 2980 79  0001 C CNN
	1    4890 2980
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:R R?
U 1 1 678C18FF
P 4440 3380
AR Path="/678C18FF" Ref="R?"  Part="1" 
AR Path="/678B8349/678C18FF" Ref="R?"  Part="1" 
F 0 "R?" H 4440 3690 79  0001 C CNN
F 1 "10k" H 4440 3380 79  0000 C CNN
F 2 "" H 4340 3405 60  0001 C CNN
F 3 "" H 4465 3205 60  0001 C CNN
	1    4440 3380
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic_GOST:CON X?
U 1 1 678C1906
P 4340 2980
AR Path="/678C1906" Ref="X?"  Part="1" 
AR Path="/678B8349/678C1906" Ref="X?"  Part="1" 
F 0 "X?" H 4233 3241 79  0001 C CNN
F 1 "CON" H 4140 2880 79  0001 C CNN
F 2 "" H 4340 2980 60  0001 C CNN
F 3 "" H 4090 2880 60  0001 C CNN
F 4 "X2" H 4233 3105 79  0000 C CNN "PIN"
	1    4340 2980
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT?
U 1 1 678C190C
P 4890 2130
AR Path="/678C190C" Ref="VT?"  Part="1" 
AR Path="/678B8349/678C190C" Ref="VT?"  Part="1" 
F 0 "VT?" H 5186 2130 79  0001 L CNN
F 1 "2Т3130А9" H 4890 1630 79  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4890 1530 79  0001 C CNN
F 3 "" H 4922 2130 79  0001 C CNN
	1    4890 2130
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic_GOST:CON X?
U 1 1 678C1913
P 3690 2130
AR Path="/678C1913" Ref="X?"  Part="1" 
AR Path="/678B8349/678C1913" Ref="X?"  Part="1" 
F 0 "X?" H 3583 2391 79  0001 C CNN
F 1 "CON" H 3490 2030 79  0001 C CNN
F 2 "" H 3690 2130 60  0001 C CNN
F 3 "" H 3440 2030 60  0001 C CNN
F 4 "X1" H 3583 2255 79  0000 C CNN "PIN"
	1    3690 2130
	1    0    0    -1  
$EndComp
Wire Wire Line
	5040 2480 5040 2630
$Comp
L Device_GOST:R R?
U 1 1 678C191A
P 5040 4130
AR Path="/678C191A" Ref="R?"  Part="1" 
AR Path="/678B8349/678C191A" Ref="R?"  Part="1" 
F 0 "R?" V 4972 4237 79  0001 L CNN
F 1 "1k" H 4990 4130 79  0000 L CNN
F 2 "" H 4940 4155 60  0001 C CNN
F 3 "" H 5065 3955 60  0001 C CNN
	1    5040 4130
	0    1    1    0   
$EndComp
$Comp
L power_GOST:+5V #PWR?
U 1 1 678C1920
P 5040 1480
AR Path="/678C1920" Ref="#PWR?"  Part="1" 
AR Path="/678B8349/678C1920" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5040 1380 79  0001 C CNN
F 1 "+5V" H 5040 1701 79  0000 C CNN
F 2 "" V 5040 1605 98  0000 C CNN
F 3 "" H 5040 1605 98  0001 C CNN
	1    5040 1480
	1    0    0    -1  
$EndComp
$Comp
L power_GOST:GND #PWR?
U 1 1 678C192E
P 5040 4480
AR Path="/678C192E" Ref="#PWR?"  Part="1" 
AR Path="/678B8349/678C192E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5040 4530 60  0001 C CNN
F 1 "GND" H 5040 4230 79  0001 C CNN
F 2 "" H 5040 4480 60  0000 C CNN
F 3 "" H 5040 4480 60  0001 C CNN
	1    5040 4480
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:R R?
U 1 1 678C1934
P 3890 3380
AR Path="/678C1934" Ref="R?"  Part="1" 
AR Path="/678B8349/678C1934" Ref="R?"  Part="1" 
F 0 "R?" H 3890 3690 79  0001 C CNN
F 1 "10k" H 3890 3380 79  0000 C CNN
F 2 "" H 3790 3405 60  0001 C CNN
F 3 "" H 3915 3205 60  0001 C CNN
	1    3890 3380
	0    1    1    0   
$EndComp
Wire Wire Line
	4440 3730 4440 3780
Wire Wire Line
	4440 2980 4440 3030
Wire Wire Line
	4340 2980 4440 2980
Connection ~ 4440 2980
Wire Wire Line
	4440 2980 4540 2980
Wire Wire Line
	4440 3780 5040 3780
Wire Wire Line
	5040 3330 5040 3780
Wire Wire Line
	3890 3730 3890 3780
Wire Wire Line
	3890 3780 4440 3780
Connection ~ 4440 3780
Wire Wire Line
	3890 3030 3890 2130
Wire Wire Line
	3690 2130 3890 2130
Wire Wire Line
	3890 2130 4540 2130
Connection ~ 3890 2130
Text Notes 4500 2560 0    50   ~ 0
И
Wire Wire Line
	5040 1480 5040 1780
Connection ~ 5040 3780
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT?
U 1 1 678C38D9
P 4070 6640
F 0 "VT?" H 4366 6640 79  0001 L CNN
F 1 "2Т3130А9" H 4070 6140 79  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4070 6040 79  0001 C CNN
F 3 "" H 4102 6640 79  0001 C CNN
	1    4070 6640
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic_GOST:CON X?
U 1 1 678C38E0
P 5270 6640
F 0 "X?" H 5163 6901 79  0001 C CNN
F 1 "CON" H 5070 6540 79  0001 C CNN
F 2 "" H 5270 6640 60  0001 C CNN
F 3 "" H 5020 6540 60  0001 C CNN
F 4 "X2" H 5163 6765 79  0000 C CNN "PIN"
	1    5270 6640
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT?
U 1 1 678C38E6
P 4770 6640
F 0 "VT?" H 5066 6640 79  0001 L CNN
F 1 "2Т3130А9" H 4770 6140 79  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4770 6040 79  0001 C CNN
F 3 "" H 4802 6640 79  0001 C CNN
	1    4770 6640
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic_GOST:CON X?
U 1 1 678C38ED
P 3570 6640
F 0 "X?" H 3463 6901 79  0001 C CNN
F 1 "CON" H 3370 6540 79  0001 C CNN
F 2 "" H 3570 6640 60  0001 C CNN
F 3 "" H 3320 6540 60  0001 C CNN
F 4 "X1" H 3463 6765 79  0000 C CNN "PIN"
	1    3570 6640
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:R R?
U 1 1 678C38F3
P 4420 5540
F 0 "R?" V 4352 5647 79  0001 L CNN
F 1 "1k" H 4370 5540 79  0000 L CNN
F 2 "" H 4320 5565 60  0001 C CNN
F 3 "" H 4445 5365 60  0001 C CNN
	1    4420 5540
	0    1    1    0   
$EndComp
$Comp
L power_GOST:+5V #PWR?
U 1 1 678C38F9
P 4420 5140
F 0 "#PWR?" H 4420 5040 79  0001 C CNN
F 1 "+5V" H 4420 5361 79  0000 C CNN
F 2 "" V 4420 5265 98  0000 C CNN
F 3 "" H 4420 5265 98  0001 C CNN
	1    4420 5140
	1    0    0    -1  
$EndComp
Wire Wire Line
	4420 5890 4420 5940
Connection ~ 4420 5940
Wire Wire Line
	4420 5140 4420 5190
$Comp
L Device_GOST:R R?
U 1 1 678C390A
P 3620 7140
F 0 "R?" H 3620 7450 79  0001 C CNN
F 1 "10k" H 3620 7140 79  0000 C CNN
F 2 "" H 3520 7165 60  0001 C CNN
F 3 "" H 3645 6965 60  0001 C CNN
	1    3620 7140
	0    1    1    0   
$EndComp
$Comp
L Device_GOST:R R?
U 1 1 678C3910
P 5220 7140
F 0 "R?" H 5220 7450 79  0001 C CNN
F 1 "10k" H 5220 7140 79  0000 C CNN
F 2 "" H 5120 7165 60  0001 C CNN
F 3 "" H 5245 6965 60  0001 C CNN
	1    5220 7140
	0    1    1    0   
$EndComp
$Comp
L power_GOST:GND #PWR?
U 1 1 678C3916
P 4420 7640
F 0 "#PWR?" H 4420 7690 60  0001 C CNN
F 1 "GND" H 4420 7390 79  0001 C CNN
F 2 "" H 4420 7640 60  0000 C CNN
F 3 "" H 4420 7640 60  0001 C CNN
	1    4420 7640
	1    0    0    -1  
$EndComp
Wire Wire Line
	3620 7490 3620 7540
Wire Wire Line
	3620 7540 4420 7540
Wire Wire Line
	4220 6990 4220 7190
Wire Wire Line
	4220 7190 4420 7190
Wire Wire Line
	4420 7190 4420 7540
Connection ~ 4420 7540
Wire Wire Line
	4620 7190 4420 7190
Connection ~ 4420 7190
Wire Wire Line
	4620 6990 4620 7190
Wire Wire Line
	4420 7640 4420 7540
Wire Wire Line
	5220 7540 5220 7490
Wire Wire Line
	4420 7540 5220 7540
Wire Wire Line
	3620 6790 3620 6640
Wire Wire Line
	3620 6640 3720 6640
Wire Wire Line
	5120 6640 5220 6640
Wire Wire Line
	5220 6640 5220 6790
Wire Wire Line
	4220 6290 4220 6090
Wire Wire Line
	4220 6090 4420 6090
Wire Wire Line
	4420 5940 4420 6090
Wire Wire Line
	4620 6290 4620 6090
Wire Wire Line
	4620 6090 4420 6090
Connection ~ 4420 6090
Wire Wire Line
	3570 6640 3620 6640
Connection ~ 3620 6640
Wire Wire Line
	5220 6640 5270 6640
Connection ~ 5220 6640
Text Notes 3770 6040 0    50   ~ 0
ИЛИ-НЕ
Wire Bus Line
	2250 1100 2550 1100
Text Notes 1700 1200 0    50   ~ 0
Y = X1*X2 + (X1+X2) = И + ИЛИ-НЕ
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT?
U 1 1 67249834
P 8150 4910
AR Path="/67249834" Ref="VT?"  Part="1" 
AR Path="/678B8349/67249834" Ref="VT?"  Part="1" 
F 0 "VT?" H 8446 4910 79  0001 L CNN
F 1 "2Т3130А9" H 8150 4410 79  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8150 4310 79  0001 C CNN
F 3 "" H 8182 4910 79  0001 C CNN
	1    8150 4910
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:R R?
U 1 1 6724983A
P 7400 4910
AR Path="/6724983A" Ref="R?"  Part="1" 
AR Path="/678B8349/6724983A" Ref="R?"  Part="1" 
F 0 "R?" H 7400 5220 79  0001 C CNN
F 1 "10k" H 7400 4910 79  0000 C CNN
F 2 "" H 7300 4935 60  0001 C CNN
F 3 "" H 7425 4735 60  0001 C CNN
	1    7400 4910
	1    0    0    -1  
$EndComp
$Comp
L power_GOST:GND #PWR?
U 1 1 67249840
P 8900 6260
AR Path="/67249840" Ref="#PWR?"  Part="1" 
AR Path="/678B8349/67249840" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8900 6310 60  0001 C CNN
F 1 "GND" H 8900 6010 79  0001 C CNN
F 2 "" H 8900 6260 60  0000 C CNN
F 3 "" H 8900 6260 60  0001 C CNN
	1    8900 6260
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic_GOST:CON X?
U 1 1 6724984E
P 9000 5460
AR Path="/6724984E" Ref="X?"  Part="1" 
AR Path="/678B8349/6724984E" Ref="X?"  Part="1" 
F 0 "X?" H 8893 5199 79  0001 C CNN
F 1 "CON" H 8800 5360 79  0001 C CNN
F 2 "" H 9000 5460 60  0001 C CNN
F 3 "" H 8750 5360 60  0001 C CNN
F 4 "OUT" H 8893 5335 79  0000 C CNN "PIN"
	1    9000 5460
	-1   0    0    1   
$EndComp
Wire Wire Line
	7750 4910 7800 4910
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT?
U 1 1 67249856
P 8150 4060
AR Path="/67249856" Ref="VT?"  Part="1" 
AR Path="/678B8349/67249856" Ref="VT?"  Part="1" 
F 0 "VT?" H 8446 4060 79  0001 L CNN
F 1 "2Т3130А9" H 8150 3560 79  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8150 3460 79  0001 C CNN
F 3 "" H 8182 4060 79  0001 C CNN
	1    8150 4060
	1    0    0    -1  
$EndComp
Text Notes 7800 4510 0    50   ~ 0
ИЛИ
$Comp
L Device_GOST:R R?
U 1 1 6724985D
P 7400 4060
AR Path="/6724985D" Ref="R?"  Part="1" 
AR Path="/678B8349/6724985D" Ref="R?"  Part="1" 
F 0 "R?" H 7400 4370 79  0001 C CNN
F 1 "10k" H 7400 4060 79  0000 C CNN
F 2 "" H 7300 4085 60  0001 C CNN
F 3 "" H 7425 3885 60  0001 C CNN
	1    7400 4060
	1    0    0    -1  
$EndComp
$Comp
L power_GOST:+5V #PWR?
U 1 1 67249863
P 8300 3660
AR Path="/67249863" Ref="#PWR?"  Part="1" 
AR Path="/678B8349/67249863" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8300 3560 79  0001 C CNN
F 1 "+5V" H 8300 3881 79  0000 C CNN
F 2 "" V 8300 3785 98  0000 C CNN
F 3 "" H 8300 3785 98  0001 C CNN
	1    8300 3660
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4060 7050 4060
Wire Wire Line
	8300 4410 8300 4510
Wire Wire Line
	7750 4060 7800 4060
Wire Wire Line
	8300 3660 8300 3710
$Comp
L Device_GOST:R R?
U 1 1 67249874
P 8900 5860
AR Path="/67249874" Ref="R?"  Part="1" 
AR Path="/678B8349/67249874" Ref="R?"  Part="1" 
F 0 "R?" V 8832 5967 79  0001 L CNN
F 1 "1k" H 8850 5860 79  0000 L CNN
F 2 "" H 8800 5885 60  0001 C CNN
F 3 "" H 8925 5685 60  0001 C CNN
	1    8900 5860
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 5510 8900 5460
Wire Wire Line
	9000 5460 8900 5460
Connection ~ 8900 5460
Wire Wire Line
	8900 6260 8900 6210
Wire Wire Line
	8300 5260 8300 5460
Wire Wire Line
	8300 5460 8900 5460
Wire Wire Line
	8900 4510 8300 4510
Wire Wire Line
	8900 4510 8900 5460
Connection ~ 8300 4510
Wire Wire Line
	8300 4510 8300 4560
Wire Wire Line
	6950 3780 6950 4060
Wire Wire Line
	5040 3780 6950 3780
Wire Wire Line
	6810 5940 6810 4910
Wire Wire Line
	4420 5940 6810 5940
Wire Wire Line
	6810 4910 7050 4910
Text Notes 5310 3630 0    50   ~ 0
X1*X2
Wire Bus Line
	4700 5740 5000 5740
Text Notes 4710 5850 0    50   ~ 0
X1+X2
Text Notes 10740 4180 0    98   ~ 0
X1
Text Notes 11090 4180 0    98   ~ 0
X2
Text Notes 11390 4180 0    98   ~ 0
OUT
Wire Bus Line
	10640 4230 11690 4230
Wire Bus Line
	10640 4530 11690 4530
Wire Bus Line
	10640 4830 11690 4830
Wire Bus Line
	10640 5130 11690 5130
Text Notes 10740 4430 0    98   ~ 0
0
Text Notes 10740 4780 0    98   ~ 0
0
Text Notes 10740 5080 0    98   ~ 0
1
Wire Bus Line
	11690 4030 11690 4230
Wire Bus Line
	10640 5430 10990 5430
Wire Bus Line
	10990 4030 10990 5430
Wire Bus Line
	11340 4030 11340 5430
Connection ~ 11690 4230
Wire Bus Line
	11690 4230 11690 4530
Connection ~ 11690 4530
Wire Bus Line
	11690 4530 11690 4830
Connection ~ 11690 4830
Wire Bus Line
	11690 4830 11690 5130
Connection ~ 11690 5130
Wire Bus Line
	11690 5130 11690 5430
Text Notes 10740 5330 0    98   ~ 0
1
Text Notes 11140 4430 0    98   ~ 0
0
Text Notes 11490 4430 0    98   ~ 0
1
Text Notes 11140 4780 0    98   ~ 0
1
Text Notes 11490 4780 0    98   ~ 0
0
Text Notes 11140 5080 0    98   ~ 0
0
Text Notes 11490 5080 0    98   ~ 0
0
Text Notes 11140 5330 0    98   ~ 0
1
Text Notes 11490 5330 0    98   ~ 0
1
Connection ~ 10990 5430
Wire Bus Line
	10990 5430 11340 5430
Connection ~ 11340 5430
Wire Bus Line
	11340 5430 11690 5430
$EndSCHEMATC
