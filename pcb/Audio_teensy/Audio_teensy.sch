EESchema Schematic File Version 4
LIBS:Audio_teensy-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "2019-11-01"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L asl_symbols:RJ45_pyControl J1
U 1 1 5DBB4566
P 2100 3500
F 0 "J1" H 2050 2950 50  0000 L CNN
F 1 "RJ45 Jack" H 1800 3050 50  0000 L CNN
F 2 "asl_footprints:RJ45_SMD" H 2150 2950 50  0001 C CNN
F 3 "~" V 2000 3475 50  0001 C CNN
	1    2100 3500
	1    0    0    1   
$EndComp
$Comp
L asl_symbols:AP7313 U2
U 1 1 5DBA0E92
P 6400 2750
F 0 "U2" H 6400 3100 50  0000 C CNN
F 1 "AP7313" H 6400 3000 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TSOT-23" H 6400 2650 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/diodes-incorporated/AP7313-18SAG-7/AP7313-18SAG-7DICT-ND/2270838" H 6400 2800 50  0001 C CNN
	1    6400 2750
	1    0    0    -1  
$EndComp
Text Label 4700 2350 2    50   ~ 0
3.3VDC
Wire Wire Line
	5700 3250 5800 3250
$Comp
L power:GND #PWR01
U 1 1 5DBA5A80
P 6400 3100
F 0 "#PWR01" H 6400 2850 50  0001 C CNN
F 1 "GND" H 6405 2927 50  0000 C CNN
F 2 "" H 6400 3100 50  0001 C CNN
F 3 "" H 6400 3100 50  0001 C CNN
	1    6400 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3100 6400 3000
Wire Wire Line
	6750 2650 6850 2650
Connection ~ 6850 2650
Wire Wire Line
	6850 2650 7300 2650
Connection ~ 6400 3100
Wire Wire Line
	6850 3100 6400 3100
Wire Wire Line
	6850 2800 6850 2650
$Comp
L Device:C C5
U 1 1 5DBA7323
P 6850 2950
F 0 "C5" H 6965 2996 50  0000 L CNN
F 1 "1.0µF" H 6965 2905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6888 2800 50  0001 C CNN
F 3 "~" H 6850 2950 50  0001 C CNN
	1    6850 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 2650 7300 3450
Text Label 7050 2650 0    50   ~ 0
1.8VDC
Wire Wire Line
	5700 3850 6250 3850
Wire Wire Line
	6250 3850 6250 3650
Wire Wire Line
	6550 3750 5950 3750
Wire Wire Line
	7300 5000 7300 5200
Wire Wire Line
	7300 5200 7400 5200
Wire Wire Line
	7400 5200 7400 5000
Wire Wire Line
	7400 5200 7500 5200
Connection ~ 7400 5200
Text Label 7500 5200 0    50   ~ 0
GND
$Comp
L asl_symbols:MonoJack J4
U 1 1 5DBB2449
P 8650 4800
F 0 "J4" V 8728 4670 50  0000 R CNN
F 1 "Mono Audio Jack" V 8637 4670 50  0000 R CNN
F 2 "asl_footprints:MonoJack" H 8650 4650 50  0001 C CNN
F 3 "https://www.digikey.com/products/en?keywords=CP-3523MJCT-ND" H 8650 4800 50  0001 C CNN
	1    8650 4800
	0    -1   -1   0   
$EndComp
$Comp
L asl_symbols:MonoJack J5
U 1 1 5DBB640C
P 9350 4800
F 0 "J5" V 9428 4670 50  0000 R CNN
F 1 "Mono Audio Jack" V 9337 4670 50  0000 R CNN
F 2 "asl_footprints:MonoJack" H 9350 4650 50  0001 C CNN
F 3 "https://www.digikey.com/products/en?keywords=CP-3523MJCT-ND" H 9350 4800 50  0001 C CNN
	1    9350 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8550 4600 8550 4500
