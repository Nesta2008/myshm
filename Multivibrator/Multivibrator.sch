EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A2 23386 16535
encoding utf-8
Sheet 1 1
Title "Мультивибраторы\\nПреобразователь ШИМ-частота"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 "Шайхуллин "
Comment3 "Кулиев"
Comment4 "Кулиев"
$EndDescr
$Comp
L Device_GOST:CP C1
U 1 1 66FC89B3
P 1950 1900
F 0 "C1" H 2050 2050 79  0000 L CNN
F 1 "15" H 2050 1750 79  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-7343-40_Kemet-Y" H 1875 1900 60  0001 C CNN
F 3 "" H 1975 2000 60  0001 C CNN
	1    1950 1900
	1    0    0    -1  
$EndComp
$Comp
L power_GOST:+5V #PWR01
U 1 1 66FC9489
P 2350 1500
F 0 "#PWR01" H 2350 1400 79  0001 C CNN
F 1 "+5V" H 2350 1721 79  0000 C CNN
F 2 "" V 2350 1625 98  0000 C CNN
F 3 "" H 2350 1625 98  0001 C CNN
	1    2350 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1600 2350 1700
Wire Wire Line
	2350 2200 2350 2100
Connection ~ 2350 2200
Wire Wire Line
	2350 1500 2350 1600
Connection ~ 2350 1600
Wire Wire Line
	2350 1600 1950 1600
Wire Wire Line
	1950 1600 1950 1700
Wire Wire Line
	1950 2100 1950 2200
Wire Wire Line
	1950 2200 2350 2200
$Comp
L Connector_Generic_GOST:CON X2
U 1 1 671674A6
P 1750 2200
F 0 "X2" H 1643 2461 79  0000 C CNN
F 1 "0V" H 1643 2326 79  0000 C CNN
F 2 "Connector_RU:2,5x1,3" H 1750 2200 60  0001 C CNN
F 3 "" H 1500 2100 60  0001 C CNN
F 4 "NAME" H 1643 2326 79  0001 C CNN "PIN"
	1    1750 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1600 1950 1600
Connection ~ 1950 1600
Wire Wire Line
	1750 2200 1950 2200
Connection ~ 1950 2200
$Comp
L Connector_Generic_GOST:CON X1
U 1 1 671666D0
P 1750 1600
F 0 "X1" H 1643 1861 79  0000 C CNN
F 1 "+5V" H 1643 1726 79  0000 C CNN
F 2 "Connector_RU:2,5x1,3" H 1750 1600 60  0001 C CNN
F 3 "" H 1500 1500 60  0001 C CNN
F 4 "NAME" H 1643 1725 79  0001 C CNN "PIN"
	1    1750 1600
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:C C2
U 1 1 66FDFEDE
P 2350 1900
F 0 "C2" H 2450 2050 79  0000 L CNN
F 1 "0.15" H 2450 1750 79  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2275 1900 60  0001 C CNN
F 3 "" H 2375 2000 60  0001 C CNN
	1    2350 1900
	1    0    0    -1  
$EndComp
$Comp
L power_GOST:GND #PWR02
U 1 1 66FCA35D
P 2350 3850
F 0 "#PWR02" H 2350 3900 60  0001 C CNN
F 1 "GND" H 2350 3600 79  0001 C CNN
F 2 "" H 2350 3850 60  0000 C CNN
F 3 "" H 2350 3850 60  0001 C CNN
	1    2350 3850
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT2
U 1 1 670AF903
P 9550 2700
F 0 "VT2" H 9846 2768 79  0000 L CNN
F 1 "2Т3130А9" H 8750 2550 79  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9550 2100 79  0001 C CNN
F 3 "" H 9582 2700 79  0001 C CNN
	1    9550 2700
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT1
U 1 1 670B03FC
P 6550 2700
F 0 "VT1" H 6845 2768 79  0000 L CNN
F 1 "2Т3130А9" H 5750 2550 79  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6550 2100 79  0001 C CNN
F 3 "" H 6582 2700 79  0001 C CNN
	1    6550 2700
	-1   0    0    -1  
