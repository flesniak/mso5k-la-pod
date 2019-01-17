EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
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
L Connector_Generic:Conn_02x25_Odd_Even J1
U 1 1 5C3F96EF
P 2500 2450
F 0 "J1" H 2550 1025 50  0000 C CNN
F 1 "output" H 2550 1116 50  0000 C CNN
F 2 "" H 2500 2450 50  0001 C CNN
F 3 "~" H 2500 2450 50  0001 C CNN
	1    2500 2450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5C3F979B
P 1950 1250
F 0 "#PWR06" H 1950 1000 50  0001 C CNN
F 1 "GND" V 1955 1122 50  0000 R CNN
F 2 "" H 1950 1250 50  0001 C CNN
F 3 "" H 1950 1250 50  0001 C CNN
	1    1950 1250
	0    1    1    0   
$EndComp
Text GLabel 2900 1250 2    50   Input ~ 0
D7
Text GLabel 2150 1350 0    50   Input ~ 0
~D7
Text GLabel 2900 1350 2    50   Input ~ 0
D6
Text GLabel 2900 1450 2    50   Input ~ 0
D15
Text GLabel 2900 1550 2    50   Input ~ 0
D14
$Comp
L power:GND #PWR09
U 1 1 5C3F97D2
P 2900 1650
F 0 "#PWR09" H 2900 1400 50  0001 C CNN
F 1 "GND" V 2905 1522 50  0000 R CNN
F 2 "" H 2900 1650 50  0001 C CNN
F 3 "" H 2900 1650 50  0001 C CNN
	1    2900 1650
	0    -1   -1   0   
$EndComp
Text GLabel 1900 1450 0    50   Input ~ 0
~D6
Text GLabel 2150 1550 0    50   Input ~ 0
~D15
Text GLabel 1900 1650 0    50   Input ~ 0
~D14
Wire Wire Line
	1900 1650 2200 1650
Wire Wire Line
	2200 1550 2150 1550
Wire Wire Line
	1900 1450 2200 1450
Wire Wire Line
	2200 1350 2150 1350
Wire Wire Line
	1950 1250 2200 1250
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
D5
Text GLabel 2900 1850 2    50   Input ~ 0
D4
Text GLabel 2900 1950 2    50   Input ~ 0
D13
Text GLabel 2900 2050 2    50   Input ~ 0
D12
Wire Wire Line
	2900 2050 2700 2050
Wire Wire Line
	2700 1950 2900 1950
Wire Wire Line
	2900 1850 2700 1850
Wire Wire Line
	2700 1750 2900 1750
$Comp
L power:GND #PWR010
U 1 1 5C3FA063
P 2900 2150
F 0 "#PWR010" H 2900 1900 50  0001 C CNN
F 1 "GND" V 2905 2022 50  0000 R CNN
F 2 "" H 2900 2150 50  0001 C CNN
F 3 "" H 2900 2150 50  0001 C CNN
	1    2900 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2900 2150 2700 2150
$Comp
L power:GND #PWR08
U 1 1 5C3FA1F2
P 2150 1750
F 0 "#PWR08" H 2150 1500 50  0001 C CNN
F 1 "GND" V 2155 1622 50  0000 R CNN
F 2 "" H 2150 1750 50  0001 C CNN
F 3 "" H 2150 1750 50  0001 C CNN
	1    2150 1750
	0    1    1    0   
$EndComp
Text GLabel 1900 1850 0    50   Input ~ 0
~D5
Text GLabel 2100 1950 0    50   Input ~ 0
~D4
Text GLabel 1900 2050 0    50   Input ~ 0
~D13
Text GLabel 2100 2150 0    50   Input ~ 0
~D12
Wire Wire Line
	2100 2150 2200 2150
Wire Wire Line
	2200 2050 1900 2050
Wire Wire Line
	2100 1950 2200 1950
Wire Wire Line
	2200 1850 1900 1850
Wire Wire Line
	2150 1750 2200 1750
$Comp
L power:GND #PWR03
U 1 1 5C3FB264
P 1900 2250
F 0 "#PWR03" H 1900 2000 50  0001 C CNN
F 1 "GND" V 1905 2122 50  0000 R CNN
F 2 "" H 1900 2250 50  0001 C CNN
F 3 "" H 1900 2250 50  0001 C CNN
	1    1900 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 2250 2200 2250
