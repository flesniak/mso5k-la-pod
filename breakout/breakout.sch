EESchema Schematic File Version 4
LIBS:breakout-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
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
Text GLabel 5100 2800 2    50   Input ~ 0
D7+
Text GLabel 4300 2800 0    50   Input ~ 0
D7-
Text GLabel 5100 2700 2    50   Input ~ 0
D6+
$Comp
L power:GND #PWR0101
U 1 1 5C3F97D2
P 5100 1900
F 0 "#PWR0101" H 5100 1650 50  0001 C CNN
F 1 "GND" V 5105 1772 50  0000 R CNN
F 2 "" H 5100 1900 50  0001 C CNN
F 3 "" H 5100 1900 50  0001 C CNN
	1    5100 1900
	0    -1   -1   0   
$EndComp
Text GLabel 4300 2700 0    50   Input ~ 0
D6-
Text GLabel 5100 2300 2    50   Input ~ 0
D5+
Text GLabel 5100 2200 2    50   Input ~ 0
D4+
$Comp
L power:GND #PWR0102
U 1 1 5C510A18
P 4250 2400
F 0 "#PWR0102" H 4250 2150 50  0001 C CNN
F 1 "GND" V 4255 2272 50  0000 R CNN
F 2 "" H 4250 2400 50  0001 C CNN
F 3 "" H 4250 2400 50  0001 C CNN
	1    4250 2400
	0    1    1    0   
$EndComp
Text GLabel 4300 2300 0    50   Input ~ 0
D5-
Text GLabel 4300 2200 0    50   Input ~ 0
D4-
Text GLabel 5100 2100 2    50   Input ~ 0
D3+
Text GLabel 5100 2000 2    50   Input ~ 0
D2+
Text GLabel 4300 2100 0    50   Input ~ 0
D3-
Text GLabel 4300 2000 0    50   Input ~ 0
D2-
Text GLabel 5100 1700 2    50   Input ~ 0
D1+
Text GLabel 5100 1600 2    50   Input ~ 0
D0+
Text GLabel 4300 1700 0    50   Input ~ 0
D1-
Text GLabel 4300 1600 0    50   Input ~ 0
D0-
$Comp
L power:+2V5 #PWR0103
U 1 1 5C408E07
P 5100 2500
F 0 "#PWR0103" H 5100 2350 50  0001 C CNN
F 1 "+2V5" V 5115 2628 50  0000 L CNN
F 2 "" H 5100 2500 50  0001 C CNN
F 3 "" H 5100 2500 50  0001 C CNN
	1    5100 2500
	0    1    1    0   
$EndComp
$Comp
L power:-2V5 #PWR0104
U 1 1 5C408E96
P 5100 1800
F 0 "#PWR0104" H 5100 1900 50  0001 C CNN
F 1 "-2V5" V 5115 1928 50  0000 L CNN
F 2 "" H 5100 1800 50  0001 C CNN
F 3 "" H 5100 1800 50  0001 C CNN
	1    5100 1800
	0    1    1    0   
$EndComp
$Comp
L power:+4V #PWR0105
U 1 1 5C40B0EF
P 5100 2600
F 0 "#PWR0105" H 5100 2450 50  0001 C CNN
F 1 "+4V" V 5115 2728 50  0000 L CNN
F 2 "" H 5100 2600 50  0001 C CNN
F 3 "" H 5100 2600 50  0001 C CNN
	1    5100 2600
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x13_Odd_Even J102
U 1 1 5C536BEA
P 4650 2200
F 0 "J102" H 4700 3017 50  0000 C CNN
F 1 "pod_0-7" H 4700 2926 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x13_P1.27mm_Vertical_SMD" H 4650 2200 50  0001 C CNN
F 3 "~" H 4650 2200 50  0001 C CNN
	1    4650 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1700 4300 1700
Wire Wire Line
	4300 1800 4450 1800
Wire Wire Line
	4450 1900 4300 1900
Wire Wire Line
	4450 2000 4300 2000
Wire Wire Line
	4300 2100 4450 2100
Wire Wire Line
	4300 2200 4450 2200
Wire Wire Line
	4300 2700 4450 2700
Wire Wire Line
	4450 2800 4300 2800
Wire Wire Line
	4450 2300 4300 2300
Wire Wire Line
	4950 2300 5100 2300