$EndComp
$Comp
L Device_GOST:R R1
U 1 1 670B127F
P 6400 1450
F 0 "R1" V 6332 1557 79  0000 L CNN
F 1 "100" H 6300 1450 79  0000 L CNN
F 2 "" H 6300 1475 60  0001 C CNN
F 3 "" H 6425 1275 60  0001 C CNN
	1    6400 1450
	0    1    1    0   
$EndComp
$Comp
L Device_GOST:R R3
U 1 1 670B23DD
P 8300 1450
F 0 "R3" V 8232 1557 79  0000 L CNN
F 1 "1.1k" H 8200 1450 79  0000 L CNN
F 2 "" H 8200 1475 60  0001 C CNN
F 3 "" H 8325 1275 60  0001 C CNN
	1    8300 1450
	0    1    1    0   
$EndComp
$Comp
L Device_GOST:R R4
U 1 1 670B2AFC
P 9700 1450
F 0 "R4" V 9632 1557 79  0000 L CNN
F 1 "100" H 9600 1450 79  0000 L CNN
F 2 "" H 9600 1475 60  0001 C CNN
F 3 "" H 9725 1275 60  0001 C CNN
	1    9700 1450
	0    1    1    0   
$EndComp
$Comp
L Device_GOST:CP C3
U 1 1 670B33D0
P 7150 2050
F 0 "C3" V 7050 1850 79  0000 L CNN
F 1 "0.1" V 7250 1750 79  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-7343-40_Kemet-Y" H 7075 2050 60  0001 C CNN
F 3 "" H 7175 2150 60  0001 C CNN
	1    7150 2050
	0    -1   1    0   
$EndComp
$Comp
L Device_GOST:CP C4
U 1 1 670B3B3F
P 9050 2050
F 0 "C4" V 8850 2150 79  0000 L CNN
F 1 "0.1" V 9150 2150 79  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-7343-40_Kemet-Y" H 8975 2050 60  0001 C CNN
F 3 "" H 9075 2150 60  0001 C CNN
	1    9050 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 1100 6400 700 
Wire Wire Line
	9700 700  9700 1100
Wire Wire Line
	8300 1100 8300 700 
Wire Wire Line
	7800 1100 7800 700 
Wire Wire Line
	6400 1800 6400 2050
Connection ~ 7800 700 
Wire Wire Line
	7800 700  8300 700 
Wire Wire Line
	6400 700  7800 700 
Connection ~ 8300 700 
Wire Wire Line
	8300 700  9700 700 
Wire Wire Line
	7350 2050 7800 2050
Wire Wire Line
	7800 2050 7800 1800
Wire Wire Line
	8300 1800 8300 2050
Wire Wire Line
	8300 2050 8850 2050
Wire Wire Line
	9250 2050 9700 2050
Wire Wire Line
	9700 2050 9700 1800
Wire Wire Line
	6950 2050 6400 2050
Connection ~ 6400 2050
Wire Wire Line
	6400 2050 6400 2350
Wire Wire Line
	9700 2350 9700 2050
Connection ~ 9700 2050
Wire Wire Line
	8850 2700 9200 2700
Wire Wire Line
	6400 3050 6400 3350
Wire Wire Line
	6400 3350 9700 3350
Wire Wire Line
	9700 3350 9700 3050
$Comp
L power_GOST:+5V #PWR03
U 1 1 670BB3DF
P 6400 600
F 0 "#PWR03" H 6400 500 79  0001 C CNN
F 1 "+5V" H 6400 821 79  0000 C CNN
F 2 "" V 6400 725 98  0000 C CNN
F 3 "" H 6400 725 98  0001 C CNN
	1    6400 600 
	1    0    0    -1  
$EndComp
$Comp
L power_GOST:GND #PWR04
U 1 1 670BBE39
P 6400 3500
F 0 "#PWR04" H 6400 3550 60  0001 C CNN
F 1 "GND" H 6400 3250 79  0001 C CNN
F 2 "" H 6400 3500 60  0000 C CNN
F 3 "" H 6400 3500 60  0001 C CNN
	1    6400 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3500 6400 3350
Connection ~ 6400 3350
Wire Wire Line
	6400 600  6400 700 
Connection ~ 6400 700 
Wire Wire Line
	6900 2700 7550 2700