Text GLabel 2900 2250 2    50   Input ~ 0
D3
Text GLabel 2900 2350 2    50   Input ~ 0
D2
Text GLabel 2900 2450 2    50   Input ~ 0
D11
Text GLabel 2900 2550 2    50   Input ~ 0
D10
$Comp
L power:GND #PWR011
U 1 1 5C3FB64B
P 2900 2650
F 0 "#PWR011" H 2900 2400 50  0001 C CNN
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
Text GLabel 2100 2350 0    50   Input ~ 0
~D3
Text GLabel 1850 2450 0    50   Input ~ 0
~D2
Text GLabel 2100 2550 0    50   Input ~ 0
~D11
Text GLabel 1850 2650 0    50   Input ~ 0
~D10
Wire Wire Line
	1850 2650 2200 2650
Wire Wire Line
	2200 2550 2100 2550
Wire Wire Line
	1850 2450 2200 2450
Wire Wire Line
	2200 2350 2100 2350
Text GLabel 2900 2750 2    50   Input ~ 0
D1
Text GLabel 2900 2850 2    50   Input ~ 0
D0
Text GLabel 2900 2950 2    50   Input ~ 0
D9
Text GLabel 2900 3050 2    50   Input ~ 0
D8
$Comp
L power:GND #PWR012
U 1 1 5C3FE8B7
P 2900 3150
F 0 "#PWR012" H 2900 2900 50  0001 C CNN
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
L power:GND #PWR07
U 1 1 5C401510
P 2100 2750
F 0 "#PWR07" H 2100 2500 50  0001 C CNN
F 1 "GND" V 2105 2622 50  0000 R CNN
F 2 "" H 2100 2750 50  0001 C CNN
F 3 "" H 2100 2750 50  0001 C CNN
	1    2100 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 2750 2200 2750
Text GLabel 1850 2850 0    50   Input ~ 0
~D1
Text GLabel 2100 2950 0    50   Input ~ 0
~D0
Text GLabel 1850 3050 0    50   Input ~ 0
~D9
Text GLabel 2100 3150 0    50   Input ~ 0
~D8
Wire Wire Line
	2100 3150 2200 3150
Wire Wire Line
	2200 3050 1850 3050
Wire Wire Line
	2100 2950 2200 2950
Wire Wire Line
	2200 2850 1850 2850
$Comp
L power:GND #PWR013
U 1 1 5C405113
P 2900 3250
F 0 "#PWR013" H 2900 3000 50  0001 C CNN
F 1 "GND" V 2905 3122 50  0000 R CNN
F 2 "" H 2900 3250 50  0001 C CNN
F 3 "" H 2900 3250 50  0001 C CNN
	1    2900 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2900 3250 2700 3250
$Comp
L power:GND #PWR015
U 1 1 5C405F47
P 2900 3550
F 0 "#PWR015" H 2900 3300 50  0001 C CNN
F 1 "GND" V 2905 3422 50  0000 R CNN
F 2 "" H 2900 3550 50  0001 C CNN
F 3 "" H 2900 3550 50  0001 C CNN
	1    2900 3550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5C405F54
P 1850 3650
F 0 "#PWR02" H 1850 3400 50  0001 C CNN
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
$Comp
L power:GND #PWR016
U 1 1 5C407DBE
P 2900 3650
F 0 "#PWR016" H 2900 3400 50  0001 C CNN
F 1 "GND" V 2905 3522 50  0000 R CNN
F 2 "" H 2900 3650 50  0001 C CNN
F 3 "" H 2900 3650 50  0001 C CNN
	1    2900 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2900 3650 2700 3650
$Comp
L power:+2V5 #PWR014
U 1 1 5C408E07
P 2900 3350
F 0 "#PWR014" H 2900 3200 50  0001 C CNN
F 1 "+2V5" V 2915 3478 50  0000 L CNN
F 2 "" H 2900 3350 50  0001 C CNN
F 3 "" H 2900 3350 50  0001 C CNN
	1    2900 3350
	0    1    1    0   
$EndComp
$Comp
L power:-2V5 #PWR01
U 1 1 5C408E96
P 1850 3550
F 0 "#PWR01" H 1850 3650 50  0001 C CNN
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
L power:+4V #PWR04
U 1 1 5C40B0EF
P 1900 3250
F 0 "#PWR04" H 1900 3100 50  0001 C CNN
F 1 "+4V" V 1915 3378 50  0000 L CNN
F 2 "" H 1900 3250 50  0001 C CNN
F 3 "" H 1900 3250 50  0001 C CNN
	1    1900 3250
	0    -1   -1   0   
