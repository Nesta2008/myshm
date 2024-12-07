EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
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
L Device_GOST:CP C5
U 1 1 66F2E8B3
P 6000 2100
F 0 "C5" H 6185 2168 79  0000 L CNN
F 1 "15" H 6185 2033 79  0000 L CNN
F 2 "К53-68\"D\"-25В-15,0 мкФ±10%  АЖЯР.673546.007ТУ" H 5925 2100 60  0001 C CNN
F 3 "" H 6025 2200 60  0001 C CNN
	1    6000 2100
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:R R5
U 1 1 66F342BE
P 7000 1700
F 0 "R5" V 6932 1807 79  0000 L CNN
F 1 "1k" H 6950 1700 79  0000 L CNN
F 2 "Р1-8МП-0,25-1 кОм±1%-Ж-К-М  ОЖ0.467.164ТУ" H 6900 1725 60  0001 C CNN
F 3 "" H 7025 1525 60  0001 C CNN
	1    7000 1700
	0    1    1    0   
$EndComp
$Comp
L Device_GOST:VD_ZENER VD2
U 1 1 66F34E45
P 7000 2750
F 0 "VD2" H 7146 2818 79  0000 L CNN
F 1 "Д818Е" H 7146 2683 79  0000 L CNN
F 2 "СМ3.362.025 ТУ СМ3.362.083 ГЧ" H 7000 2848 79  0001 C CNN
F 3 "" H 7000 2848 79  0001 C CNN
	1    7000 2750
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:C C9
U 1 1 66F378AF
P 7800 3050
F 0 "C9" H 7985 3118 79  0000 L CNN
F 1 "0.15" H 7985 2983 79  0000 L CNN
F 2 "К10-84в 3216М-25В-Н20-0,15 мкФ±10%-N-А  ФЦТА.673516.016ТУ" H 7725 3050 60  0001 C CNN
F 3 "" H 7825 3150 60  0001 C CNN
	1    7800 3050
	1    0    0    -1  
$EndComp
$Comp
L power_GOST:GND #PWR08
U 1 1 66F3CB10
P 7000 4050
F 0 "#PWR08" H 7000 4100 60  0001 C CNN
F 1 "GND" H 7000 3800 79  0001 C CNN
F 2 "" H 7000 4050 60  0000 C CNN
F 3 "" H 7000 4050 60  0001 C CNN
	1    7000 4050
	1    0    0    -1  
$EndComp
$Comp
L power_GOST:+12V #PWR07
U 1 1 66F42D75
P 7000 650
F 0 "#PWR07" H 7000 550 79  0001 C CNN
F 1 "+12V" H 7000 871 79  0000 C CNN
F 2 "" V 7000 775 98  0000 C CNN
F 3 "" H 7000 775 98  0001 C CNN
	1    7000 650 
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:R R6
U 1 1 66F485F1
P 8550 2600
F 0 "R6" V 8482 2707 79  0000 L CNN
F 1 "12.4k" H 8400 2600 79  0000 L CNN
F 2 "Р1-8МП-0,25-12,4 кОм±1%-Ж-К-М  ОЖ0.467.164ТУ" H 8450 2625 60  0001 C CNN
F 3 "" H 8575 2425 60  0001 C CNN
	1    8550 2600
	0    1    1    0   
$EndComp
$Comp
L Device_GOST:R R7
U 1 1 66F48F44
P 8550 3450
F 0 "R7" V 8482 3557 79  0000 L CNN
F 1 "3.01k" H 8400 3450 79  0000 L CNN
F 2 "Р1-8МП-0,25-8,25 кОм±1%-Ж-К-М  ОЖ0.467.164ТУ" H 8450 3475 60  0001 C CNN
F 3 "" H 8575 3275 60  0001 C CNN
	1    8550 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	8550 2250 7800 2250
Wire Wire Line
	7000 2050 7000 2250
Connection ~ 7000 2250
Wire Wire Line
	7000 2250 7000 2500
Wire Wire Line
	8550 2950 8550 3050
Wire Wire Line
	8550 3800 8550 3950
Connection ~ 7000 3950
Wire Wire Line
	7000 3950 7000 4050
Wire Wire Line
	7000 3000 7000 3950
Wire Wire Line
	7800 3250 7800 3950
Wire Wire Line
	7000 3950 7800 3950
Connection ~ 7800 3950
Wire Wire Line
	7800 3950 8550 3950
Wire Wire Line
	7800 2850 7800 2250
Connection ~ 7800 2250
Wire Wire Line
	7800 2250 7000 2250
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT2
U 1 1 66F4D57C
P 9550 2350
F 0 "VT2" H 9846 2418 79  0000 L CNN
F 1 "2Т3130А9" H 9100 2000 79  0000 L CNN
F 2 "Транзистор 2T3130A9/ПК                              АЕЯР.432140.259 ТУ" H 9550 1750 79  0001 C CNN
F 3 "" H 9582 2350 79  0001 C CNN
	1    9550 2350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT4