Wire Wire Line
	7550 2700 7550 2400
Wire Wire Line
	7550 2400 8300 2400
Wire Wire Line
	8300 2400 8300 2050
Connection ~ 8300 2050
Wire Wire Line
	8850 2500 7800 2500
Wire Wire Line
	7800 2500 7800 2050
Connection ~ 7800 2050
Wire Wire Line
	8850 2500 8850 2700
$Comp
L Diode_GOST:2Д707АС9 VD1
U 1 1 670BF0C8
P 2350 3050
F 0 "VD1" V 2350 2786 79  0000 R CNN
F 1 "2Д707АС9" H 2350 2750 79  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 2650 79  0001 C CNN
F 3 "" H 2252 3050 79  0001 C CNN
	1    2350 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 3850 2350 3650
Wire Wire Line
	2350 2200 2350 2450
Text Notes 10350 1250 0    50   ~ 0
Параметры для мультивибратора и блока питания к нему:\n\nНапряжение: +5 В.\nЧастота генерации: 6 500 Гц.\nКоэффициент заполнения: 0,5 (меандр).\n
Text Notes 10350 1700 0    50   ~ 0
1. Для компенсации падения напряжения на транзисторе поднимем входное питание относительно земли на 1.2 В через диодную сборку.
Text Notes 10350 1900 0    50   ~ 0
2. Т = 1/f= 1.53 *10^-4  - период импульса\n 
Text Notes 10350 1950 0    50   ~ 0
3. Время единичного импульса Ton= K*T = 0.5*1.53 * 10^(-4)= 0.765*10^(-4)
Text Notes 10350 2100 0    50   ~ 0
4. Так как К=0,5, то ТИ1=ТИ2=Ton
Text Notes 10350 2250 0    50   ~ 0
5. t1=t2 = Ton/0.7 = 0,765*10^(-4)/0.7=1,0989*10^(-4)\n
$Comp
L Device_GOST:R R2
U 1 1 670B1EF9
P 7800 1450
F 0 "R2" V 7732 1557 79  0000 L CNN
F 1 "1.1k" H 7700 1450 79  0000 L CNN
F 2 "" H 7700 1475 60  0001 C CNN
F 3 "" H 7825 1275 60  0001 C CNN
	1    7800 1450
	0    1    1    0   
$EndComp
Text Notes 10350 2750 0    50   ~ 0
7. Максимальный ток коллектора 2Т3130А9 = 0,1А\nт.к. амплитуда колебаний (Ur1=Ur4)=5В, то R1= R4= 5/0.1= 50 Ом\nПримем R1= R4 = 100 Ом для предохранения транзистора от выхода из строя 
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT4
U 1 1 670DED83
P 9650 6950
F 0 "VT4" H 9946 7018 79  0000 L CNN
F 1 "2Т3130А9" H 8850 6800 79  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9650 6350 79  0001 C CNN
F 3 "" H 9682 6950 79  0001 C CNN
	1    9650 6950
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT3
U 1 1 670DED89
P 6650 6950
F 0 "VT3" H 6945 7018 79  0000 L CNN
F 1 "2Т3130А9" H 5850 6800 79  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6650 6350 79  0001 C CNN
F 3 "" H 6682 6950 79  0001 C CNN
	1    6650 6950
	-1   0    0    -1  
$EndComp
$Comp
L Device_GOST:R R5
U 1 1 670DED8F
P 6500 5700
F 0 "R5" V 6432 5807 79  0000 L CNN
F 1 "100" H 6400 5700 79  0000 L CNN
F 2 "" H 6400 5725 60  0001 C CNN
F 3 "" H 6525 5525 60  0001 C CNN
	1    6500 5700
	0    1    1    0   
$EndComp
$Comp
L Device_GOST:R R7
U 1 1 670DED95
P 8400 5700
F 0 "R7" V 8332 5807 79  0000 L CNN
F 1 "1.1k" H 8300 5700 79  0000 L CNN
F 2 "" H 8300 5725 60  0001 C CNN
F 3 "" H 8425 5525 60  0001 C CNN
	1    8400 5700
	0    1    1    0   