Wire Wire Line
	8550 4500 7800 4500
Wire Wire Line
	8650 4600 8650 4400
Wire Wire Line
	8650 4400 7800 4400
Wire Wire Line
	9250 4600 9250 4500
Wire Wire Line
	9250 4500 8550 4500
Connection ~ 8550 4500
Wire Wire Line
	9350 4600 9350 4300
Wire Wire Line
	9350 4300 7800 4300
Wire Wire Line
	3700 4050 3600 4050
Text Label 3600 4050 2    50   ~ 0
BCLK
Wire Wire Line
	5700 3350 5850 3350
Wire Wire Line
	5850 3350 5850 4150
Wire Wire Line
	5850 4150 6550 4150
Wire Wire Line
	5700 3450 5800 3450
Wire Wire Line
	5800 3450 5800 4250
Wire Wire Line
	5800 4250 6550 4250
Wire Wire Line
	5700 4350 6550 4350
$Comp
L Device:C C4
U 1 1 5DBBA3E1
P 6050 4900
F 0 "C4" H 6165 4946 50  0000 L CNN
F 1 "150nF" H 6165 4855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6088 4750 50  0001 C CNN
F 3 "~" H 6050 4900 50  0001 C CNN
	1    6050 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4550 6050 4550
Wire Wire Line
	6050 4550 6050 4750
Wire Wire Line
	6050 5050 6050 5200
Wire Wire Line
	6550 4650 6450 4650
Wire Wire Line
	6450 4650 6450 4750
Wire Wire Line
	6550 4750 6450 4750
Connection ~ 6450 4750
Wire Wire Line
	6450 4750 6450 5200
Wire Wire Line
	6050 5200 6450 5200
Wire Wire Line
	7500 5200 7500 5000
Wire Wire Line
	7300 5200 6450 5200
Connection ~ 7300 5200
Connection ~ 6450 5200
Wire Wire Line
	5800 3250 5800 2650
Wire Wire Line
	5800 2650 6050 2650
$Comp
L Device:C C2
U 1 1 5DBC91D4
P 5150 2500
F 0 "C2" H 5036 2454 50  0000 R CNN
F 1 "100nF" H 5036 2545 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5188 2350 50  0001 C CNN
F 3 "~" H 5150 2500 50  0001 C CNN
	1    5150 2500
	1    0    0    1   
$EndComp
$Comp
L Device:C C3
U 1 1 5DBCD504
P 5600 2500
F 0 "C3" H 5486 2454 50  0000 R CNN
F 1 "100nF" H 5486 2545 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5638 2350 50  0001 C CNN
F 3 "~" H 5600 2500 50  0001 C CNN
	1    5600 2500
	1    0    0    1   
$EndComp
$Comp
L Device:C C1
U 1 1 5DBCE93B
P 4700 2500
F 0 "C1" H 4585 2454 50  0000 R CNN
F 1 "1.0µF" H 4585 2545 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4738 2350 50  0001 C CNN
F 3 "~" H 4700 2500 50  0001 C CNN
	1    4700 2500
	1    0    0    1   
$EndComp
Wire Wire Line
	5600 2650 5150 2650
Wire Wire Line
	5150 2650 4700 2650
Connection ~ 5150 2650
Wire Wire Line
	4700 2350 5150 2350
Wire Wire Line
	5150 2350 5600 2350
Connection ~ 5150 2350
Wire Wire Line
	5600 2350 5800 2350
Wire Wire Line
	7400 2350 7400 3450
Connection ~ 5600 2350
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 5DBD566A
P 7500 2350
F 0 "FB1" V 7263 2350 50  0000 C CNN
F 1 "Ferrite Bead" V 7354 2350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" V 7430 2350 50  0001 C CNN
F 3 "https://www.digikey.com/products/en?keywords=445-2166-1-ND" H 7500 2350 50  0001 C CNN
	1    7500 2350
	0    1    1    0   