U 1 1 66F4EDDD
P 10950 2350
F 0 "VT4" H 11245 2418 79  0000 L CNN
F 1 "2Т3130А9" H 10500 2000 79  0000 L CNN
F 2 "Транзистор 2T3130A9/ПК                              АЕЯР.432140.259 ТУ" H 10950 1750 79  0001 C CNN
F 3 "" H 10982 2350 79  0001 C CNN
	1    10950 2350
	-1   0    0    -1  
$EndComp
$Comp
L Device_GOST:R R9
U 1 1 66F4FA70
P 10250 3350
F 0 "R9" V 10182 3457 79  0000 L CNN
F 1 "200" H 10100 3350 79  0000 L CNN
F 2 "Р1-8МП-0,25-200 Ом±1%-Ж-К-М  ОЖ0.467.164ТУ" H 10150 3375 60  0001 C CNN
F 3 "" H 10275 3175 60  0001 C CNN
	1    10250 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	9700 2700 9700 2800
Wire Wire Line
	10800 2800 10800 2700
Wire Wire Line
	10250 3700 10250 3950
Wire Wire Line
	10250 3950 8550 3950
Connection ~ 8550 3950
Wire Wire Line
	7000 1100 7000 1350
$Comp
L Device_GOST:R R8
U 1 1 66F555B2
P 8950 1700
F 0 "R8" H 8850 1550 79  0000 L CNN
F 1 "1k" H 8900 1700 79  0000 L CNN
F 2 "Р1-8МП-0,25-1 кОм±1%-Ж-К-М  ОЖ0.467.164ТУ" H 8850 1725 60  0001 C CNN
F 3 "" H 8975 1525 60  0001 C CNN
	1    8950 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	8200 1100 8200 1700
Wire Wire Line
	8200 1100 9350 1100
Connection ~ 8200 1100
Wire Wire Line
	9700 1600 9700 1700
Wire Wire Line
	9700 1700 9300 1700
Connection ~ 9700 1700
Wire Wire Line
	7000 1100 7000 650 
Connection ~ 7000 1100
Wire Wire Line
	8200 1700 8600 1700
Wire Wire Line
	10800 1850 8200 1850
Wire Wire Line
	8200 1850 8200 1700
Connection ~ 8200 1700
Wire Wire Line
	9700 2800 10250 2800
Wire Wire Line
	10250 2800 10250 3000
Connection ~ 10250 2800
Wire Wire Line
	10250 2800 10800 2800
Wire Wire Line
	9700 1700 9700 2000
Wire Wire Line
	10800 1850 10800 2000
$Comp
L Device_GOST:R R10
U 1 1 66F6BCE2
P 11700 1700
F 0 "R10" V 11632 1807 79  0000 L CNN
F 1 "1k" H 11600 1700 79  0000 L CNN
F 2 "Р1-8МП-0,25-1 кОм±1%-Ж-К-М  ОЖ0.467.164ТУ" H 11600 1725 60  0001 C CNN
F 3 "" H 11725 1525 60  0001 C CNN
	1    11700 1700
	0    1    1    0   
$EndComp
$Comp
L Device_GOST:R R11
U 1 1 66F6C43C
P 11700 3200
F 0 "R11" V 11632 3307 79  0000 L CNN
F 1 "1k" H 11600 3200 79  0000 L CNN
F 2 "Р1-8МП-0,25-1 кОм±1%-Ж-К-М  ОЖ0.467.164ТУ" H 11600 3225 60  0001 C CNN
F 3 "" H 11725 3025 60  0001 C CNN
	1    11700 3200
	0    1    1    0   
$EndComp
Connection ~ 10250 3950
Wire Wire Line
	11300 2350 11700 2350
Wire Wire Line
	11700 1100 10050 1100
$Comp
L Device_GOST:C C13
U 1 1 66F70A1D
P 12300 2350
F 0 "C13" H 12485 2418 79  0000 L CNN
F 1 "1,5" H 12485 2283 79  0000 L CNN
F 2 "К10-84в 5750М-50В-Н20-1,5 мкФ±10%-N-А  ФЦТА.673516.016ТУ" H 12225 2350 60  0001 C CNN
F 3 "" H 12325 2450 60  0001 C CNN
	1    12300 2350
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:C C14
U 1 1 66F70F7E
P 13600 2350
F 0 "C14" H 13785 2418 79  0000 L CNN
F 1 "0.2" H 13785 2283 79  0000 L CNN
F 2 "К10-84в 3216М-25В-Н20-0,15 мкФ±10%-N-А  ФЦТА.673516.016ТУ" H 13525 2350 60  0001 C CNN
F 3 "" H 13625 2450 60  0001 C CNN
	1    13600 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	11700 1100 12300 1100