$EndComp
$Comp
L Device_GOST:R R8
U 1 1 670DED9B
P 9800 5700
F 0 "R8" V 9732 5807 79  0000 L CNN
F 1 "100" H 9700 5700 79  0000 L CNN
F 2 "" H 9700 5725 60  0001 C CNN
F 3 "" H 9825 5525 60  0001 C CNN
	1    9800 5700
	0    1    1    0   
$EndComp
$Comp
L Device_GOST:CP C5
U 1 1 670DEDA1
P 7250 6300
F 0 "C5" V 7150 6100 79  0000 L CNN
F 1 "0.1" V 7350 6000 79  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-7343-40_Kemet-Y" H 7175 6300 60  0001 C CNN
F 3 "" H 7275 6400 60  0001 C CNN
	1    7250 6300
	0    -1   1    0   
$EndComp
$Comp
L Device_GOST:CP C6
U 1 1 670DEDA7
P 9150 6300
F 0 "C6" V 8950 6400 79  0000 L CNN
F 1 "0.1" V 9250 6400 79  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-7343-40_Kemet-Y" H 9075 6300 60  0001 C CNN
F 3 "" H 9175 6400 60  0001 C CNN
	1    9150 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 5350 6500 4950
Wire Wire Line
	9800 4950 9800 5350
Wire Wire Line
	8400 5350 8400 4950
Wire Wire Line
	7900 5350 7900 4950
Wire Wire Line
	6500 6050 6500 6300
Connection ~ 7900 4950
Wire Wire Line
	7900 4950 8400 4950
Wire Wire Line
	6500 4950 7900 4950
Connection ~ 8400 4950
Wire Wire Line
	8400 4950 9800 4950
Wire Wire Line
	7450 6300 7900 6300
Wire Wire Line
	7900 6300 7900 6050
Wire Wire Line
	8400 6050 8400 6300
Wire Wire Line
	8400 6300 8950 6300
Wire Wire Line
	9350 6300 9800 6300
Wire Wire Line
	9800 6300 9800 6050
Wire Wire Line
	7050 6300 6500 6300
Connection ~ 6500 6300
Wire Wire Line
	6500 6300 6500 6600
Wire Wire Line
	9800 6600 9800 6300
Connection ~ 9800 6300
Wire Wire Line
	8950 6950 9300 6950
Wire Wire Line
	6500 7300 6500 7600
Wire Wire Line
	6500 7600 9800 7600
Wire Wire Line
	9800 7600 9800 7300
$Comp
L power_GOST:+5V #PWR05
U 1 1 670DEDC6
P 6500 4850
F 0 "#PWR05" H 6500 4750 79  0001 C CNN
F 1 "+5V" H 6500 5071 79  0000 C CNN
F 2 "" V 6500 4975 98  0000 C CNN
F 3 "" H 6500 4975 98  0001 C CNN
	1    6500 4850
	1    0    0    -1  
$EndComp
$Comp
L power_GOST:GND #PWR06
U 1 1 670DEDCC
P 6500 7750
F 0 "#PWR06" H 6500 7800 60  0001 C CNN
F 1 "GND" H 6500 7500 79  0001 C CNN
F 2 "" H 6500 7750 60  0000 C CNN
F 3 "" H 6500 7750 60  0001 C CNN
	1    6500 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 7750 6500 7600
Connection ~ 6500 7600
Wire Wire Line
	6500 4850 6500 4950
Connection ~ 6500 4950
Wire Wire Line
	7000 6950 7650 6950
Wire Wire Line
	7650 6950 7650 6650
Wire Wire Line
	7650 6650 8400 6650
Wire Wire Line
	8400 6650 8400 6300
Connection ~ 8400 6300
Wire Wire Line
	8950 6750 7900 6750
Wire Wire Line
	7900 6750 7900 6300
Connection ~ 7900 6300
Wire Wire Line
	8950 6750 8950 6950
