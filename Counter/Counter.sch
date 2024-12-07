EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 4
Title "Счетчики"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 "Шайхуллин "
Comment3 "Кулиев"
Comment4 "Кулиев"
$EndDescr
Text Notes 9100 2000 0    98   ~ 0
Q3
Text Notes 9400 2000 0    98   ~ 0
Q2
Text Notes 9150 2200 0    98   ~ 0
0
Text Notes 9450 2200 0    98   ~ 0
0
$Comp
L Logic_CMOS_1564_GOST:1564ЛА3 DD1
U 1 1 6733FE7F
P 4200 1650
F 0 "DD1" H 4200 2045 79  0000 C CNN
F 1 "1564ЛА3" H 4200 1250 79  0001 C CNN
F 2 "Package_CDFP_RU:401.14-5" H 4200 1150 79  0001 C CNN
F 3 "http://www.voshod-krlz.ru/files/datasheets/1564LA3.pdf" H 4200 2050 79  0001 C CNN
	1    4200 1650
	1    0    0    -1  
$EndComp
$Comp
L Logic_CMOS_1564_GOST:1564ЛА3 DD1
U 2 1 67340BB5
P 5850 1650
F 0 "DD1" H 5850 2045 79  0000 C CNN
F 1 "1564ЛА3" H 5850 1250 79  0001 C CNN
F 2 "Package_CDFP_RU:401.14-5" H 5850 1150 79  0001 C CNN
F 3 "http://www.voshod-krlz.ru/files/datasheets/1564LA3.pdf" H 5850 2050 79  0001 C CNN
	2    5850 1650
	1    0    0    -1  
$EndComp
$Comp
L Logic_CMOS_1564_GOST:1564ЛА3 DD1
U 3 1 6734121E
P 4200 3000
F 0 "DD1" H 4200 3395 79  0000 C CNN
F 1 "1564ЛА3" H 4200 2600 79  0001 C CNN
F 2 "Package_CDFP_RU:401.14-5" H 4200 2500 79  0001 C CNN
F 3 "http://www.voshod-krlz.ru/files/datasheets/1564LA3.pdf" H 4200 3400 79  0001 C CNN
	3    4200 3000
	1    0    0    -1  
$EndComp
$Comp
L Logic_CMOS_1564_GOST:1564ЛА3 DD1
U 4 1 6734181E
P 5850 3000
F 0 "DD1" H 5850 3395 79  0000 C CNN
F 1 "1564ЛА3" H 5850 2600 79  0001 C CNN
F 2 "Package_CDFP_RU:401.14-5" H 5850 2500 79  0001 C CNN
F 3 "http://www.voshod-krlz.ru/files/datasheets/1564LA3.pdf" H 5850 3400 79  0001 C CNN
	4    5850 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1650 5000 1650
Wire Wire Line
	5000 1650 5000 1550
Wire Wire Line
	5000 1550 5350 1550
Wire Wire Line
	3700 2900 3600 2900
Wire Wire Line
	3600 2900 3600 2250
Wire Wire Line
	3600 2250 5000 2250
Wire Wire Line
	5000 2250 5000 1650
Connection ~ 5000 1650
Wire Wire Line
	4700 3000 4950 3000
Wire Wire Line
	4950 3000 4950 3100
Wire Wire Line
	4950 3100 5350 3100
Wire Wire Line
	5350 2900 5250 2900
Wire Wire Line
	5250 2900 5250 2450
Wire Wire Line
	5250 2450 6450 2450
Wire Wire Line
	6450 2450 6450 1650
Wire Wire Line
	6450 1650 6350 1650
Wire Wire Line
	5350 1750 5250 1750
Wire Wire Line
	5250 1750 5250 2250
Wire Wire Line
	5250 2250 6250 2250
Wire Wire Line
	6250 2250 6250 2750
Wire Wire Line
	6250 2750 6450 2750
Wire Wire Line
	6450 2750 6450 3000
Wire Wire Line
	6450 3000 6350 3000
Wire Wire Line
	3700 3100 3300 3100
Wire Wire Line
	3300 3100 3300 2500
Wire Wire Line
	3300 1750 3700 1750
Wire Wire Line
	3700 1550 3550 1550
Wire Wire Line
	3550 1550 3550 1100
Wire Wire Line
	3550 1100 6650 1100
Wire Wire Line
	6650 3000 6450 3000