Wire Wire Line
	13600 1100 13600 2150
Connection ~ 11700 1100
Connection ~ 12300 1100
Wire Wire Line
	12300 1100 12300 2150
Wire Wire Line
	13600 2550 13600 3950
Wire Wire Line
	12300 2550 12300 3950
$Comp
L power_GOST:+3,3V #PWR012
U 1 1 66F78BC7
P 12300 800
F 0 "#PWR012" H 12300 700 79  0001 C CNN
F 1 "+3,3V" H 12300 1021 79  0000 C CNN
F 2 "" V 12300 925 98  0000 C CNN
F 3 "" H 12300 925 98  0001 C CNN
	1    12300 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	12300 800  12300 1100
Text Notes 13150 800  0    50   ~ 0
Upit = 3.3 V \nPn = 1.8 Vt\nIn = 0.54A
Wire Wire Line
	11700 2350 11700 2050
Wire Wire Line
	11700 1100 11700 1350
Wire Wire Line
	11700 3550 11700 3950
Wire Wire Line
	11700 2850 11700 2350
Connection ~ 11700 2350
$Comp
L Transistor_BJT_GOST:2Т664А9 VT3
U 1 1 66F9C3DC
P 9700 1250
F 0 "VT3" V 10199 1250 79  0000 C CNN
F 1 "КТ835А" V 10064 1250 79  0000 C CNN
F 2 "Package_TO_SOT_THT_RU:КТ-28А-2.02_Horizontal" H 9700 650 79  0001 C CNN
F 3 "" H 9732 1250 79  0001 C CNN
	1    9700 1250
	0    1    -1   0   
$EndComp
Wire Wire Line
	8550 3050 9000 3050
Wire Wire Line
	9000 3050 9000 2350
Wire Wire Line
	9000 2350 9200 2350
Connection ~ 8550 3050
Wire Wire Line
	8550 3050 8550 3100
$Comp
L Device_GOST:C C6
U 1 1 66FB0BA2
P 6550 2100
F 0 "C6" H 6735 2168 79  0000 L CNN
F 1 "0.15" H 6735 2033 79  0000 L CNN
F 2 "К10-84в 3216М-25В-Н20-0,15 мкФ±10%-N-А  ФЦТА.673516.016ТУ" H 6475 2100 60  0001 C CNN
F 3 "" H 6575 2200 60  0001 C CNN
	1    6550 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 1100 7000 1100
Wire Wire Line
	6550 1100 6550 1900
Wire Wire Line
	6550 3950 7000 3950
Wire Wire Line
	6550 2300 6550 3950
Wire Wire Line
	6000 1900 6000 1100
Wire Wire Line
	6000 1100 6550 1100
Connection ~ 6550 1100
Wire Wire Line
	6000 2300 6000 3950
Connection ~ 6550 3950
Wire Wire Line
	5400 1100 6000 1100
Connection ~ 6000 1100
Wire Wire Line
	4750 3950 6000 3950
Connection ~ 6000 3950
Wire Wire Line
	6000 3950 6550 3950
$Comp
L Connector_Generic_GOST:CONN_2 X2
U 1 1 66FBDD85
P 2300 5300
F 0 "X2" H 2700 5500 79  0000 C CNN
F 1 "CONN_2" H 2300 4900 79  0001 C CNN
F 2 "" H 2900 5700 79  0001 C CNN
F 3 "" H 2900 4900 79  0001 C CNN
F 4 "Фаза" H 2100 5300 79  0000 C CNN "PIN1"
F 5 "Ноль" H 2100 5100 79  0000 C CNN "PIN2"
	1    2300 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 5300 3150 5300
Wire Wire Line
	3150 5300 3150 5050
Wire Wire Line
	3100 5500 3150 5500
Wire Wire Line
	3150 5500 3150 5750
Text Notes 2950 5400 0    50   ~ 0
230 В 50 Гц
Text Notes 2700 1900 0    50   ~ 0
230 В 50 Гц
Wire Wire Line
	3350 2250 3350 2100
Wire Wire Line
	2900 2250 3350 2250
Wire Wire Line
	2900 2000 2900 2250
Wire Wire Line
	2850 2000 2900 2000
Wire Wire Line
	3350 1550 3350 1700
Wire Wire Line
	2900 1550 3350 1550
Wire Wire Line
	2900 1800 2900 1550
Wire Wire Line
	2850 1800 2900 1800
$Comp
L Connector_Generic_GOST:CONN_2 X1
U 1 1 66F136CE
P 2050 1800
F 0 "X1" H 2450 2000 79  0000 C CNN
F 1 "CONN_2" H 2050 1400 79  0001 C CNN
F 2 "" H 2650 2200 79  0001 C CNN
F 3 "" H 2650 1400 79  0001 C CNN
F 4 "Фаза" H 1850 1800 79  0000 C CNN "PIN1"
F 5 "Ноль" H 1850 1600 79  0000 C CNN "PIN2"
	1    2050 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:Transformer_1P_1S T1
