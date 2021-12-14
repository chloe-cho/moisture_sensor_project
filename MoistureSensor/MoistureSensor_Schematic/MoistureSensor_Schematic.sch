EESchema Schematic File Version 4
EELAYER 30 0
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
$Comp
L power:+3.3V #PWR?
U 1 1 61B7FD62
P 7550 2050
F 0 "#PWR?" H 7550 1900 50  0001 C CNN
F 1 "+3.3V" H 7565 2223 50  0000 C CNN
F 2 "" H 7550 2050 50  0001 C CNN
F 3 "" H 7550 2050 50  0001 C CNN
	1    7550 2050
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N2219 Q?
U 1 1 61B818D4
P 8650 4000
F 0 "Q?" H 8841 4046 50  0001 L CNN
F 1 "TIP 120" H 8841 4000 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-39-3" H 8850 3925 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 8650 4000 50  0001 L CNN
	1    8650 4000
	-1   0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC M?
U 1 1 61B82511
P 8550 3100
F 0 "M?" H 8708 3096 50  0001 L CNN
F 1 "Motor_DC_PUMP" H 8708 3050 50  0000 L CNN
F 2 "" H 8550 3010 50  0001 C CNN
F 3 "~" H 8550 3010 50  0001 C CNN
	1    8550 3100
	1    0    0    -1  
$EndComp
$Comp
L Sensor:CHT11 U?
U 1 1 61B830FE
P 6950 3150
F 0 "U?" H 6707 3196 50  0001 R CNN
F 1 "Moisture_Sensor" H 6706 3150 50  0000 R CNN
F 2 "Sensor:Aosong_DHT11_5.5x12.0_P2.54mm" H 6950 2750 50  0001 C CNN
F 3 "http://aosong.com/en/products-21.html" H 7100 3400 50  0001 C CNN
	1    6950 3150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7550 2050 7550 2400
Wire Wire Line
	7550 2400 6950 2400
Wire Wire Line
	6950 2400 6950 2850
Wire Wire Line
	6950 3450 6950 4300
Wire Wire Line
	6950 4300 7600 4300
Wire Wire Line
	8550 4200 8550 4300
Wire Wire Line
	8550 4300 7600 4300
Connection ~ 7600 4300
Wire Wire Line
	7550 2400 8550 2400
Wire Wire Line
	8550 2400 8550 2900
Connection ~ 7550 2400
Wire Wire Line
	8550 3400 8550 3800
Text GLabel 9400 4000 2    50   Input ~ 0
PIN_D3
Wire Wire Line
	8850 4000 9400 4000
Text GLabel 6150 3150 0    50   Input ~ 0
PIN_A0
Wire Wire Line
	6150 3150 6650 3150
Text Notes 7350 7500 0    50   ~ 0
Moisture Sensor Schematic
Text Notes 8150 7650 0    50   ~ 0
12/13/2021
$Comp
L ParticlePhotonSchematic:Particle_Photon_Board U?
U 1 1 61B94720
P 2500 3850
F 0 "U?" H 2500 3850 50  0001 C CNN
F 1 "Particle_Photon_Board" H 2975 4873 50  0000 C CNN
F 2 "" H 2500 3850 50  0001 C CNN
F 3 "" H 2500 3850 50  0001 C CNN
	1    2500 3850
	1    0    0    -1  
$EndComp
Text GLabel 3750 3800 2    50   Input ~ 0
PIN_D3
Wire Wire Line
	3400 3800 3750 3800
Text GLabel 2050 4100 0    50   Input ~ 0
PIN_A0
Wire Wire Line
	2050 4100 2550 4100
$Comp
L power:+3.3V #PWR?
U 1 1 61B95DC6
P 3800 2750
F 0 "#PWR?" H 3800 2600 50  0001 C CNN
F 1 "+3.3V" H 3815 2923 50  0000 C CNN
F 2 "" H 3800 2750 50  0001 C CNN
F 3 "" H 3800 2750 50  0001 C CNN
	1    3800 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3000 3800 3000
Wire Wire Line
	3800 3000 3800 2750
$Comp
L power:GND #PWR?
U 1 1 61B97270
P 4400 3550
F 0 "#PWR?" H 4400 3300 50  0001 C CNN
F 1 "GND" H 4405 3377 50  0000 C CNN
F 2 "" H 4400 3550 50  0001 C CNN
F 3 "" H 4400 3550 50  0001 C CNN
	1    4400 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3300 4400 3300
Wire Wire Line
	4400 3300 4400 3550
$Comp
L power:GND #PWR?
U 1 1 61B98181
P 7600 4800
F 0 "#PWR?" H 7600 4550 50  0001 C CNN
F 1 "GND" H 7605 4627 50  0000 C CNN
F 2 "" H 7600 4800 50  0001 C CNN
F 3 "" H 7600 4800 50  0001 C CNN
	1    7600 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4300 7600 4800
$EndSCHEMATC