Wire Wire Line
	5100 2600 4950 2600
Wire Wire Line
	4950 2500 5100 2500
Wire Wire Line
	5100 2400 4950 2400
Wire Wire Line
	4950 2800 5100 2800
Wire Wire Line
	5100 2700 4950 2700
Wire Wire Line
	4950 2200 5100 2200
Wire Wire Line
	5100 2100 4950 2100
Wire Wire Line
	4950 2000 5100 2000
Wire Wire Line
	5100 1900 4950 1900
Wire Wire Line
	4950 1800 5100 1800
Wire Wire Line
	5100 1700 4950 1700
Wire Wire Line
	4950 1600 5100 1600
Wire Wire Line
	4300 1600 4450 1600
$Comp
L power:GND #PWR0106
U 1 1 5C3F979B
P 4300 1900
F 0 "#PWR0106" H 4300 1650 50  0001 C CNN
F 1 "GND" V 4305 1772 50  0000 R CNN
F 2 "" H 4300 1900 50  0001 C CNN
F 3 "" H 4300 1900 50  0001 C CNN
	1    4300 1900
	0    1    1    0   
$EndComp
$Comp
L power:-2V5 #PWR0107
U 1 1 5C52E2DC
P 4300 1800
F 0 "#PWR0107" H 4300 1900 50  0001 C CNN
F 1 "-2V5" V 4315 1928 50  0000 L CNN
F 2 "" H 4300 1800 50  0001 C CNN
F 3 "" H 4300 1800 50  0001 C CNN
	1    4300 1800
	0    -1   -1   0   
$EndComp
$Comp
L power:+2V5 #PWR0108
U 1 1 5C52E30F
P 4250 2500
F 0 "#PWR0108" H 4250 2350 50  0001 C CNN
F 1 "+2V5" V 4265 2628 50  0000 L CNN
F 2 "" H 4250 2500 50  0001 C CNN
F 3 "" H 4250 2500 50  0001 C CNN
	1    4250 2500
	0    -1   -1   0   
$EndComp
$Comp
L power:+4V #PWR0109
U 1 1 5C52E342
P 4250 2600
F 0 "#PWR0109" H 4250 2450 50  0001 C CNN
F 1 "+4V" V 4265 2728 50  0000 L CNN
F 2 "" H 4250 2600 50  0001 C CNN
F 3 "" H 4250 2600 50  0001 C CNN
	1    4250 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 2400 4450 2400
Wire Wire Line
	4450 2500 4250 2500
Wire Wire Line
	4250 2600 4450 2600
Text GLabel 6800 2800 2    50   Input ~ 0
D15+
Text GLabel 6000 2800 0    50   Input ~ 0
D15-
Text GLabel 6800 2700 2    50   Input ~ 0
D14+
$Comp
L power:GND #PWR0110
U 1 1 5C50B0EE
P 6800 1900
F 0 "#PWR0110" H 6800 1650 50  0001 C CNN
F 1 "GND" V 6805 1772 50  0000 R CNN
F 2 "" H 6800 1900 50  0001 C CNN
F 3 "" H 6800 1900 50  0001 C CNN
	1    6800 1900
	0    -1   -1   0   
$EndComp
Text GLabel 6000 2700 0    50   Input ~ 0
D14-
Text GLabel 6800 2300 2    50   Input ~ 0
D13+
Text GLabel 6800 2200 2    50   Input ~ 0
D12+
$Comp
L power:GND #PWR0111
U 1 1 5C50B0F7
P 5950 2400
F 0 "#PWR0111" H 5950 2150 50  0001 C CNN
F 1 "GND" V 5955 2272 50  0000 R CNN
F 2 "" H 5950 2400 50  0001 C CNN
F 3 "" H 5950 2400 50  0001 C CNN
	1    5950 2400
	0    1    1    0   