U 1 1 66F01CAE
P 3750 1900
F 0 "T1" H 3750 2281 50  0000 C CNN
F 1 "ТПГ-112" H 3750 2190 50  0000 C CNN
F 2 "" H 3750 1900 50  0001 C CNN
F 3 "~" H 3750 1900 50  0001 C CNN
	1    3750 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1900 5400 1100
Wire Wire Line
	4150 2100 4300 2100
Wire Wire Line
	4300 2100 4300 2400
Wire Wire Line
	4150 1700 4300 1700
Wire Wire Line
	5100 1400 5100 1600
Wire Wire Line
	4300 1400 5100 1400
Wire Wire Line
	4300 1700 4300 1400
Wire Wire Line
	4750 1900 4800 1900
Wire Wire Line
	4300 2400 5100 2400
Wire Wire Line
	5100 2200 5100 2400
Wire Wire Line
	4750 1900 4750 3950
$Comp
L Diode_Bridge:VS-KBPC804 D1
U 1 1 66F0053C
P 5100 1900
F 0 "D1" H 5444 1946 50  0000 L CNN
F 1 "КЦ405Б" H 5444 1855 50  0000 L CNN
F 2 "" H 5250 2025 50  0001 L CNN
F 3 "http://www.vishay.com/docs/93586/kbpc8series.pdf" H 5100 1900 50  0001 C CNN
	1    5100 1900
	1    0    0    -1  
$EndComp
$Comp
L Converter_ACDC:HLK-PM01 PS1
U 1 1 66FDCE7B
P 4500 5350
F 0 "PS1" H 4500 5675 50  0000 C CNN
F 1 "IRM-05-5" H 4500 5584 50  0000 C CNN
F 2 "Converter_ACDC:Converter_ACDC_HiLink_HLK-PMxx" H 4500 5050 50  0001 C CNN
F 3 "http://www.hlktech.net/product_detail.php?ProId=54" H 4900 5000 50  0001 C CNN
	1    4500 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 5250 3850 5250
Wire Wire Line
	3850 5250 3850 5050
Wire Wire Line
	3150 5050 3850 5050
Wire Wire Line
	3850 5750 3850 5450
Wire Wire Line
	3850 5450 4100 5450
Wire Wire Line
	3150 5750 3850 5750
Text Notes 4250 5650 0    50   ~ 0
5В,1А,5Вт
$Comp
L Regulator_Linear_GOST:1334ЕНх.хТ DA1
U 1 1 66FE5F01
P 7750 5300
F 0 "DA1" H 7750 5695 79  0000 C CNN
F 1 "1334ЕНх.хТ" H 7750 4900 79  0000 C CNN
F 2 "1334ЕН3.3Т - АЕЯР.431420.808ТУ" H 7750 4800 79  0001 C CNN
F 3 "http://caxapa.ru/thumbs/622128/1334series.pdf" H 7050 5400 79  0001 C CNN
	1    7750 5300
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:C C11
U 1 1 66FE891B
P 8950 5400
F 0 "C11" H 9135 5468 79  0000 L CNN
F 1 "1,5" H 9135 5333 79  0000 L CNN
F 2 "К10-84в 5750М-50В-Н20-1,5 мкФ±10%-N-А  ФЦТА.673516.016ТУ" H 8875 5400 60  0001 C CNN
F 3 "" H 8975 5500 60  0001 C CNN
	1    8950 5400
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:C C7
U 1 1 66FE90F3
P 6600 5350
F 0 "C7" H 6785 5418 79  0000 L CNN
F 1 "1,5" H 6785 5283 79  0000 L CNN
F 2 "К10-84в 5750М-50В-Н20-1,5 мкФ±10%-N-А  ФЦТА.673516.016ТУ" H 6525 5350 60  0001 C CNN
F 3 "" H 6625 5450 60  0001 C CNN
	1    6600 5350
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:CP C4
U 1 1 66FEA22D
P 5400 5350
F 0 "C4" H 5585 5418 79  0000 L CNN
F 1 "15" H 5585 5283 79  0000 L CNN
F 2 "К53-68\"D\"-25В-15,0 мкФ±10%  АЖЯР.673546.007ТУ" H 5325 5350 60  0001 C CNN
F 3 "" H 5425 5450 60  0001 C CNN
	1    5400 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 5250 4950 5250
Wire Wire Line
	4950 5250 4950 5050
Wire Wire Line
	4950 5050 5400 5050
Wire Wire Line
	5400 5050 5400 5150
Wire Wire Line
	4900 5450 4950 5450
Wire Wire Line
	4950 5450 4950 5650