Text Notes 10450 5500 0    50   ~ 0
Параметры для мультивибратора и блока питания к нему:\n\nНапряжение: +5 В.\nЧастота генерации: 10 200 Гц.\nКоэффициент заполнения: 0,25 (меандр).\n
Text Notes 10450 5950 0    50   ~ 0
1. Для компенсации падения напряжения на транзисторе поднимем входное питание относительно земли на 1.2 В через диодную сборку.
Text Notes 10450 6150 0    50   ~ 0
2. Т = 1/f= 9.8 *10^(-5)  - период импульса\n 
Text Notes 10450 6200 0    50   ~ 0
3. Время единичного импульса Ton= K*T = 0.25*9.8 * 10^(-5)= 2.45*10^(-5)
Text Notes 10450 6350 0    50   ~ 0
4. Так как К=0,25, то ТИ1=Ton, ТИ2=(1-K)*T= 7.35*10^(-5)
Text Notes 10450 6600 0    50   ~ 0
5. t1=TИ1/0.7 = 3,5014*10^(-5)\n   t2 = TИ2/0.7 = 10,5042*10^(-5)\n
Text Notes 10450 6900 0    50   ~ 0
6.  Если принять, что С5=С6=0,1 мкФ, то \nR6=0.35 кОм = 360 Ом (Е24)\nR7=1,05 кОм = 1.1 кОм (Е24)
$Comp
L Device_GOST:R R6
U 1 1 670DEDE6
P 7900 5700
F 0 "R6" V 7832 5807 79  0000 L CNN
F 1 "360" H 7800 5700 79  0000 L CNN
F 2 "" H 7800 5725 60  0001 C CNN
F 3 "" H 7925 5525 60  0001 C CNN
	1    7900 5700
	0    1    1    0   
$EndComp
Text Notes 10450 7250 0    50   ~ 0
7. Максимальный ток коллектора 2Т3130А9 = 0,1А\nт.к. амплитуда колебаний (Ur1=Ur4)=5В, то R5= R8= 5/0.1= 50 Ом\nПримем R5= R8 = 100 Ом для предохранения транзистора от выхода из строя 
Text Notes 10350 2450 0    50   ~ 0
6.  R2=R3 =t1/C3=t2/C4\nЕсли принять, что С3=С4=0,1 мкФ, то R2=R3=1,09 кОм = 1.1 кОм (Е24)
Text Notes 10500 10100 0    50   ~ 0
Параметры для ПНЧ и блока питания к нему:\n\nНапряжение: от +1 до +8 В.\nЧастота генерации: от 1 000 до 3 000 Гц.\nКоэффициент заполнения: 0,5 (прямоугольный сигнал, меандр).\n
$Comp
L Device_GOST:CP C7
U 1 1 670F4F20
P 2150 9250
F 0 "C7" H 2250 9400 79  0000 L CNN
F 1 "15" H 2250 9100 79  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-7343-40_Kemet-Y" H 2075 9250 60  0001 C CNN
F 3 "" H 2175 9350 60  0001 C CNN
	1    2150 9250
	1    0    0    -1  
$EndComp
$Comp
L power_GOST:VCC #PWR07
U 1 1 670F4F26
P 2550 8850
F 0 "#PWR07" H 2550 8750 79  0001 C CNN
F 1 "VCC" H 2550 9071 79  0000 C CNN
F 2 "" V 2550 8975 98  0000 C CNN
F 3 "" H 2550 8975 98  0001 C CNN
	1    2550 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 8950 2550 9050
Wire Wire Line
	2550 9550 2550 9450
Wire Wire Line
	2550 8850 2550 8950
Connection ~ 2550 8950
Wire Wire Line
	2550 8950 2150 8950
Wire Wire Line
	2150 8950 2150 9050
Wire Wire Line
	2150 9450 2150 9550
Wire Wire Line
	2150 9550 2550 9550
$Comp
L Device_GOST:C C8
U 1 1 670F4F47
P 2550 9250
F 0 "C8" H 2650 9400 79  0000 L CNN
F 1 "0.15" H 2650 9100 79  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2475 9250 60  0001 C CNN
F 3 "" H 2575 9350 60  0001 C CNN
	1    2550 9250
	1    0    0    -1  