$EndComp
$Comp
L power:+4V #PWR05
U 1 1 5C40B106
P 1900 3350
F 0 "#PWR05" H 1900 3200 50  0001 C CNN
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
Text GLabel 2800 3450 2    50   Input ~ 0
Vref_8-15
Wire Wire Line
	2800 3450 2700 3450
Text GLabel 1950 3450 0    50   Input ~ 0
Vref_0-7
Wire Wire Line
	1950 3450 2200 3450
Text GLabel 2300 4450 2    50   Input ~ 0
D0
Text GLabel 2300 4550 2    50   Input ~ 0
~D0
Text GLabel 1450 4500 0    50   Input ~ 0
In0
Text GLabel 2300 4700 2    50   Input ~ 0
D1
Text GLabel 2300 4800 2    50   Input ~ 0
~D1
Text GLabel 1450 4750 0    50   Input ~ 0
In1
$Sheet
S 1600 4300 550  1300
U 5C4819A8
F0 "Ch 0-3" 50
F1 "quad.sch" 50
F2 "InA" I L 1600 4500 50 
F3 "InB" I L 1600 4750 50 
F4 "InC" I L 1600 5000 50 
F5 "InD" I L 1600 5250 50 
F6 "OutA" O R 2150 4450 50 
F7 "~OutA" O R 2150 4550 50 
F8 "OutB" O R 2150 4700 50 
F9 "~OutB" O R 2150 4800 50 
F10 "OutC" O R 2150 4950 50 
F11 "~OutC" O R 2150 5050 50 
F12 "OutD" O R 2150 5200 50 
F13 "~OutD" O R 2150 5300 50 
F14 "Vref" I L 1600 5450 50 
$EndSheet
Wire Wire Line
	2300 4450 2150 4450
Wire Wire Line
	2300 4550 2150 4550
Wire Wire Line
	2150 4700 2300 4700
Wire Wire Line
	2300 4800 2150 4800
Wire Wire Line
	1600 4750 1450 4750
Wire Wire Line
	1450 4500 1600 4500
Text GLabel 1450 5000 0    50   Input ~ 0
In2
Text GLabel 1450 5250 0    50   Input ~ 0
In3
Wire Wire Line
	1450 5250 1600 5250
Wire Wire Line
	1600 5000 1450 5000
Text GLabel 2300 4950 2    50   Input ~ 0
D2
Text GLabel 2300 5050 2    50   Input ~ 0
~D2
Text GLabel 2300 5200 2    50   Input ~ 0
D3
Text GLabel 2300 5300 2    50   Input ~ 0
~D3
Wire Wire Line
	2300 5300 2150 5300
Wire Wire Line
	2150 5200 2300 5200
Wire Wire Line
	2300 5050 2150 5050
Wire Wire Line
	2150 4950 2300 4950
$Sheet
S 3100 4300 550  1300
U 5C4C51E0
F0 "Ch 4-7" 50
F1 "quad.sch" 50
F2 "InA" I L 3100 4500 50 
F3 "InB" I L 3100 4750 50 
F4 "OutA" O R 3650 4450 50 
F5 "~OutA" O R 3650 4550 50 
F6 "OutB" O R 3650 4700 50 
F7 "~OutB" O R 3650 4800 50 
F8 "InC" I L 3100 5000 50 
F9 "InD" I L 3100 5250 50 
F10 "OutC" O R 3650 4950 50 
F11 "~OutC" O R 3650 5050 50 
F12 "OutD" O R 3650 5200 50 
F13 "~OutD" O R 3650 5300 50 
F14 "Vref" I L 3100 5450 50 
$EndSheet
Text GLabel 2950 4500 0    50   Input ~ 0
In4
Text GLabel 2950 4750 0    50   Input ~ 0
In5
Wire Wire Line
	2950 4500 3100 4500
Wire Wire Line
	2950 4750 3100 4750
Text GLabel 2950 5000 0    50   Input ~ 0
In6
Text GLabel 2950 5250 0    50   Input ~ 0
In7
Wire Wire Line
	3100 5000 2950 5000
Wire Wire Line
	3100 5250 2950 5250
Text GLabel 3800 4700 2    50   Input ~ 0
D5
Text GLabel 3800 4800 2    50   Input ~ 0
~D5
Text GLabel 3800 4450 2    50   Input ~ 0
D4
Text GLabel 3800 4550 2    50   Input ~ 0
~D4
Text GLabel 3800 5200 2    50   Input ~ 0
D7
Text GLabel 3800 5300 2    50   Input ~ 0
~D7
Text GLabel 3800 4950 2    50   Input ~ 0
D6
Text GLabel 3800 5050 2    50   Input ~ 0
~D6
Wire Wire Line
	3800 5300 3650 5300