$EndComp
Connection ~ 7400 2350
Wire Wire Line
	7600 2350 7600 3450
Wire Wire Line
	7600 3450 7500 3450
Wire Wire Line
	3700 3050 3550 3050
Text Label 3550 3050 2    50   ~ 0
GND
$Comp
L asl_symbols:DIN_Rail_Adapter DRA1
U 1 1 5DBB8672
P 5050 5650
F 0 "DRA1" H 5050 6005 50  0000 C CNN
F 1 "DIN_Rail_Adapter" H 5050 5914 50  0000 C CNN
F 2 "asl_footprints:DIN_Clip" H 5050 5450 50  0001 C CNN
F 3 "~" H 5050 5800 50  0001 C CNN
F 4 "1" H 5050 5823 50  0000 C CNN "DNP"
	1    5050 5650
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 5DBBC182
P 6250 3550
F 0 "R3" H 6318 3596 50  0000 L CNN
F 1 "2.2KΩ" H 6318 3505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6250 3550 50  0001 C CNN
F 3 "~" H 6250 3550 50  0001 C CNN
	1    6250 3550
	1    0    0    -1  
$EndComp
Connection ~ 6250 3650
Wire Wire Line
	6250 3650 6550 3650
$Comp
L Device:R_Small_US R2
U 1 1 5DBBDF2A
P 5950 3650
F 0 "R2" H 6018 3696 50  0000 L CNN
F 1 "2.2KΩ" H 6018 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5950 3650 50  0001 C CNN
F 3 "~" H 5950 3650 50  0001 C CNN
	1    5950 3650
	1    0    0    -1  
$EndComp
Connection ~ 5950 3750
Wire Wire Line
	5950 3750 5700 3750
Wire Wire Line
	5950 3550 5950 3450
Wire Wire Line
	5950 3450 6250 3450
Wire Wire Line
	5950 3450 5950 3250
Wire Wire Line
	5950 3250 5800 3250
Connection ~ 5950 3450
Connection ~ 5800 3250
$Comp
L Device:R_Small_US R1
U 1 1 5DBD3E4C
P 3400 4350
F 0 "R1" H 3468 4396 50  0000 L CNN
F 1 "100Ω" H 3468 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3400 4350 50  0001 C CNN
F 3 "~" H 3400 4350 50  0001 C CNN
	1    3400 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4250 3700 4250
Wire Wire Line
	3400 4450 3400 4550
Text Label 3400 4550 2    50   ~ 0
MCLK
Wire Wire Line
	6550 3950 6500 3950
Text Label 6500 3950 2    50   ~ 0
MCLK
Wire Wire Line
	6550 4050 6500 4050
Text Label 6500 4050 2    50   ~ 0
BCLK
Wire Wire Line
	2550 3250 2600 3250
Text Label 2600 3250 0    50   ~ 0
GND
Wire Wire Line
	2550 3150 3700 3150
Wire Wire Line
	2550 3450 2950 3450
Wire Wire Line
	2950 3450 2950 3250
Wire Wire Line
	2950 3250 3700 3250
Wire Wire Line
	2550 3650 2650 3650
Text Label 2650 3650 0    50   ~ 0
5VDC
Wire Wire Line
	5700 3050 5700 2900
Text Label 5700 2900 2    50   ~ 0
5VDC
Wire Wire Line
	5800 2650 5800 2350
Connection ~ 5800 2650
Connection ~ 5800 2350
Wire Wire Line
	5800 2350 7400 2350
Text Label 5950 3250 0    50   ~ 0
3.3VDC
$Comp
L Device:C C6
U 1 1 5DBF5F5D
P 8000 2500
F 0 "C6" H 7886 2454 50  0000 R CNN
F 1 "2.2.µF" H 7886 2545 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8038 2350 50  0001 C CNN
F 3 "~" H 8000 2500 50  0001 C CNN
	1    8000 2500
	1    0    0    1   