Wire Wire Line
	4950 5650 5400 5650
Wire Wire Line
	5400 5650 5400 5550
Connection ~ 5400 5050
Wire Wire Line
	6600 5050 6600 5150
Wire Wire Line
	6600 5650 6600 5550
Wire Wire Line
	7050 5200 7050 5050
Wire Wire Line
	7050 5050 6600 5050
Connection ~ 6600 5050
Wire Wire Line
	7050 5650 6600 5650
Connection ~ 6600 5650
Wire Wire Line
	8950 5200 8450 5200
Wire Wire Line
	8950 5200 9550 5200
Connection ~ 8950 5200
$Comp
L power_GOST:GND #PWR06
U 1 1 6701E6D1
P 6600 5850
F 0 "#PWR06" H 6600 5900 60  0001 C CNN
F 1 "GND" H 6600 5600 79  0001 C CNN
F 2 "" H 6600 5850 60  0000 C CNN
F 3 "" H 6600 5850 60  0001 C CNN
	1    6600 5850
	1    0    0    -1  
$EndComp
$Comp
L power_GOST:GND #PWR010
U 1 1 6701EB6E
P 8950 5850
F 0 "#PWR010" H 8950 5900 60  0001 C CNN
F 1 "GND" H 8950 5600 79  0001 C CNN
F 2 "" H 8950 5850 60  0000 C CNN
F 3 "" H 8950 5850 60  0001 C CNN
	1    8950 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 5850 6600 5650
Wire Wire Line
	7050 5400 7050 5650
$Comp
L Device_GOST:C C12
U 1 1 66FE8DB9
P 9550 5400
F 0 "C12" H 9735 5468 79  0000 L CNN
F 1 "0.15" H 9735 5333 79  0000 L CNN
F 2 "К10-84в 3216М-25В-Н20-0,15 мкФ±10%-N-А  ФЦТА.673516.016ТУ" H 9475 5400 60  0001 C CNN
F 3 "" H 9575 5500 60  0001 C CNN
	1    9550 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 5600 9550 5700
Wire Wire Line
	9550 5700 8950 5700
Wire Wire Line
	8950 5600 8950 5700
Connection ~ 8950 5700
Wire Wire Line
	8950 5700 8950 5850
Text Notes 1100 3200 0    50   ~ 0
Вариант 1\nДешево и сердито.\nТрансформатор понижающий, диодный мост с запасом по току\nСтабилизатор напряжения на транзисторах со схемой слежения на \nпрецизионном стабилитроне марки Д818Е.\nСхема питания на "подножном корме", которую можно дешево собрать\n
Text Notes 1350 4800 0    50   ~ 0
Вариант 2.\nДорогой и ленивый вариант.\nВместо трансформатора и диодного моста ставим AC/DC преобразователь и после \nнего ставим линейный стабилизатор напряжения.\nПараметры будут даже лучше, чем в первой схеме. Ремонтировать также легче.
$Comp
L power_GOST:+3,3V #PWR011
U 1 1 6704338F
P 9550 4900
F 0 "#PWR011" H 9550 4800 79  0001 C CNN
F 1 "+3,3V" H 9550 5121 79  0000 C CNN
F 2 "" V 9550 5025 98  0000 C CNN
F 3 "" H 9550 5025 98  0001 C CNN
	1    9550 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 4900 9550 5200
$Comp
L power_GOST:+5V #PWR04
U 1 1 67047DB8
P 5400 4600
F 0 "#PWR04" H 5400 4500 79  0001 C CNN
F 1 "+5V" H 5400 4821 79  0000 C CNN
F 2 "" V 5400 4725 98  0000 C CNN
F 3 "" H 5400 4725 98  0001 C CNN
	1    5400 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 5050 5400 4600
Text Notes 3500 2250 0    50   ~ 0
P = 7.2 Vt\n
Wire Wire Line
	7000 1100 8200 1100
Connection ~ 9550 5200
Wire Wire Line
	5400 5050 6600 5050
Wire Wire Line
	5400 5650 6600 5650
Connection ~ 5400 5650
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT5
U 1 1 66F2A812
P 14950 3300
F 0 "VT5" H 15246 3368 79  0000 L CNN
F 1 "КТ3102АМ" H 14500 2950 79  0000 L CNN
F 2 "" H 14950 2700 79  0001 C CNN
F 3 "" H 14982 3300 79  0001 C CNN
	1    14950 3300
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:HL_LED VD3
U 1 1 66F2B7E1
P 15100 2400
F 0 "VD3" H 15500 2000 79  0000 R CNN
F 1 "АЛ307КМ5" H 15900 2150 79  0000 R CNN
F 2 "" H 15100 2498 79  0001 C CNN
F 3 "" H 15100 2498 79  0001 C CNN
	1    15100 2400
	1    0    0    1   