Wire Wire Line
	3650 5200 3800 5200
Wire Wire Line
	3800 5050 3650 5050
Wire Wire Line
	3650 4950 3800 4950
Wire Wire Line
	3800 4800 3650 4800
Wire Wire Line
	3650 4700 3800 4700
Wire Wire Line
	3800 4550 3650 4550
Wire Wire Line
	3650 4450 3800 4450
$Sheet
S 4750 4300 550  1300
U 5C4E887D
F0 "Ch 8-11" 50
F1 "quad.sch" 50
F2 "InA" I L 4750 4500 50 
F3 "InB" I L 4750 4750 50 
F4 "OutA" O R 5300 4450 50 
F5 "~OutA" O R 5300 4550 50 
F6 "OutB" O R 5300 4700 50 
F7 "~OutB" O R 5300 4800 50 
F8 "InC" I L 4750 5000 50 
F9 "InD" I L 4750 5250 50 
F10 "OutC" O R 5300 4950 50 
F11 "~OutC" O R 5300 5050 50 
F12 "OutD" O R 5300 5200 50 
F13 "~OutD" O R 5300 5300 50 
F14 "Vref" I L 4750 5450 50 
$EndSheet
Text GLabel 4600 4500 0    50   Input ~ 0
In8
Text GLabel 4600 4750 0    50   Input ~ 0
In9
Wire Wire Line
	4600 4500 4750 4500
Wire Wire Line
	4600 4750 4750 4750
Text GLabel 4600 5000 0    50   Input ~ 0
In10
Text GLabel 4600 5250 0    50   Input ~ 0
In11
Wire Wire Line
	4750 5000 4600 5000
Wire Wire Line
	4750 5250 4600 5250
Text GLabel 5450 4700 2    50   Input ~ 0
D9
Text GLabel 5450 4800 2    50   Input ~ 0
~D9
Text GLabel 5450 4450 2    50   Input ~ 0
D8
Text GLabel 5450 4550 2    50   Input ~ 0
~D8
Text GLabel 5450 5200 2    50   Input ~ 0
D11
Text GLabel 5450 5300 2    50   Input ~ 0
~D11
Text GLabel 5450 4950 2    50   Input ~ 0
D10
Text GLabel 5450 5050 2    50   Input ~ 0
~D10
Wire Wire Line
	5450 5300 5300 5300
Wire Wire Line
	5300 5200 5450 5200
Wire Wire Line
	5450 5050 5300 5050
Wire Wire Line
	5300 4950 5450 4950
Wire Wire Line
	5450 4800 5300 4800
Wire Wire Line
	5300 4700 5450 4700
Wire Wire Line
	5450 4550 5300 4550
Wire Wire Line
	5300 4450 5450 4450
$Sheet
S 6500 4300 550  1300
U 5C4EBCE6
F0 "12-15" 50
F1 "quad.sch" 50
F2 "InA" I L 6500 4500 50 
F3 "InB" I L 6500 4750 50 
F4 "OutA" O R 7050 4450 50 
F5 "~OutA" O R 7050 4550 50 
F6 "OutB" O R 7050 4700 50 
F7 "~OutB" O R 7050 4800 50 
F8 "InC" I L 6500 5000 50 
F9 "InD" I L 6500 5250 50 
F10 "OutC" O R 7050 4950 50 
F11 "~OutC" O R 7050 5050 50 
F12 "OutD" O R 7050 5200 50 
F13 "~OutD" O R 7050 5300 50 
F14 "Vref" I L 6500 5450 50 
$EndSheet
Text GLabel 6350 4500 0    50   Input ~ 0
In12
Text GLabel 6350 4750 0    50   Input ~ 0
In13
Wire Wire Line
	6350 4500 6500 4500
Wire Wire Line
	6350 4750 6500 4750
Text GLabel 6350 5000 0    50   Input ~ 0
In14
Text GLabel 6350 5250 0    50   Input ~ 0
In15
Wire Wire Line
	6500 5000 6350 5000
Wire Wire Line
	6500 5250 6350 5250