$EndComp
$Comp
L power_GOST:GND #PWR08
U 1 1 670F4F4D
P 2550 9800
F 0 "#PWR08" H 2550 9850 60  0001 C CNN
F 1 "GND" H 2550 9550 79  0001 C CNN
F 2 "" H 2550 9800 60  0000 C CNN
F 3 "" H 2550 9800 60  0001 C CNN
	1    2550 9800
	1    0    0    -1  
$EndComp
Connection ~ 2550 9550
Wire Wire Line
	2550 9550 2550 9800
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT7
U 1 1 67103C1E
P 9650 11650
F 0 "VT7" H 9946 11718 79  0000 L CNN
F 1 "2Т3130А9" H 8850 11500 79  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9650 11050 79  0001 C CNN
F 3 "" H 9682 11650 79  0001 C CNN
	1    9650 11650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT_GOST:2Т3130А9 VT6
U 1 1 67103C24
P 6650 11650
F 0 "VT6" H 6945 11718 79  0000 L CNN
F 1 "2Т3130А9" H 5850 11500 79  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6650 11050 79  0001 C CNN
F 3 "" H 6682 11650 79  0001 C CNN
	1    6650 11650
	-1   0    0    -1  
$EndComp
$Comp
L Device_GOST:R R10
U 1 1 67103C2A
P 6500 10400
F 0 "R10" V 6432 10507 79  0000 L CNN
F 1 "100" H 6400 10400 79  0000 L CNN
F 2 "" H 6400 10425 60  0001 C CNN
F 3 "" H 6525 10225 60  0001 C CNN
	1    6500 10400
	0    1    1    0   
$EndComp
$Comp
L Device_GOST:R R12
U 1 1 67103C30
P 8400 10400
F 0 "R12" V 8332 10507 79  0000 L CNN
F 1 "10k" H 8300 10400 79  0000 L CNN
F 2 "" H 8300 10425 60  0001 C CNN
F 3 "" H 8425 10225 60  0001 C CNN
	1    8400 10400
	0    1    1    0   
$EndComp
$Comp
L Device_GOST:R R13
U 1 1 67103C36
P 9800 10400
F 0 "R13" V 9732 10507 79  0000 L CNN
F 1 "100" H 9700 10400 79  0000 L CNN
F 2 "" H 9700 10425 60  0001 C CNN
F 3 "" H 9825 10225 60  0001 C CNN
	1    9800 10400
	0    1    1    0   
$EndComp
$Comp
L Device_GOST:C C10
U 1 1 67103C3C
P 7250 11000
F 0 "C10" V 7150 10650 79  0000 L CNN
F 1 "22n" V 7350 10700 79  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-7343-40_Kemet-Y" H 7175 11000 60  0001 C CNN
F 3 "" H 7275 11100 60  0001 C CNN
	1    7250 11000
	0    -1   1    0   
$EndComp
$Comp
L Device_GOST:C C11
U 1 1 67103C42
P 9150 11000
F 0 "C11" V 8950 11100 79  0000 L CNN
F 1 "22n" V 9250 11100 79  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-7343-40_Kemet-Y" H 9075 11000 60  0001 C CNN
F 3 "" H 9175 11100 60  0001 C CNN
	1    9150 11000
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 10050 6500 9650
Wire Wire Line
	9800 9650 9800 10050
Wire Wire Line
	6500 10750 6500 11000
Wire Wire Line
	7450 11000 7900 11000
Wire Wire Line
	7900 11000 7900 10750
Wire Wire Line
	8400 10750 8400 11000
Wire Wire Line
	8400 11000 8950 11000
Wire Wire Line
	9350 11000 9800 11000
Wire Wire Line
	9800 11000 9800 10750
Wire Wire Line
	7050 11000 6500 11000
Connection ~ 6500 11000
Wire Wire Line
	6500 11000 6500 11300
Wire Wire Line
	9800 11300 9800 11000
Connection ~ 9800 11000
Wire Wire Line
	8950 11650 9300 11650
Wire Wire Line
	6500 12000 6500 12300
Wire Wire Line
	6500 12300 9800 12300
Wire Wire Line
	9800 12300 9800 12000
$Comp
L power_GOST:GND #PWR011
U 1 1 67103C67
P 6500 12450
F 0 "#PWR011" H 6500 12500 60  0001 C CNN
F 1 "GND" H 6500 12200 79  0001 C CNN
F 2 "" H 6500 12450 60  0000 C CNN
F 3 "" H 6500 12450 60  0001 C CNN
	1    6500 12450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 12450 6500 12300