$EndComp
Text GLabel 6000 2300 0    50   Input ~ 0
D13-
Text GLabel 6000 2200 0    50   Input ~ 0
D12-
Text GLabel 6800 2100 2    50   Input ~ 0
D11+
Text GLabel 6800 2000 2    50   Input ~ 0
D10+
Text GLabel 6000 2100 0    50   Input ~ 0
D11-
Text GLabel 6000 2000 0    50   Input ~ 0
D10-
Text GLabel 6800 1700 2    50   Input ~ 0
D9+
Text GLabel 6800 1600 2    50   Input ~ 0
D8+
Text GLabel 6000 1700 0    50   Input ~ 0
D9-
Text GLabel 6000 1600 0    50   Input ~ 0
D8-
$Comp
L power:+2V5 #PWR0112
U 1 1 5C50B107
P 6800 2500
F 0 "#PWR0112" H 6800 2350 50  0001 C CNN
F 1 "+2V5" V 6815 2628 50  0000 L CNN
F 2 "" H 6800 2500 50  0001 C CNN
F 3 "" H 6800 2500 50  0001 C CNN
	1    6800 2500
	0    1    1    0   
$EndComp
$Comp
L power:-2V5 #PWR0113
U 1 1 5C50B10D
P 6800 1800
F 0 "#PWR0113" H 6800 1900 50  0001 C CNN
F 1 "-2V5" V 6815 1928 50  0000 L CNN
F 2 "" H 6800 1800 50  0001 C CNN
F 3 "" H 6800 1800 50  0001 C CNN
	1    6800 1800
	0    1    1    0   
$EndComp
$Comp
L power:+4V #PWR0114
U 1 1 5C50B113
P 6800 2600
F 0 "#PWR0114" H 6800 2450 50  0001 C CNN
F 1 "+4V" V 6815 2728 50  0000 L CNN
F 2 "" H 6800 2600 50  0001 C CNN
F 3 "" H 6800 2600 50  0001 C CNN
	1    6800 2600
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x13_Odd_Even J103
U 1 1 5C50B119
P 6350 2200
F 0 "J103" H 6400 3017 50  0000 C CNN
F 1 "pod_8-15" H 6400 2926 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x13_P1.27mm_Vertical_SMD" H 6350 2200 50  0001 C CNN
F 3 "~" H 6350 2200 50  0001 C CNN
	1    6350 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 1700 6000 1700
Wire Wire Line
	6000 1800 6150 1800
Wire Wire Line
	6150 1900 6000 1900
Wire Wire Line
	6150 2000 6000 2000
Wire Wire Line
	6000 2100 6150 2100
Wire Wire Line
	6000 2200 6150 2200
Wire Wire Line
	6000 2700 6150 2700
Wire Wire Line
	6150 2800 6000 2800
Wire Wire Line
	6150 2300 6000 2300
Wire Wire Line
	6650 2300 6800 2300
Wire Wire Line
	6800 2600 6650 2600
Wire Wire Line
	6650 2500 6800 2500
Wire Wire Line
	6800 2400 6650 2400
Wire Wire Line
	6650 2800 6800 2800
Wire Wire Line
	6800 2700 6650 2700
Wire Wire Line
	6650 2200 6800 2200
Wire Wire Line
	6800 2100 6650 2100
Wire Wire Line
	6650 2000 6800 2000
Wire Wire Line
	6800 1900 6650 1900
Wire Wire Line
	6650 1800 6800 1800
Wire Wire Line
	6800 1700 6650 1700
Wire Wire Line
	6650 1600 6800 1600
Wire Wire Line
	6000 1600 6150 1600
$Comp
L power:GND #PWR0115
U 1 1 5C50B137
P 6000 1900
F 0 "#PWR0115" H 6000 1650 50  0001 C CNN
F 1 "GND" V 6005 1772 50  0000 R CNN
F 2 "" H 6000 1900 50  0001 C CNN
F 3 "" H 6000 1900 50  0001 C CNN
	1    6000 1900
	0    1    1    0   
$EndComp
$Comp
L power:-2V5 #PWR0116
U 1 1 5C50B13D
P 6000 1800
F 0 "#PWR0116" H 6000 1900 50  0001 C CNN
F 1 "-2V5" V 6015 1928 50  0000 L CNN
F 2 "" H 6000 1800 50  0001 C CNN
F 3 "" H 6000 1800 50  0001 C CNN
	1    6000 1800
	0    -1   -1   0   
$EndComp
$Comp
L power:+2V5 #PWR0117
U 1 1 5C50B143
P 5950 2500
F 0 "#PWR0117" H 5950 2350 50  0001 C CNN
F 1 "+2V5" V 5965 2628 50  0000 L CNN
F 2 "" H 5950 2500 50  0001 C CNN
F 3 "" H 5950 2500 50  0001 C CNN
	1    5950 2500
	0    -1   -1   0   