Text GLabel 7200 4700 2    50   Input ~ 0
D13
Text GLabel 7200 4800 2    50   Input ~ 0
~D13
Text GLabel 7200 4450 2    50   Input ~ 0
D12
Text GLabel 7200 4550 2    50   Input ~ 0
~D12
Text GLabel 7200 5200 2    50   Input ~ 0
D15
Text GLabel 7200 5300 2    50   Input ~ 0
~D15
Text GLabel 7200 4950 2    50   Input ~ 0
D14
Text GLabel 7200 5050 2    50   Input ~ 0
~D14
Wire Wire Line
	7200 5300 7050 5300
Wire Wire Line
	7050 5200 7200 5200
Wire Wire Line
	7200 5050 7050 5050
Wire Wire Line
	7050 4950 7200 4950
Wire Wire Line
	7200 4800 7050 4800
Wire Wire Line
	7050 4700 7200 4700
Wire Wire Line
	7200 4550 7050 4550
Wire Wire Line
	7050 4450 7200 4450
Text GLabel 1450 5450 0    50   Input ~ 0
Vref_0-7
Text GLabel 2950 5450 0    50   Input ~ 0
Vref_0-7
Wire Wire Line
	3100 5450 2950 5450
Wire Wire Line
	1450 5450 1600 5450
Text GLabel 4600 5450 0    50   Input ~ 0
Vref_8-15
Text GLabel 6350 5450 0    50   Input ~ 0
Vref_8-15
Wire Wire Line
	6350 5450 6500 5450
Wire Wire Line
	4750 5450 4600 5450
Text Notes 1050 3950 0    50   ~ 0
For reference see:\nhttp://www.eevblog.com/forum/testgear/hacking-the-rigol-mso5000-series-oscilloscopes/msg2057401/#msg2057401 
$Comp
L Connector:Conn_01x17_Male J2
U 1 1 5C572E95
P 5700 2100
F 0 "J2" H 5673 2030 50  0000 R CNN
F 1 "input" H 5673 2121 50  0000 R CNN
F 2 "" H 5700 2100 50  0001 C CNN
F 3 "~" H 5700 2100 50  0001 C CNN
	1    5700 2100
	-1   0    0    1   
$EndComp
Text GLabel 5350 2900 0    50   Input ~ 0
In0
Text GLabel 5350 2800 0    50   Input ~ 0
In1
Wire Wire Line
	5500 2800 5350 2800
Wire Wire Line
	5350 2900 5500 2900
Text GLabel 5350 2700 0    50   Input ~ 0
In2
Text GLabel 5350 2600 0    50   Input ~ 0
In3
Wire Wire Line
	5350 2600 5500 2600
Wire Wire Line
	5500 2700 5350 2700
Text GLabel 5350 2500 0    50   Input ~ 0
In4
Text GLabel 5350 2400 0    50   Input ~ 0
In5
Wire Wire Line
	5350 2500 5500 2500
Wire Wire Line
	5350 2400 5500 2400
Text GLabel 5350 2300 0    50   Input ~ 0
In6
Text GLabel 5350 2200 0    50   Input ~ 0
In7
Wire Wire Line
	5500 2300 5350 2300
Wire Wire Line
	5500 2200 5350 2200
Text GLabel 5350 2000 0    50   Input ~ 0
In8
Text GLabel 5350 1900 0    50   Input ~ 0
In9
Wire Wire Line
	5350 2000 5500 2000
Wire Wire Line
	5350 1900 5500 1900
Text GLabel 5350 1800 0    50   Input ~ 0
In10
Text GLabel 5350 1700 0    50   Input ~ 0
In11
Wire Wire Line
	5500 1800 5350 1800
Wire Wire Line
	5500 1700 5350 1700
Text GLabel 5350 1600 0    50   Input ~ 0
In12
Text GLabel 5350 1500 0    50   Input ~ 0
In13
Wire Wire Line
	5350 1600 5500 1600
Wire Wire Line
	5350 1500 5500 1500
Text GLabel 5350 1400 0    50   Input ~ 0
In14
Text GLabel 5350 1300 0    50   Input ~ 0
In15
Wire Wire Line
	5500 1400 5350 1400
Wire Wire Line
	5500 1300 5350 1300
$Comp
L power:GND #PWR026
U 1 1 5C6055FB
P 5450 2100
F 0 "#PWR026" H 5450 1850 50  0001 C CNN
F 1 "GND" V 5455 1972 50  0000 R CNN
F 2 "" H 5450 2100 50  0001 C CNN
F 3 "" H 5450 2100 50  0001 C CNN
	1    5450 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 2100 5450 2100
$EndSCHEMATC