Connection ~ 6500 12300
Wire Wire Line
	6500 9550 6500 9650
Connection ~ 6500 9650
Wire Wire Line
	7000 11650 7650 11650
Wire Wire Line
	7650 11650 7650 11350
Wire Wire Line
	7650 11350 8400 11350
Wire Wire Line
	8400 11350 8400 11000
Connection ~ 8400 11000
Wire Wire Line
	8950 11450 7900 11450
Wire Wire Line
	7900 11450 7900 11000
Connection ~ 7900 11000
Wire Wire Line
	8950 11450 8950 11650
$Comp
L Device_GOST:R R11
U 1 1 67103C7A
P 7900 10400
F 0 "R11" V 7832 10507 79  0000 L CNN
F 1 "10k" H 7800 10400 79  0000 L CNN
F 2 "" H 7800 10425 60  0001 C CNN
F 3 "" H 7925 10225 60  0001 C CNN
	1    7900 10400
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 9650 9800 9650
$Comp
L power_GOST:VH #PWR012
U 1 1 671135B2
P 8150 9950
F 0 "#PWR012" H 8150 9850 79  0001 C CNN
F 1 "VH" H 8150 10171 79  0000 C CNN
F 2 "" V 8150 10075 98  0000 C CNN
F 3 "" H 8150 10075 98  0001 C CNN
	1    8150 9950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 10050 7900 10000
Wire Wire Line
	7900 10000 8150 10000
Wire Wire Line
	8150 10000 8150 9950
Wire Wire Line
	8150 10000 8400 10000
Wire Wire Line
	8400 10000 8400 10050
Connection ~ 8150 10000
$Comp
L Transistor_BJT_GOST:2Т3129А9 VT5
U 1 1 67125B64
P 4450 10900
F 0 "VT5" H 4746 10900 79  0000 L CNN
F 1 "2Т3129А9" H 4450 10400 79  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4450 10300 79  0001 C CNN
F 3 "" H 4482 10900 79  0001 C CNN
	1    4450 10900
	1    0    0    1   
$EndComp
$Comp
L power_GOST:VCC #PWR010
U 1 1 6712854A
P 6500 9550
F 0 "#PWR010" H 6500 9450 79  0001 C CNN
F 1 "VCC" H 6500 9771 79  0000 C CNN
F 2 "" V 6500 9675 98  0000 C CNN
F 3 "" H 6500 9675 98  0001 C CNN
	1    6500 9550
	1    0    0    -1  
$EndComp
$Comp
L Device_GOST:R R9
U 1 1 67129076
P 4600 10100
F 0 "R9" V 4532 10207 79  0000 L CNN
F 1 "100" H 4500 10100 79  0000 L CNN
F 2 "" H 4500 10125 60  0001 C CNN
F 3 "" H 4625 9925 60  0001 C CNN
	1    4600 10100
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 9750 4600 9650
Wire Wire Line
	4600 9650 6500 9650
$Comp
L power_GOST:VH #PWR09
U 1 1 67138B73
P 4950 10500
F 0 "#PWR09" H 4950 10400 79  0001 C CNN
F 1 "VH" H 4950 10721 79  0000 C CNN
F 2 "" V 4950 10625 98  0000 C CNN
F 3 "" H 4950 10625 98  0001 C CNN
	1    4950 10500
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 10450 4600 10500
Wire Wire Line
	4950 10500 4600 10500
Connection ~ 4600 10500
Wire Wire Line
	4600 10500 4600 10550
Wire Wire Line
	4600 11250 4600 12300
Wire Wire Line
	4600 12300 6500 12300
$Comp
L Device_GOST:C C9
U 1 1 671458AE
P 3200 11550
F 0 "C9" H 3300 11700 79  0000 L CNN
F 1 "0.15" H 3300 11400 79  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3125 11550 60  0001 C CNN
F 3 "" H 3225 11650 60  0001 C CNN
	1    3200 11550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 12300 4600 12300