$EndComp
$Comp
L power:+4V #PWR0118
U 1 1 5C50B149
P 5950 2600
F 0 "#PWR0118" H 5950 2450 50  0001 C CNN
F 1 "+4V" V 5965 2728 50  0000 L CNN
F 2 "" H 5950 2600 50  0001 C CNN
F 3 "" H 5950 2600 50  0001 C CNN
	1    5950 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5950 2400 6150 2400
Wire Wire Line
	6150 2500 5950 2500
Wire Wire Line
	5950 2600 6150 2600
$Comp
L Connector_Generic:Conn_02x25_Odd_Even J101
U 1 1 5C3F96EF
P 2500 2450
F 0 "J101" H 2550 1025 50  0000 C CNN
F 1 "scope" H 2550 1116 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x25_P2.54mm_Vertical" H 2500 2450 50  0001 C CNN
F 3 "~" H 2500 2450 50  0001 C CNN
	1    2500 2450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5C510A16
P 2000 1250
F 0 "#PWR0119" H 2000 1000 50  0001 C CNN
F 1 "GND" V 2005 1122 50  0000 R CNN
F 2 "" H 2000 1250 50  0001 C CNN
F 3 "" H 2000 1250 50  0001 C CNN
	1    2000 1250
	0    1    1    0   
$EndComp
Text GLabel 2900 1250 2    50   Input ~ 0
D7+
Text GLabel 2000 1350 0    50   Input ~ 0
D7-
Text GLabel 2900 1350 2    50   Input ~ 0
D6+
Text GLabel 2900 1450 2    50   Input ~ 0
D15+
Text GLabel 2900 1550 2    50   Input ~ 0
D14+
$Comp
L power:GND #PWR0120
U 1 1 5C510A17
P 2900 1650
F 0 "#PWR0120" H 2900 1400 50  0001 C CNN
F 1 "GND" V 2905 1522 50  0000 R CNN
F 2 "" H 2900 1650 50  0001 C CNN
F 3 "" H 2900 1650 50  0001 C CNN
	1    2900 1650
	0    -1   -1   0   
$EndComp
Text GLabel 2000 1450 0    50   Input ~ 0
D6-
Text GLabel 2000 1550 0    50   Input ~ 0
D15-
Text GLabel 2000 1650 0    50   Input ~ 0
D14-
Wire Wire Line
	2000 1650 2200 1650
Wire Wire Line
	2200 1550 2000 1550
Wire Wire Line
	2000 1450 2200 1450
Wire Wire Line
	2200 1350 2000 1350
Wire Wire Line
	2000 1250 2200 1250
Wire Wire Line
	2900 1650 2700 1650
Wire Wire Line
	2900 1550 2700 1550
Wire Wire Line
	2700 1450 2900 1450
Wire Wire Line
	2900 1350 2700 1350
Wire Wire Line
	2700 1250 2900 1250
Text GLabel 2900 1750 2    50   Input ~ 0
D5+
Text GLabel 2900 1850 2    50   Input ~ 0
D4+
Text GLabel 2900 1950 2    50   Input ~ 0
D13+
Text GLabel 2900 2050 2    50   Input ~ 0
D12+
Wire Wire Line
	2900 2050 2700 2050
Wire Wire Line
	2700 1950 2900 1950
Wire Wire Line
	2900 1850 2700 1850
Wire Wire Line
	2700 1750 2900 1750
$Comp
L power:GND #PWR0121
U 1 1 5C3FA063
P 2900 2150
F 0 "#PWR0121" H 2900 1900 50  0001 C CNN
F 1 "GND" V 2905 2022 50  0000 R CNN
F 2 "" H 2900 2150 50  0001 C CNN
F 3 "" H 2900 2150 50  0001 C CNN
	1    2900 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2900 2150 2700 2150
$Comp
L power:GND #PWR0122
U 1 1 5C3FA1F2
P 2000 1750
F 0 "#PWR0122" H 2000 1500 50  0001 C CNN
F 1 "GND" V 2005 1622 50  0000 R CNN
F 2 "" H 2000 1750 50  0001 C CNN
F 3 "" H 2000 1750 50  0001 C CNN
	1    2000 1750
	0    1    1    0   