Connection ~ 6450 3000
$Comp
L Connector_Generic_GOST:CON X1
U 1 1 6737DAC1
P 3050 2500
F 0 "X1" H 2943 2761 79  0000 C CNN
F 1 "T" H 2850 2400 79  0001 C CNN
F 2 "" H 3050 2500 60  0001 C CNN
F 3 "" H 2800 2400 60  0001 C CNN
F 4 "T" H 2943 2626 79  0000 C CNN "PIN"
	1    3050 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2500 3300 2500
Connection ~ 3300 2500
Wire Wire Line
	3300 2500 3300 1750
$Comp
L Connector_Generic_GOST:CON Q1
U 1 1 673833B4
P 7000 1650
F 0 "Q1" H 6950 1550 79  0000 C CNN
F 1 "Q0" H 6800 1550 79  0001 C CNN
F 2 "" H 7000 1650 60  0001 C CNN
F 3 "" H 6750 1550 60  0001 C CNN
F 4 "Q0" H 6893 1776 79  0001 C CNN "PIN"
	1    7000 1650
	-1   0    0    1   
$EndComp
$Comp
L Logic_CMOS_1564_GOST:1564ЛА3 DD2
U 1 1 6738BF72
P 4200 4050
F 0 "DD2" H 4200 4445 79  0000 C CNN
F 1 "1564ЛА3" H 4200 3650 79  0001 C CNN
F 2 "Package_CDFP_RU:401.14-5" H 4200 3550 79  0001 C CNN
F 3 "http://www.voshod-krlz.ru/files/datasheets/1564LA3.pdf" H 4200 4450 79  0001 C CNN
	1    4200 4050
	1    0    0    -1  
$EndComp
$Comp
L Logic_CMOS_1564_GOST:1564ЛА3 DD2
U 2 1 6738BF78
P 5850 4050
F 0 "DD2" H 5850 4445 79  0000 C CNN
F 1 "1564ЛА3" H 5850 3650 79  0001 C CNN
F 2 "Package_CDFP_RU:401.14-5" H 5850 3550 79  0001 C CNN
F 3 "http://www.voshod-krlz.ru/files/datasheets/1564LA3.pdf" H 5850 4450 79  0001 C CNN
	2    5850 4050
	1    0    0    -1  
$EndComp
$Comp
L Logic_CMOS_1564_GOST:1564ЛА3 DD2
U 3 1 6738BF7E
P 4200 5400
F 0 "DD2" H 4200 5795 79  0000 C CNN
F 1 "1564ЛА3" H 4200 5000 79  0001 C CNN
F 2 "Package_CDFP_RU:401.14-5" H 4200 4900 79  0001 C CNN
F 3 "http://www.voshod-krlz.ru/files/datasheets/1564LA3.pdf" H 4200 5800 79  0001 C CNN
	3    4200 5400
	1    0    0    -1  
$EndComp
$Comp
L Logic_CMOS_1564_GOST:1564ЛА3 DD2
U 4 1 6738BF84
P 5850 5400
F 0 "DD2" H 5850 5795 79  0000 C CNN
F 1 "1564ЛА3" H 5850 5000 79  0001 C CNN
F 2 "Package_CDFP_RU:401.14-5" H 5850 4900 79  0001 C CNN
F 3 "http://www.voshod-krlz.ru/files/datasheets/1564LA3.pdf" H 5850 5800 79  0001 C CNN
	4    5850 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4050 5000 4050
Wire Wire Line
	5000 4050 5000 3950
Wire Wire Line
	5000 3950 5350 3950
Wire Wire Line
	3700 5300 3600 5300
Wire Wire Line
	3600 5300 3600 4650
Wire Wire Line
	3600 4650 5000 4650
Wire Wire Line
	5000 4650 5000 4050
Connection ~ 5000 4050
Wire Wire Line
	4700 5400 4950 5400
Wire Wire Line
	4950 5400 4950 5500
Wire Wire Line
	4950 5500 5350 5500
Wire Wire Line
	5350 5300 5250 5300
Wire Wire Line
	5250 5300 5250 4850
Wire Wire Line
	5250 4850 6450 4850
Wire Wire Line
	6450 4850 6450 4050
Wire Wire Line
	6450 4050 6350 4050
Wire Wire Line
	5350 4150 5250 4150