Connection ~ 4600 12300
$Comp
L Connector_Generic_GOST:CON X3
U 1 1 670F4F41
P 1950 8950
F 0 "X3" H 1843 9211 79  0000 C CNN
F 1 "+10V" H 1843 9076 79  0000 C CNN
F 2 "Connector_RU:2,5x1,3" H 1950 8950 60  0001 C CNN
F 3 "" H 1700 8850 60  0001 C CNN
F 4 "NAME" H 1843 9075 79  0001 C CNN "PIN"
	1    1950 8950
	1    0    0    -1  
$EndComp
Connection ~ 2150 9550
Wire Wire Line
	1950 9550 2150 9550
Connection ~ 2150 8950
Wire Wire Line
	1950 8950 2150 8950
$Comp
L Connector_Generic_GOST:CON X4
U 1 1 670F4F36
P 1950 9550
F 0 "X4" H 1843 9811 79  0000 C CNN
F 1 "0V" H 1843 9676 79  0000 C CNN
F 2 "Connector_RU:2,5x1,3" H 1950 9550 60  0001 C CNN
F 3 "" H 1700 9450 60  0001 C CNN
F 4 "NAME" H 1843 9676 79  0001 C CNN "PIN"
	1    1950 9550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 12300 3200 12300
$Comp
L Connector_Generic_GOST:CON X6
U 1 1 67153899
P 3000 12300
F 0 "X6" H 2893 12561 79  0000 C CNN
F 1 "0V" H 2893 12426 79  0000 C CNN
F 2 "Connector_RU:2,5x1,3" H 3000 12300 60  0001 C CNN
F 3 "" H 2750 12200 60  0001 C CNN
F 4 "NAME" H 2893 12426 79  0001 C CNN "PIN"
	1    3000 12300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic_GOST:CON X5
U 1 1 67153890
P 3000 10900
F 0 "X5" H 2893 11161 79  0000 C CNN
F 1 "+1V .... +8 V" H 2893 11026 79  0000 C CNN
F 2 "Connector_RU:2,5x1,3" H 3000 10900 60  0001 C CNN
F 3 "" H 2750 10800 60  0001 C CNN
F 4 "NAME" H 2893 11025 79  0001 C CNN "PIN"
	1    3000 10900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 10900 3200 10900
Connection ~ 3200 10900
Wire Wire Line
	3200 10900 4100 10900
Wire Wire Line
	3200 10900 3200 11350
Wire Wire Line
	3200 11750 3200 12300
Connection ~ 3200 12300
Text Notes 10500 10250 0    50   ~ 0
1. Расcчитаем падение напряжения на базовых резисторах транзисторов для частот в 1кГц и 3 кГц 
Text Notes 10500 10450 0    50   ~ 0
2. При номинале емкости в 22 нФ для частоты 1 кГц Rбазы VT6(7) = 32.4 кОм. \nПри падении напряжения в 9.4 В (Uпит - 0.6В базы эмитера) Ток R11 (12) = 0,29 мА 
Text Notes 10500 10700 0    50   ~ 0
3. При номинале емкости в 22 нФ для частоты 3 кГц Rбазы VT6(7) = 10.8 кОм. \nПри падении напряжения в 9.4 В (Uпит - 0.6В базы эмитера) Ток R11 (12)= 0,87 мА 
Text Notes 10500 11000 0    50   ~ 0
4. Следовательно, для изменения частоты мультивибратора требуется на базах транзисторов VT6(7)\nсоздать изменение входного тока с 0,29 мА до 0,87 мА, что можно реализовать\n за счет падения напряжения на резисторе базы транзисторов.
Text Notes 10500 11350 0    50   ~ 0
5. Примем R6(7) = 10 кОм. Тогда падение напряжения при токе в 0,29 мА \nдолжно быть 2,9 В. Тогда падение напряжения при токе в 0,89 мА должно \nбыть 8,7 В. 
Text Notes 10500 11650 0    50   ~ 0
6. Данные напряжения будут реализованы за счет подачи на вход VT5 постоянного напряжения \nот 1 до 8 В с учетом 0,6 В на переходе база-эмитор при \nданном включении транзистора (общий коллектор)
$EndSCHEMATC