$EndComp
Text GLabel 1950 1850 0    50   Input ~ 0
D5-
Text GLabel 1950 1950 0    50   Input ~ 0
D4-
Text GLabel 1950 2050 0    50   Input ~ 0
D13-
Text GLabel 1950 2150 0    50   Input ~ 0
D12-
Wire Wire Line
	1950 2150 2200 2150
Wire Wire Line
	2200 2050 1950 2050
Wire Wire Line
	1950 1950 2200 1950
Wire Wire Line
	2200 1850 1950 1850
Wire Wire Line
	2000 1750 2200 1750
$Comp
L power:GND #PWR0123
U 1 1 5C3FB264
P 2000 2250
F 0 "#PWR0123" H 2000 2000 50  0001 C CNN
F 1 "GND" V 2005 2122 50  0000 R CNN
F 2 "" H 2000 2250 50  0001 C CNN
F 3 "" H 2000 2250 50  0001 C CNN
	1    2000 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 2250 2200 2250
Text GLabel 2900 2250 2    50   Input ~ 0
D3+
Text GLabel 2900 2350 2    50   Input ~ 0
D2+
Text GLabel 2900 2450 2    50   Input ~ 0
D11+
Text GLabel 2900 2550 2    50   Input ~ 0
D10+
$Comp
L power:GND #PWR0124
U 1 1 5C3FB64B
P 2900 2650
F 0 "#PWR0124" H 2900 2400 50  0001 C CNN
F 1 "GND" V 2905 2522 50  0000 R CNN
F 2 "" H 2900 2650 50  0001 C CNN
F 3 "" H 2900 2650 50  0001 C CNN
	1    2900 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2900 2650 2700 2650
Wire Wire Line
	2700 2550 2900 2550
Wire Wire Line
	2700 2450 2900 2450
Wire Wire Line
	2900 2350 2700 2350
Wire Wire Line
	2700 2250 2900 2250
Text GLabel 1950 2350 0    50   Input ~ 0
D3-
Text GLabel 1950 2450 0    50   Input ~ 0
D2-
Text GLabel 1950 2550 0    50   Input ~ 0
D11-
Text GLabel 1950 2650 0    50   Input ~ 0
D10-
Wire Wire Line
	1950 2650 2200 2650
Wire Wire Line
	2200 2550 1950 2550
Wire Wire Line
	1950 2450 2200 2450
Wire Wire Line
	2200 2350 1950 2350
Text GLabel 2900 2750 2    50   Input ~ 0
D1+
Text GLabel 2900 2850 2    50   Input ~ 0
D0+
Text GLabel 2900 2950 2    50   Input ~ 0
D9+
Text GLabel 2900 3050 2    50   Input ~ 0
D8+
$Comp
L power:GND #PWR0125
U 1 1 5C3FE8B7
P 2900 3150
F 0 "#PWR0125" H 2900 2900 50  0001 C CNN
F 1 "GND" V 2905 3022 50  0000 R CNN
F 2 "" H 2900 3150 50  0001 C CNN
F 3 "" H 2900 3150 50  0001 C CNN
	1    2900 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2900 3150 2700 3150
Wire Wire Line
	2700 3050 2900 3050
Wire Wire Line
	2900 2950 2700 2950
Wire Wire Line
	2700 2850 2900 2850
Wire Wire Line
	2900 2750 2700 2750
$Comp
L power:GND #PWR0126
U 1 1 5C401510
P 1950 2750
F 0 "#PWR0126" H 1950 2500 50  0001 C CNN
F 1 "GND" V 1955 2622 50  0000 R CNN
F 2 "" H 1950 2750 50  0001 C CNN
F 3 "" H 1950 2750 50  0001 C CNN
	1    1950 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	1950 2750 2200 2750
Text GLabel 1950 2850 0    50   Input ~ 0
D1-
Text GLabel 1950 2950 0    50   Input ~ 0
D0-
Text GLabel 1950 3050 0    50   Input ~ 0
D9-
Text GLabel 1950 3150 0    50   Input ~ 0
D8-
Wire Wire Line
	1950 3150 2200 3150
Wire Wire Line
	2200 3050 1950 3050
Wire Wire Line
	1950 2950 2200 2950
Wire Wire Line
	2200 2850 1950 2850