Wire Wire Line
	5250 4150 5250 4650
Wire Wire Line
	5250 4650 6250 4650
Wire Wire Line
	6250 4650 6250 5150
Wire Wire Line
	6250 5150 6450 5150
Wire Wire Line
	6450 5150 6450 5400
Wire Wire Line
	6450 5400 6350 5400
Wire Wire Line
	3700 5500 3300 5500
Wire Wire Line
	3300 5500 3300 4900
Wire Wire Line
	3300 4150 3700 4150
Wire Wire Line
	3700 3950 3550 3950
Wire Wire Line
	3550 3950 3550 3500
Wire Wire Line
	3550 3500 6650 3500
Wire Wire Line
	6650 3500 6650 5400
Wire Wire Line
	6650 5400 6450 5400
Connection ~ 6450 5400
Wire Wire Line
	3050 4900 3300 4900
Connection ~ 3300 4900
Wire Wire Line
	3300 4900 3300 4150
$Comp
L Connector_Generic_GOST:CON Q2
U 1 1 6738BFB5
P 7000 4050
F 0 "Q2" H 6900 3950 79  0000 C CNN
F 1 "Q0" H 6800 3950 79  0001 C CNN
F 2 "" H 7000 4050 60  0001 C CNN
F 3 "" H 6750 3950 60  0001 C CNN
F 4 "Q0" H 6893 4176 79  0001 C CNN "PIN"
	1    7000 4050
	-1   0    0    1   
$EndComp
$Comp
L Logic_CMOS_1564_GOST:1564ЛА3 DD3
U 1 1 67393E32
P 4200 6650
F 0 "DD3" H 4200 7045 79  0000 C CNN
F 1 "1564ЛА3" H 4200 6250 79  0001 C CNN
F 2 "Package_CDFP_RU:401.14-5" H 4200 6150 79  0001 C CNN
F 3 "http://www.voshod-krlz.ru/files/datasheets/1564LA3.pdf" H 4200 7050 79  0001 C CNN
	1    4200 6650
	1    0    0    -1  
$EndComp
$Comp
L Logic_CMOS_1564_GOST:1564ЛА3 DD3
U 2 1 67393E38
P 5850 6650
F 0 "DD3" H 5850 7045 79  0000 C CNN
F 1 "1564ЛА3" H 5850 6250 79  0001 C CNN
F 2 "Package_CDFP_RU:401.14-5" H 5850 6150 79  0001 C CNN
F 3 "http://www.voshod-krlz.ru/files/datasheets/1564LA3.pdf" H 5850 7050 79  0001 C CNN
	2    5850 6650
	1    0    0    -1  
$EndComp
$Comp
L Logic_CMOS_1564_GOST:1564ЛА3 DD3
U 3 1 67393E3E
P 4200 8000
F 0 "DD3" H 4200 8395 79  0000 C CNN
F 1 "1564ЛА3" H 4200 7600 79  0001 C CNN
F 2 "Package_CDFP_RU:401.14-5" H 4200 7500 79  0001 C CNN
F 3 "http://www.voshod-krlz.ru/files/datasheets/1564LA3.pdf" H 4200 8400 79  0001 C CNN
	3    4200 8000
	1    0    0    -1  
$EndComp
$Comp
L Logic_CMOS_1564_GOST:1564ЛА3 DD3
U 4 1 67393E44
P 5850 8000
F 0 "DD3" H 5850 8395 79  0000 C CNN
F 1 "1564ЛА3" H 5850 7600 79  0001 C CNN
F 2 "Package_CDFP_RU:401.14-5" H 5850 7500 79  0001 C CNN
F 3 "http://www.voshod-krlz.ru/files/datasheets/1564LA3.pdf" H 5850 8400 79  0001 C CNN
	4    5850 8000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 6650 5000 6650
Wire Wire Line
	5000 6650 5000 6550
Wire Wire Line
	5000 6550 5350 6550
Wire Wire Line
	3700 7900 3600 7900
Wire Wire Line
	3600 7900 3600 7250
Wire Wire Line
	3600 7250 5000 7250
Wire Wire Line
	5000 7250 5000 6650
Connection ~ 5000 6650
Wire Wire Line
	4700 8000 4950 8000
Wire Wire Line
	4950 8000 4950 8100
Wire Wire Line
	4950 8100 5350 8100
Wire Wire Line
	5350 7900 5250 7900