$EndComp
$Comp
L Device_GOST:R R13
U 1 1 66F2D13F
P 14300 2350
F 0 "R13" V 14232 2457 79  0000 L CNN
F 1 "620" H 14200 2350 79  0000 L CNN
F 2 "Р1-8МП-0,25-1 кОм±1%-Ж-К-М  ОЖ0.467.164ТУ" H 14200 2375 60  0001 C CNN
F 3 "" H 14325 2175 60  0001 C CNN
	1    14300 2350
	0    1    1    0   
$EndComp
$Comp
L Device_GOST:R R14
U 1 1 66F322B8
P 15100 1550
F 0 "R14" V 15032 1657 79  0000 L CNN
F 1 "240" H 15000 1550 79  0000 L CNN
F 2 "Р1-8МП-0,25-1 кОм±1%-Ж-К-М  ОЖ0.467.164ТУ" H 15000 1575 60  0001 C CNN
F 3 "" H 15125 1375 60  0001 C CNN
	1    15100 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	13600 1100 14300 1100
Wire Wire Line
	15100 1100 15100 1200
Connection ~ 13600 1100
Connection ~ 14300 1100
Wire Wire Line
	14300 1100 15100 1100
Wire Wire Line
	14300 1100 14300 2000
Wire Wire Line
	15100 1900 15100 2050
Wire Wire Line
	14300 2700 14300 3300
Wire Wire Line
	14300 3300 14600 3300
Wire Wire Line
	15100 3650 15100 3950
Wire Wire Line
	15100 3950 13600 3950
Connection ~ 13600 3950
Wire Wire Line
	15100 2950 15100 2750
$Comp
L Device_GOST:R R12
U 1 1 66F5C23B
P 13000 1100
F 0 "R12" H 12900 950 79  0000 L CNN
F 1 "200" H 12900 1100 79  0000 L CNN
F 2 "Р1-8МП-0,25-1 кОм±1%-Ж-К-М  ОЖ0.467.164ТУ" H 12900 1125 60  0001 C CNN
F 3 "" H 13025 925 60  0001 C CNN
	1    13000 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	13350 1100 13600 1100
Wire Wire Line
	12300 3950 13600 3950
Wire Wire Line
	10250 3950 11700 3950
Wire Wire Line
	12300 1100 12650 1100
Connection ~ 11700 3950
Connection ~ 12300 3950
Wire Wire Line
	12300 3950 11700 3950
$Comp
L Regulator_Switching:MC34063AD U1
U 1 1 66FC7E25
P 2650 8150
F 0 "U1" H 2650 8617 50  0000 C CNN
F 1 "MC34063ABD-TR" H 2650 8526 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2700 7700 50  0001 L CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MC34063A-D.PDF" H 3150 8050 50  0001 C CNN
	1    2650 8150
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:CP C1
U 1 1 66FC89B3
P 1200 8150
F 0 "C1" H 1300 8300 79  0000 L CNN
F 1 "15" H 1300 8000 79  0000 L CNN
F 2 "К53-68\"D\"-25В-15,0 мкФ±10%  АЖЯР.673546.007ТУ" H 1125 8150 60  0001 C CNN
F 3 "" H 1225 8250 60  0001 C CNN
	1    1200 8150
	1    0    0    -1  
$EndComp
$Comp
L power_GOST:+27V #PWR01
U 1 1 66FC9489
P 1600 7750
F 0 "#PWR01" H 1600 7650 79  0001 C CNN
F 1 "+27V" H 1600 7971 79  0000 C CNN
F 2 "" V 1600 7875 98  0000 C CNN
F 3 "" H 1600 7875 98  0001 C CNN
	1    1600 7750
	1    0    0    -1  
$EndComp
$Comp
L power_GOST:GND #PWR02
U 1 1 66FCA35D
P 1600 8550
F 0 "#PWR02" H 1600 8600 60  0001 C CNN
F 1 "GND" H 1600 8300 79  0001 C CNN
F 2 "" H 1600 8550 60  0000 C CNN
F 3 "" H 1600 8550 60  0001 C CNN
	1    1600 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 7950 2100 7950
Wire Wire Line
	2100 7950 2100 7850
Wire Wire Line
	2100 7850 1600 7850
Wire Wire Line
	1600 7850 1600 7950
Wire Wire Line
	2250 8350 2100 8350
Wire Wire Line
	1600 8450 1600 8350
Wire Wire Line
	1600 8550 1600 8450
Connection ~ 1600 8450
Wire Wire Line
	1600 7750 1600 7850
Connection ~ 1600 7850
$Comp
L Device_GOST:C C2
U 1 1 66FDFEDE
P 1600 8150
F 0 "C2" H 1700 8300 79  0000 L CNN
F 1 "0.15" H 1700 8000 79  0000 L CNN
F 2 "К10-84в 3216М-25В-Н20-0,15 мкФ±10%-N-А  ФЦТА.673516.016ТУ" H 1525 8150 60  0001 C CNN
F 3 "" H 1625 8250 60  0001 C CNN
	1    1600 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 7850 1200 7850