$Comp
L power:GND #PWR0127
U 1 1 5C405113
P 2900 3250
F 0 "#PWR0127" H 2900 3000 50  0001 C CNN
F 1 "GND" V 2905 3122 50  0000 R CNN
F 2 "" H 2900 3250 50  0001 C CNN
F 3 "" H 2900 3250 50  0001 C CNN
	1    2900 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2900 3250 2700 3250
$Comp
L power:GND #PWR0128
U 1 1 5C405F47
P 2900 3550
F 0 "#PWR0128" H 2900 3300 50  0001 C CNN
F 1 "GND" V 2905 3422 50  0000 R CNN
F 2 "" H 2900 3550 50  0001 C CNN
F 3 "" H 2900 3550 50  0001 C CNN
	1    2900 3550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 5C405F54
P 1850 3650
F 0 "#PWR0129" H 1850 3400 50  0001 C CNN
F 1 "GND" V 1855 3522 50  0000 R CNN
F 2 "" H 1850 3650 50  0001 C CNN
F 3 "" H 1850 3650 50  0001 C CNN
	1    1850 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 3650 2200 3650
Wire Wire Line
	2700 3550 2900 3550
Wire Wire Line
	2900 3650 2700 3650
$Comp
L power:+2V5 #PWR0131
U 1 1 5C510A19
P 2900 3350
F 0 "#PWR0131" H 2900 3200 50  0001 C CNN
F 1 "+2V5" V 2915 3478 50  0000 L CNN
F 2 "" H 2900 3350 50  0001 C CNN
F 3 "" H 2900 3350 50  0001 C CNN
	1    2900 3350
	0    1    1    0   
$EndComp
$Comp
L power:-2V5 #PWR0132
U 1 1 5C510A1A
P 1850 3550
F 0 "#PWR0132" H 1850 3650 50  0001 C CNN
F 1 "-2V5" V 1865 3678 50  0000 L CNN
F 2 "" H 1850 3550 50  0001 C CNN
F 3 "" H 1850 3550 50  0001 C CNN
	1    1850 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1850 3550 2200 3550
Wire Wire Line
	2700 3350 2900 3350
$Comp
L power:+4V #PWR0133
U 1 1 5C510A1B
P 1900 3250
F 0 "#PWR0133" H 1900 3100 50  0001 C CNN
F 1 "+4V" V 1915 3378 50  0000 L CNN
F 2 "" H 1900 3250 50  0001 C CNN
F 3 "" H 1900 3250 50  0001 C CNN
	1    1900 3250
	0    -1   -1   0   
$EndComp
$Comp
L power:+4V #PWR0134
U 1 1 5C40B106
P 1900 3350
F 0 "#PWR0134" H 1900 3200 50  0001 C CNN
F 1 "+4V" V 1915 3478 50  0000 L CNN
F 2 "" H 1900 3350 50  0001 C CNN
F 3 "" H 1900 3350 50  0001 C CNN
	1    1900 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1900 3250 2200 3250
Wire Wire Line
	2200 3350 1900 3350
Text GLabel 2900 3450 2    50   Input ~ 0
Vref_8-15
Wire Wire Line
	2900 3450 2700 3450
Text GLabel 1950 3450 0    50   Input ~ 0
Vref_0-7
Wire Wire Line
	1950 3450 2200 3450
Text Notes 1050 3950 0    50   ~ 0
For reference see:\nhttp://www.eevblog.com/forum/testgear/hacking-the-rigol-mso5000-series-oscilloscopes/msg2057401/#msg2057401 
Text GLabel 5100 2400 2    50   Input ~ 0
Vref_0-7
Text GLabel 6800 2400 2    50   Input ~ 0
Vref_8-15
$Comp
L Connector:Conn_01x01_Female J106
U 1 1 5C547F3E
P 8950 1700
F 0 "J106" H 8844 1475 50  0000 C CNN
F 1 "3mm hole" V 9050 1650 50  0000 C CNN
F 2 "projectdir:3mm" H 8950 1700 50  0001 C CNN
F 3 "~" H 8950 1700 50  0001 C CNN
	1    8950 1700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0135
U 1 1 5C554C7D
P 8950 2000
F 0 "#PWR0135" H 8950 1750 50  0001 C CNN
F 1 "GND" H 8955 1827 50  0000 C CNN
F 2 "" H 8950 2000 50  0001 C CNN
F 3 "" H 8950 2000 50  0001 C CNN
	1    8950 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 1900 8950 2000