Wire Wire Line
	5250 7900 5250 7450
Wire Wire Line
	5250 7450 6450 7450
Wire Wire Line
	6450 7450 6450 6650
Wire Wire Line
	6450 6650 6350 6650
Wire Wire Line
	5350 6750 5250 6750
Wire Wire Line
	5250 6750 5250 7250
Wire Wire Line
	5250 7250 6250 7250
Wire Wire Line
	6250 7250 6250 7750
Wire Wire Line
	6250 7750 6450 7750
Wire Wire Line
	6450 7750 6450 8000
Wire Wire Line
	6450 8000 6350 8000
Wire Wire Line
	3700 8100 3300 8100
Wire Wire Line
	3300 8100 3300 7500
Wire Wire Line
	3300 6750 3700 6750
Wire Wire Line
	3700 6550 3550 6550
Wire Wire Line
	3550 6550 3550 6100
Wire Wire Line
	3550 6100 6650 6100
Wire Wire Line
	6650 6100 6650 8000
Wire Wire Line
	6650 8000 6450 8000
Connection ~ 6450 8000
Wire Wire Line
	3050 7500 3300 7500
Connection ~ 3300 7500
Wire Wire Line
	3300 7500 3300 6750
$Comp
L Connector_Generic_GOST:CON Q3
U 1 1 67393E75
P 7000 6650
F 0 "Q3" H 6900 6550 79  0000 C CNN
F 1 "Q0" H 6800 6550 79  0001 C CNN
F 2 "" H 7000 6650 60  0001 C CNN
F 3 "" H 6750 6550 60  0001 C CNN
F 4 "Q0" H 6893 6776 79  0001 C CNN "PIN"
	1    7000 6650
	-1   0    0    1   
$EndComp
$Comp
L Logic_CMOS_1564_GOST:1564ЛА3 DD4
U 1 1 6739EAA0
P 4250 9150
F 0 "DD4" H 4250 9545 79  0000 C CNN
F 1 "1564ЛА3" H 4250 8750 79  0001 C CNN
F 2 "Package_CDFP_RU:401.14-5" H 4250 8650 79  0001 C CNN
F 3 "http://www.voshod-krlz.ru/files/datasheets/1564LA3.pdf" H 4250 9550 79  0001 C CNN
	1    4250 9150
	1    0    0    -1  
$EndComp
$Comp
L Logic_CMOS_1564_GOST:1564ЛА3 DD4
U 2 1 6739EAA6
P 5900 9150
F 0 "DD4" H 5900 9545 79  0000 C CNN
F 1 "1564ЛА3" H 5900 8750 79  0001 C CNN
F 2 "Package_CDFP_RU:401.14-5" H 5900 8650 79  0001 C CNN
F 3 "http://www.voshod-krlz.ru/files/datasheets/1564LA3.pdf" H 5900 9550 79  0001 C CNN
	2    5900 9150
	1    0    0    -1  
$EndComp
$Comp
L Logic_CMOS_1564_GOST:1564ЛА3 DD4
U 3 1 6739EAAC
P 4250 10500
F 0 "DD4" H 4250 10895 79  0000 C CNN
F 1 "1564ЛА3" H 4250 10100 79  0001 C CNN
F 2 "Package_CDFP_RU:401.14-5" H 4250 10000 79  0001 C CNN
F 3 "http://www.voshod-krlz.ru/files/datasheets/1564LA3.pdf" H 4250 10900 79  0001 C CNN
	3    4250 10500
	1    0    0    -1  
$EndComp
$Comp
L Logic_CMOS_1564_GOST:1564ЛА3 DD4
U 4 1 6739EAB2
P 5900 10500
F 0 "DD4" H 5900 10895 79  0000 C CNN
F 1 "1564ЛА3" H 5900 10100 79  0001 C CNN
F 2 "Package_CDFP_RU:401.14-5" H 5900 10000 79  0001 C CNN
F 3 "http://www.voshod-krlz.ru/files/datasheets/1564LA3.pdf" H 5900 10900 79  0001 C CNN
	4    5900 10500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 9150 5050 9150
Wire Wire Line
	5050 9150 5050 9050
Wire Wire Line
	5050 9050 5400 9050
Wire Wire Line
	3750 10400 3650 10400
Wire Wire Line
	3650 10400 3650 9750