Wire Wire Line
	1200 7850 1200 7950
Wire Wire Line
	1200 8350 1200 8450
Wire Wire Line
	1200 8450 1600 8450
$Comp
L Device_GOST:R R1.2
U 1 1 67000187
P 2600 7100
F 0 "R1.2" H 2300 6950 79  0000 L CNN
F 1 "3.3" H 2550 7100 79  0000 L CNN
F 2 "Р1-8МП-0,25-1 кОм±1%-Ж-К-М  ОЖ0.467.164ТУ" H 2500 7125 60  0001 C CNN
F 3 "" H 2625 6925 60  0001 C CNN
	1    2600 7100
	-1   0    0    1   
$EndComp
Wire Wire Line
	2100 7100 2250 7100
Connection ~ 2100 7850
Wire Wire Line
	3250 7950 3050 7950
Wire Wire Line
	2950 7100 3250 7100
$Comp
L power_GOST:GND #PWR03
U 1 1 6703DCF6
P 2650 9350
F 0 "#PWR03" H 2650 9400 60  0001 C CNN
F 1 "GND" H 2650 9100 79  0001 C CNN
F 2 "" H 2650 9350 60  0000 C CNN
F 3 "" H 2650 9350 60  0001 C CNN
	1    2650 9350
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:C C3
U 1 1 6703E6E6
P 2100 8750
F 0 "C3" H 2200 8900 79  0000 L CNN
F 1 "0.091" H 2200 8600 79  0000 L CNN
F 2 "К10-84в 3216М-25В-Н20-0,15 мкФ±10%-N-А  ФЦТА.673516.016ТУ" H 2025 8750 60  0001 C CNN
F 3 "" H 2125 8850 60  0001 C CNN
	1    2100 8750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 9200 2650 9200
Connection ~ 2650 9200
Wire Wire Line
	3050 8350 3300 8350
Wire Wire Line
	3300 9200 2650 9200
$Comp
L Device_GOST:R R2
U 1 1 6705998D
P 3650 8800
F 0 "R2" V 3950 8450 79  0000 L CNN
F 1 "12.5k" H 3500 8800 79  0000 L CNN
F 2 "Р1-8МП-0,25-1 кОм±1%-Ж-К-М  ОЖ0.467.164ТУ" H 3550 8825 60  0001 C CNN
F 3 "" H 3675 8625 60  0001 C CNN
	1    3650 8800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3050 8450 3550 8450
Wire Wire Line
	2650 8650 2650 9200
Wire Wire Line
	2100 8950 2100 9200
Wire Wire Line
	2650 9350 2650 9200
Wire Wire Line
	3300 8350 3300 9200
Wire Wire Line
	3300 9200 3650 9200
Wire Wire Line
	3650 9200 3650 9150
Connection ~ 3300 9200
$Comp
L Device_GOST:R R3
U 1 1 6708D081
P 4750 6800
F 0 "R3" H 4650 6600 79  0000 L CNN
F 1 "137.5k" H 4550 6800 79  0000 L CNN
F 2 "Р1-8МП-0,25-1 кОм±1%-Ж-К-М  ОЖ0.467.164ТУ" H 4650 6825 60  0001 C CNN
F 3 "" H 4775 6625 60  0001 C CNN
	1    4750 6800
	-1   0    0    1   
$EndComp
Wire Wire Line
	3050 8150 3200 8150
Wire Wire Line
	5700 7800 5700 7100
Wire Wire Line
	3050 8050 3200 8050
Wire Wire Line
	3200 8050 3200 8150
Connection ~ 3200 8150
Connection ~ 3250 7100
Wire Wire Line
	3250 7100 3250 7950
Wire Wire Line
	2100 7100 2100 7850
$Comp
L Device_GOST:VD_Schottky VD1
U 1 1 670D806A
P 5700 8900
F 0 "VD1" V 5700 9046 79  0000 L CNN
F 1 "VD_Schottky" H 5700 8700 79  0001 C CNN
F 2 "" H 5602 8900 79  0001 C CNN
F 3 "" H 5602 8900 79  0001 C CNN
	1    5700 8900
	0    1    1    0   
$EndComp
$Comp
L power_GOST:GND #PWR05
U 1 1 670D99CC
P 5700 9350
F 0 "#PWR05" H 5700 9400 60  0001 C CNN
F 1 "GND" H 5700 9100 79  0001 C CNN
F 2 "" H 5700 9350 60  0000 C CNN
F 3 "" H 5700 9350 60  0001 C CNN
	1    5700 9350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 8500 5700 8600
Wire Wire Line
	5700 9350 5700 9300