$Comp
L Connector:Conn_01x01_Female J107
U 1 1 5C567EA4
P 9350 1700
F 0 "J107" H 9244 1475 50  0000 C CNN
F 1 "3mm hole" V 9450 1650 50  0000 C CNN
F 2 "projectdir:3mm" H 9350 1700 50  0001 C CNN
F 3 "~" H 9350 1700 50  0001 C CNN
	1    9350 1700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 5C567EAA
P 9350 2000
F 0 "#PWR0136" H 9350 1750 50  0001 C CNN
F 1 "GND" H 9355 1827 50  0000 C CNN
F 2 "" H 9350 2000 50  0001 C CNN
F 3 "" H 9350 2000 50  0001 C CNN
	1    9350 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1900 9350 2000
$Comp
L Connector:Conn_01x01_Female J104
U 1 1 5C56E4DD
P 8150 1700
F 0 "J104" H 8044 1475 50  0000 C CNN
F 1 "3mm hole" V 8250 1650 50  0000 C CNN
F 2 "projectdir:3mm" H 8150 1700 50  0001 C CNN
F 3 "~" H 8150 1700 50  0001 C CNN
	1    8150 1700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0137
U 1 1 5C56E4E3
P 8150 2000
F 0 "#PWR0137" H 8150 1750 50  0001 C CNN
F 1 "GND" H 8155 1827 50  0000 C CNN
F 2 "" H 8150 2000 50  0001 C CNN
F 3 "" H 8150 2000 50  0001 C CNN
	1    8150 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 1900 8150 2000
$Comp
L Connector:Conn_01x01_Female J105
U 1 1 5C56E4EA
P 8550 1700
F 0 "J105" H 8444 1475 50  0000 C CNN
F 1 "3mm hole" V 8650 1650 50  0000 C CNN
F 2 "projectdir:3mm" H 8550 1700 50  0001 C CNN
F 3 "~" H 8550 1700 50  0001 C CNN
	1    8550 1700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0138
U 1 1 5C56E4F0
P 8550 2000
F 0 "#PWR0138" H 8550 1750 50  0001 C CNN
F 1 "GND" H 8555 1827 50  0000 C CNN
F 2 "" H 8550 2000 50  0001 C CNN
F 3 "" H 8550 2000 50  0001 C CNN
	1    8550 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 1900 8550 2000
Text GLabel 2900 3650 2    50   Input ~ 0
Detect
Text GLabel 10300 2500 2    50   Input ~ 0
Detect
$Comp
L Device:R R101
U 1 1 5C5DAFCF
P 10150 2250
F 0 "R101" H 10220 2296 50  0000 L CNN
F 1 "NF" H 10220 2205 50  0000 L CNN
F 2 "Resistors_SMD.pretty:R_0603" V 10080 2250 50  0001 C CNN
F 3 "~" H 10150 2250 50  0001 C CNN
	1    10150 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R102
U 1 1 5C5DB037
P 10150 2750
F 0 "R102" H 10220 2796 50  0000 L CNN
F 1 "0" H 10220 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 10080 2750 50  0001 C CNN
F 3 "~" H 10150 2750 50  0001 C CNN
	1    10150 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 2400 10150 2500
$Comp
L power:GND #PWR0139
U 1 1 5C5E81F5
P 10150 3000
F 0 "#PWR0139" H 10150 2750 50  0001 C CNN
F 1 "GND" H 10155 2827 50  0000 C CNN
F 2 "" H 10150 3000 50  0001 C CNN
F 3 "" H 10150 3000 50  0001 C CNN
	1    10150 3000
	1    0    0    -1  
$EndComp
Connection ~ 10150 2500
Wire Wire Line
	10150 2500 10300 2500
Wire Wire Line
	10150 2500 10150 2600
$Comp
L power:+4V #PWR0130
U 1 1 5C5F549A
P 10150 2000
F 0 "#PWR0130" H 10150 1850 50  0001 C CNN
F 1 "+4V" V 10165 2128 50  0000 L CNN
F 2 "" H 10150 2000 50  0001 C CNN
F 3 "" H 10150 2000 50  0001 C CNN
	1    10150 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 2000 10150 2100
Wire Wire Line
	10150 2900 10150 3000
$EndSCHEMATC