Wire Wire Line
	3650 9750 5050 9750
Wire Wire Line
	5050 9750 5050 9150
Connection ~ 5050 9150
Wire Wire Line
	4750 10500 5000 10500
Wire Wire Line
	5000 10500 5000 10600
Wire Wire Line
	5000 10600 5400 10600
Wire Wire Line
	5400 10400 5300 10400
Wire Wire Line
	5300 10400 5300 9950
Wire Wire Line
	5300 9950 6500 9950
Wire Wire Line
	6500 9950 6500 9150
Wire Wire Line
	6500 9150 6400 9150
Wire Wire Line
	5400 9250 5300 9250
Wire Wire Line
	5300 9250 5300 9750
Wire Wire Line
	5300 9750 6300 9750
Wire Wire Line
	6300 9750 6300 10250
Wire Wire Line
	6300 10250 6500 10250
Wire Wire Line
	6500 10250 6500 10500
Wire Wire Line
	6500 10500 6400 10500
Wire Wire Line
	3750 10600 3350 10600
Wire Wire Line
	3350 10600 3350 10000
Wire Wire Line
	3350 9250 3750 9250
Wire Wire Line
	3750 9050 3600 9050
Wire Wire Line
	3600 9050 3600 8600
Wire Wire Line
	3600 8600 6700 8600
Wire Wire Line
	6700 8600 6700 10500
Wire Wire Line
	6700 10500 6500 10500
Connection ~ 6500 10500
Wire Wire Line
	3100 10000 3350 10000
Connection ~ 3350 10000
Wire Wire Line
	3350 10000 3350 9250
$Comp
L Connector_Generic_GOST:CON Q4
U 1 1 6739EADC
P 7050 9150
F 0 "Q4" H 6950 9050 79  0000 C CNN
F 1 "Q0" H 6850 9050 79  0001 C CNN
F 2 "" H 7050 9150 60  0001 C CNN
F 3 "" H 6800 9050 60  0001 C CNN
F 4 "Q0" H 6943 9276 79  0001 C CNN "PIN"
	1    7050 9150
	-1   0    0    1   
$EndComp
Wire Wire Line
	6650 1100 6650 3000
Wire Wire Line
	7000 1650 6900 1650
Connection ~ 6450 1650
Wire Wire Line
	6900 1650 6900 3400
Wire Wire Line
	6900 3400 3050 3400
Wire Wire Line
	3050 3400 3050 4900
Connection ~ 6900 1650
Wire Wire Line
	6900 1650 6450 1650
Wire Wire Line
	6900 4050 6900 5800
Wire Wire Line
	6900 5800 3050 5800
Wire Wire Line
	3050 5800 3050 7500
Wire Wire Line
	3100 8500 3100 10000
Wire Wire Line
	7000 4050 6900 4050
Wire Wire Line
	6900 4050 6450 4050
Connection ~ 6900 4050
Connection ~ 6450 4050
Wire Wire Line
	7000 6650 6900 6650
Wire Wire Line
	6900 6650 6450 6650
Connection ~ 6900 6650
Wire Wire Line
	6900 6650 6900 8500
Wire Wire Line
	6900 8500 3100 8500
Connection ~ 6450 6650
Connection ~ 6500 9150
Wire Wire Line
	6500 9150 7050 9150