$EndComp
$Comp
L Device:C C7
U 1 1 5DBF64C7
P 8500 2500
F 0 "C7" H 8386 2454 50  0000 R CNN
F 1 "100nF" H 8386 2545 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8538 2350 50  0001 C CNN
F 3 "~" H 8500 2500 50  0001 C CNN
	1    8500 2500
	1    0    0    1   
$EndComp
Wire Wire Line
	7600 2350 8000 2350
Connection ~ 7600 2350
Wire Wire Line
	8500 2350 8000 2350
Connection ~ 8000 2350
Wire Wire Line
	8000 2650 8500 2650
Text Label 8250 2650 3    50   ~ 0
GND
Text Label 5300 2650 3    50   ~ 0
GND
$Comp
L Connector:Conn_01x14_Female J3
U 1 1 5DC27049
P 3600 5600
F 0 "J3" H 3628 5576 50  0000 L CNN
F 1 "Female Header" H 3628 5485 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x14_P2.54mm_Vertical_SMD_Pin1Left" H 3600 5600 50  0001 C CNN
F 3 "https://www.digikey.com/products/en?keywords=SSM-114-L-SV-BE-ND" H 3600 5600 50  0001 C CNN
	1    3600 5600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x14_Female J2
U 1 1 5DC200BF
P 2550 5600
F 0 "J2" H 2578 5576 50  0000 L CNN
F 1 "Female Header" H 2578 5485 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x14_P2.54mm_Vertical_SMD_Pin1Left" H 2550 5600 50  0001 C CNN
F 3 "https://www.digikey.com/products/en?keywords=SSM-114-L-SV-BE-ND" H 2550 5600 50  0001 C CNN
	1    2550 5600
	1    0    0    -1  
$EndComp
$Comp
L asl_symbols:Teensy3.2_smd U1
U 1 1 5DC565C7
P 4700 3900
F 0 "U1" H 4000 4900 60  0000 C CNN
F 1 "Teensy3.2_smd" H 5200 3100 60  0000 C CNN
F 2 "asl_footprints:Teensy30_31_32_LC_SMD" H 4750 5050 60  0001 C CNN
F 3 "https://www.pjrc.com/teensy/teensy31.html" H 4700 3650 60  0001 C CNN
F 4 "1" H 4700 3900 50  0001 C CNN "DNP"
	1    4700 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 5000 7600 5200
Wire Wire Line
	7600 5200 7500 5200
Connection ~ 7500 5200
$Comp
L asl_symbols:SGTL5000 U3
U 1 1 5DBB136F
P 7150 4200
F 0 "U3" H 6700 4900 50  0000 C CNN
F 1 "SGTL5000" H 6850 3450 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-32-1EP_5x5mm_P0.5mm_EP3.1x3.1mm" H 7200 3150 50  0001 C CNN
F 3 "https://www.digikey.com/products/en?keywords=SGTL5000XNAA3R2CT-ND" H 6800 4250 50  0001 C CNN
	1    7150 4200
	1    0    0    -1  
$EndComp
NoConn ~ 3700 3350
NoConn ~ 3700 3450
NoConn ~ 3700 3550
NoConn ~ 3700 3650
NoConn ~ 3700 3750
NoConn ~ 3700 3850
NoConn ~ 3700 3950
NoConn ~ 3700 4150
NoConn ~ 3700 4350
NoConn ~ 5700 4250
NoConn ~ 5700 4150
NoConn ~ 5700 4050
NoConn ~ 5700 3950
NoConn ~ 5700 3650
NoConn ~ 5700 3550
NoConn ~ 5700 3150
NoConn ~ 2550 3350
NoConn ~ 2550 3550
NoConn ~ 2550 3750
NoConn ~ 2550 3850
Text Notes 4400 1750 0    50   ~ 0
Based off of PJRC’s \nAudio Adapter Board for Teensy\nRev C Schematic\nhttps://www.pjrc.com/store/teensy3_audio.html
$EndSCHEMATC