Connection ~ 5700 8600
Wire Wire Line
	5700 8600 5700 8650
Wire Wire Line
	7450 8600 7450 8750
Wire Wire Line
	7450 9150 7450 9300
Connection ~ 5700 9300
Wire Wire Line
	5700 9300 5700 9150
Wire Wire Line
	3550 8450 3550 6800
Wire Wire Line
	3550 6800 4400 6800
Connection ~ 3550 8450
Wire Wire Line
	3550 8450 3650 8450
$Comp
L power_GOST:+15V #PWR09
U 1 1 67126B0C
P 7450 6750
F 0 "#PWR09" H 7450 7050 79  0001 C CNN
F 1 "+15V" H 7450 6971 79  0000 C CNN
F 2 "" V 7450 6875 98  0000 C CNN
F 3 "" H 7450 6875 98  0001 C CNN
	1    7450 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 6750 7450 6800
Wire Wire Line
	5100 6800 7450 6800
Wire Wire Line
	2100 8350 2100 8550
$Comp
L Device_GOST:CP C4.2
U 1 1 66FE82DE
P 7950 8950
F 0 "C4.2" H 8050 9100 79  0000 L CNN
F 1 "33" H 8050 8800 79  0000 L CNN
F 2 "К53-68\"D\"-25В-15,0 мкФ±10%  АЖЯР.673546.007ТУ" H 7875 8950 60  0001 C CNN
F 3 "" H 7975 9050 60  0001 C CNN
	1    7950 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 9300 5700 9300
Wire Wire Line
	7100 8600 7450 8600
Wire Wire Line
	6300 8600 5700 8600
$Comp
L Device_GOST:L_INDUCTOR L1
U 1 1 670DA73F
P 6700 8600
F 0 "L1" H 6700 8800 79  0000 C CNN
F 1 "2.70мк" H 6700 8550 79  0000 C CNN
F 2 "" H 6600 8650 60  0001 C CNN
F 3 "" H 6700 8750 60  0001 C CNN
	1    6700 8600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 6800 7950 8600
Wire Wire Line
	7450 8600 7950 8600
Connection ~ 7450 8600
Wire Wire Line
	7950 8600 7950 8750
Connection ~ 7950 8600
Wire Wire Line
	7950 9300 7950 9150
Wire Wire Line
	7450 9300 7950 9300
Connection ~ 7450 9300
Wire Wire Line
	7450 6800 7950 6800
Connection ~ 7450 6800
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT1
U 1 1 670D3479
P 5550 8150
F 0 "VT1" H 5846 8218 79  0000 L CNN
F 1 "КТ805АМ" H 5100 7800 79  0000 L CNN
F 2 "Транзистор 2T3130A9/ПК                              АЕЯР.432140.259 ТУ" H 5550 7550 79  0001 C CNN
F 3 "" H 5582 8150 79  0001 C CNN
	1    5550 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 7100 5700 7100
$Comp
L Device_GOST:R R4
U 1 1 670D51FA
P 4800 8850
F 0 "R4" V 4900 8550 79  0000 L CNN
F 1 "1k" H 4750 8850 79  0000 L CNN
F 2 "Р1-8МП-0,25-1 кОм±1%-Ж-К-М  ОЖ0.467.164ТУ" H 4700 8875 60  0001 C CNN
F 3 "" H 4825 8675 60  0001 C CNN
	1    4800 8850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 8500 4800 8150
Connection ~ 4800 8150
Wire Wire Line
	4800 8150 5200 8150
Wire Wire Line
	3650 9200 4800 9200
Connection ~ 3650 9200
Wire Wire Line
	3200 8150 4800 8150
$Comp
L Device_GOST:CP C4.1
U 1 1 67106D9F
P 7450 8950
F 0 "C4.1" H 7550 9100 79  0000 L CNN
F 1 "100" H 7550 8800 79  0000 L CNN
F 2 "К53-68\"D\"-25В-15,0 мкФ±10%  АЖЯР.673546.007ТУ" H 7375 8950 60  0001 C CNN
F 3 "" H 7475 9050 60  0001 C CNN
	1    7450 8950
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:R R1.1
U 1 1 67107769
P 2600 6700
F 0 "R1.1" H 2250 6550 79  0000 L CNN
F 1 "1.1" H 2550 6700 79  0000 L CNN
F 2 "Р1-8МП-0,25-1 кОм±1%-Ж-К-М  ОЖ0.467.164ТУ" H 2500 6725 60  0001 C CNN
F 3 "" H 2625 6525 60  0001 C CNN
	1    2600 6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2250 6700 2100 6700
Wire Wire Line
	2100 6700 2100 7100
Connection ~ 2100 7100
Wire Wire Line
	2950 6700 3250 6700
Wire Wire Line
	3250 6700 3250 7100
$EndSCHEMATC