Text Notes 9700 2000 0    98   ~ 0
Q1
Text Notes 10000 2000 0    98   ~ 0
Q0
Text Notes 9750 2200 0    98   ~ 0
0
Text Notes 9150 2450 0    98   ~ 0
0
Text Notes 9750 2450 0    98   ~ 0
0
Text Notes 10050 2450 0    98   ~ 0
1
Text Notes 9150 2700 0    98   ~ 0
0
Text Notes 9150 2950 0    98   ~ 0
0
Text Notes 10050 2950 0    98   ~ 0
1
Text Notes 9150 3200 0    98   ~ 0
0
Text Notes 9450 3200 0    98   ~ 0
1
Text Notes 9750 3200 0    98   ~ 0
0
Text Notes 9150 3450 0    98   ~ 0
0
Text Notes 9450 3450 0    98   ~ 0
1
Text Notes 9750 3450 0    98   ~ 0
0
Text Notes 10050 3450 0    98   ~ 0
1
Text Notes 9150 3700 0    98   ~ 0
0
Text Notes 9450 3700 0    98   ~ 0
1
Text Notes 9150 3950 0    98   ~ 0
0
Text Notes 9450 3950 0    98   ~ 0
1
Text Notes 10050 3950 0    98   ~ 0
1
Text Notes 9750 4200 0    98   ~ 0
0
Text Notes 9750 4450 0    98   ~ 0
0
Text Notes 10050 4450 0    98   ~ 0
1
Text Notes 10050 4950 0    98   ~ 0
1
Text Notes 9450 5200 0    98   ~ 0
1
Text Notes 9750 5200 0    98   ~ 0
0
Text Notes 9450 5450 0    98   ~ 0
1
Text Notes 9750 5450 0    98   ~ 0
0
Text Notes 10050 5450 0    98   ~ 0
1
Text Notes 9450 5700 0    98   ~ 0
1
Text Notes 9450 5950 0    98   ~ 0
1
Text Notes 10050 5950 0    98   ~ 0
1
Text Notes 9150 4200 0    98   ~ 0
1
Text Notes 9150 4450 0    98   ~ 0
1
Text Notes 9150 4700 0    98   ~ 0
1
Text Notes 9150 4950 0    98   ~ 0
1
Text Notes 9150 5200 0    98   ~ 0
1
Text Notes 9150 5450 0    98   ~ 0
1
Text Notes 9150 5700 0    98   ~ 0
1
Text Notes 9150 5950 0    98   ~ 0
1
Text Notes 9450 2450 0    98   ~ 0
0
Text Notes 9450 2700 0    98   ~ 0
0
Text Notes 9450 2950 0    98   ~ 0
0
Text Notes 9450 4200 0    98   ~ 0
0
Text Notes 9450 4450 0    98   ~ 0
0
Text Notes 9450 4700 0    98   ~ 0
0
Text Notes 9450 4950 0    98   ~ 0
0
Text Notes 9750 5700 0    98   ~ 0
1
Text Notes 9750 5950 0    98   ~ 0
1
Text Notes 9750 4700 0    98   ~ 0
1
Text Notes 9750 4950 0    98   ~ 0
1
Text Notes 9750 3700 0    98   ~ 0
1
Text Notes 9750 3950 0    98   ~ 0
1
Text Notes 9750 2700 0    98   ~ 0
1
Text Notes 9750 2950 0    98   ~ 0
1
Text Notes 10050 2200 0    98   ~ 0
0
Text Notes 10050 2700 0    98   ~ 0
0
Text Notes 10050 3200 0    98   ~ 0
0
Text Notes 10050 3700 0    98   ~ 0
0
Text Notes 10050 4200 0    98   ~ 0
0
Text Notes 10050 4700 0    98   ~ 0
0
Text Notes 10050 5200 0    98   ~ 0
0
Text Notes 10050 5700 0    98   ~ 0
0
Text Notes 8700 5950 0    98   ~ 0
15
Text Notes 8700 5700 0    98   ~ 0
14
Text Notes 8700 5450 0    98   ~ 0
13
Text Notes 8700 5200 0    98   ~ 0
12
Text Notes 8700 4950 0    98   ~ 0
11
Text Notes 8700 4700 0    98   ~ 0
10
Text Notes 8700 4450 0    98   ~ 0
9
Text Notes 8700 4200 0    98   ~ 0
8
Text Notes 8700 3950 0    98   ~ 0
7
Text Notes 8700 3700 0    98   ~ 0
6
Text Notes 8700 3450 0    98   ~ 0
5
Text Notes 8700 3200 0    98   ~ 0
4
Text Notes 8700 2950 0    98   ~ 0
3
Text Notes 8700 2700 0    98   ~ 0
2
Text Notes 8700 2450 0    98   ~ 0
1
Text Notes 8700 2200 0    98   ~ 0
0
Text Notes 8450 2000 0    98   ~ 0
Number
$Sheet
S 1900 18050 500  150 
U 6865530D
F0 "Gen_Impuls" 50
F1 "Gen_Impuls.sch" 50
$EndSheet
$Sheet
S 3300 18100 500  150 
U 686B3F82
F0 "Deshifrator" 50
F1 "Deshifrator.sch" 50
$EndSheet
$Sheet
S 4800 18150 500  150 
U 677BE47D
F0 "Counter_2" 50
F1 "Counter_2.sch" 50
$EndSheet
$EndSCHEMATC
