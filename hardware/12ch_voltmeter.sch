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
L Raspi_Pico:Pico U5
U 1 1 618FDFE7
P 7700 3000
F 0 "U5" H 7700 4215 50  0000 C CNN
F 1 "Pico" H 7700 4124 50  0000 C CNN
F 2 "RPi_Pico:RPi_Pico_SMD_TH" V 7700 3000 50  0001 C CNN
F 3 "" H 7700 3000 50  0001 C CNN
	1    7700 3000
	1    0    0    -1  
$EndComp
$Comp
L Analog_ADC:ADS1115IDGS U2
U 1 1 618FE8A0
P 4700 2950
F 0 "U2" H 4700 3631 50  0000 C CNN
F 1 "ADS1115IDGS" H 4100 3250 50  0000 C CNN
F 2 "Package_SO:TSSOP-10_3x3mm_P0.5mm" H 4700 2450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ads1113.pdf" H 4650 2050 50  0001 C CNN
	1    4700 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3150 5850 3150
Wire Wire Line
	5850 3150 5850 2950
Wire Wire Line
	5850 2950 5100 2950
Wire Wire Line
	5750 1650 5750 3050
Wire Wire Line
	5100 3050 5750 3050
Connection ~ 5750 3050
Wire Wire Line
	5750 3050 7000 3050
Wire Wire Line
	5850 1550 5850 2950
Connection ~ 5850 2950
$Comp
L oled:SH1106 U1
U 1 1 61901E68
P 4700 1550
F 0 "U1" H 4370 1646 50  0000 R CNN
F 1 "SH1106" H 4370 1555 50  0000 R CNN
F 2 "" H 4700 1050 50  0001 C CNN
F 3 "" H 4650 650 50  0001 C CNN
	1    4700 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R25
U 1 1 61902C97
P 5200 1200
F 0 "R25" H 5000 1350 50  0000 L CNN
F 1 "10K" H 5000 1100 50  0000 L CNN
F 2 "" V 5130 1200 50  0001 C CNN
F 3 "~" H 5200 1200 50  0001 C CNN
	1    5200 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1550 5200 1550
Wire Wire Line
	5100 1650 5400 1650
$Comp
L Device:R R26
U 1 1 61906BE0
P 5400 1200
F 0 "R26" H 5470 1246 50  0000 L CNN
F 1 "10K" H 5470 1155 50  0000 L CNN
F 2 "" V 5330 1200 50  0001 C CNN
F 3 "~" H 5400 1200 50  0001 C CNN
	1    5400 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1350 5200 1550
Connection ~ 5200 1550
Wire Wire Line
	5200 1550 5850 1550
Wire Wire Line
	5400 1350 5400 1650
Connection ~ 5400 1650
Wire Wire Line
	5400 1650 5750 1650
Wire Wire Line
	5400 1050 5400 950 
Wire Wire Line
	5400 950  5200 950 
Wire Wire Line
	4700 950  4700 1050
Wire Wire Line
	5200 1050 5200 950 
Connection ~ 5200 950 
Wire Wire Line
	5200 950  4700 950 
$Comp
L Analog_ADC:ADS1115IDGS U3
U 1 1 6190777B
P 4700 4100
F 0 "U3" H 4200 4550 50  0000 C CNN
F 1 "ADS1115IDGS" H 4100 4450 50  0000 C CNN
F 2 "Package_SO:TSSOP-10_3x3mm_P0.5mm" H 4700 3600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ads1113.pdf" H 4650 3200 50  0001 C CNN
	1    4700 4100
	1    0    0    -1  
$EndComp
$Comp
L Analog_ADC:ADS1115IDGS U4
U 1 1 6190A491
P 4700 5300
F 0 "U4" H 4250 5750 50  0000 C CNN
F 1 "ADS1115IDGS" H 4100 5650 50  0000 C CNN
F 2 "Package_SO:TSSOP-10_3x3mm_P0.5mm" H 4700 4800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ads1113.pdf" H 4650 4400 50  0001 C CNN
	1    4700 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 6190ABDC
P 4700 2000
F 0 "#PWR04" H 4700 1750 50  0001 C CNN
F 1 "GND" H 4705 1827 50  0001 C CNN
F 2 "" H 4700 2000 50  0001 C CNN
F 3 "" H 4700 2000 50  0001 C CNN
	1    4700 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 6190B829
P 4700 3400
F 0 "#PWR05" H 4700 3150 50  0001 C CNN
F 1 "GND" H 4705 3227 50  0001 C CNN
F 2 "" H 4700 3400 50  0001 C CNN
F 3 "" H 4700 3400 50  0001 C CNN
	1    4700 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1950 4700 2000
Wire Wire Line
	4700 3350 4700 3400
Wire Wire Line
	4700 4500 4700 4550
$Comp
L power:GND #PWR07
U 1 1 6190CDDB
P 4700 5750
F 0 "#PWR07" H 4700 5500 50  0001 C CNN
F 1 "GND" H 4705 5577 50  0001 C CNN
F 2 "" H 4700 5750 50  0001 C CNN
F 3 "" H 4700 5750 50  0001 C CNN
	1    4700 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 5700 4700 5750
Wire Wire Line
	5750 3050 5750 4200
Wire Wire Line
	5750 4200 5100 4200
Wire Wire Line
	5750 4200 5750 5400
Wire Wire Line
	5750 5400 5100 5400
Connection ~ 5750 4200
Wire Wire Line
	5850 3150 5850 4100
Wire Wire Line
	5850 4100 5100 4100
Connection ~ 5850 3150
Wire Wire Line
	5850 4100 5850 5300
Wire Wire Line
	5850 5300 5300 5300
Connection ~ 5850 4100
$Comp
L Switch:SW_DIP_x01 SW1
U 1 1 6190F197
P 6600 4550
F 0 "SW1" V 6554 4680 50  0000 L CNN
F 1 "CELL VOLTAGE / POTENTIAL " V 6645 4680 50  0000 L CNN
F 2 "" H 6600 4550 50  0001 C CNN
F 3 "~" H 6600 4550 50  0001 C CNN
	1    6600 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	7000 3850 6600 3850
Wire Wire Line
	6600 3850 6600 4250
$Comp
L power:GND #PWR08
U 1 1 6190FFF7
P 6600 4850
F 0 "#PWR08" H 6600 4600 50  0001 C CNN
F 1 "GND" H 6605 4677 50  0001 C CNN
F 2 "" H 6600 4850 50  0001 C CNN
F 3 "" H 6600 4850 50  0001 C CNN
	1    6600 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R22
U 1 1 61911D40
P 3350 3350
F 0 "R22" H 3300 3150 50  0000 L CNN
F 1 "2K7" V 3350 3250 50  0000 L CNN
F 2 "" V 3280 3350 50  0001 C CNN
F 3 "~" H 3350 3350 50  0001 C CNN
	1    3350 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 61912290
P 3200 3350
F 0 "R19" H 3150 3150 50  0000 L CNN
F 1 "2K7" V 3200 3250 50  0000 L CNN
F 2 "" V 3130 3350 50  0001 C CNN
F 3 "~" H 3200 3350 50  0001 C CNN
	1    3200 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 61912480
P 3050 3350
F 0 "R16" H 2900 3150 50  0000 L CNN
F 1 "2K7" V 3050 3250 50  0000 L CNN
F 2 "" V 2980 3350 50  0001 C CNN
F 3 "~" H 3050 3350 50  0001 C CNN
	1    3050 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 61912A38
P 2900 3350
F 0 "R13" H 2800 3150 50  0000 L CNN
F 1 "2K7" V 2900 3250 50  0000 L CNN
F 2 "" V 2830 3350 50  0001 C CNN
F 3 "~" H 2900 3350 50  0001 C CNN
	1    2900 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 61912E11
P 2550 3150
F 0 "R4" V 2500 3000 50  0000 C CNN
F 1 "47K" V 2550 3150 50  0000 C CNN
F 2 "" V 2480 3150 50  0001 C CNN
F 3 "~" H 2550 3150 50  0001 C CNN
	1    2550 3150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 61913472
P 2550 3050
F 0 "R3" V 2500 2900 50  0000 C CNN
F 1 "47K" V 2550 3050 50  0000 C CNN
F 2 "" V 2480 3050 50  0001 C CNN
F 3 "~" H 2550 3050 50  0001 C CNN
	1    2550 3050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 619135FF
P 2550 2950
F 0 "R2" V 2500 2800 50  0000 C CNN
F 1 "47K" V 2550 2950 50  0000 C CNN
F 2 "" V 2480 2950 50  0001 C CNN
F 3 "~" H 2550 2950 50  0001 C CNN
	1    2550 2950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 61913825
P 2550 2850
F 0 "R1" V 2500 2700 50  0000 C CNN
F 1 "47K" V 2550 2850 50  0000 C CNN
F 2 "" V 2480 2850 50  0001 C CNN
F 3 "~" H 2550 2850 50  0001 C CNN
	1    2550 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2900 3500 3050 3500
Wire Wire Line
	3050 3500 3200 3500
Connection ~ 3050 3500
Wire Wire Line
	3200 3500 3350 3500
Connection ~ 3200 3500
$Comp
L power:GND #PWR01
U 1 1 61914F78
P 3050 3500
F 0 "#PWR01" H 3050 3250 50  0001 C CNN
F 1 "GND" H 3055 3327 50  0001 C CNN
F 2 "" H 3050 3500 50  0001 C CNN
F 3 "" H 3050 3500 50  0001 C CNN
	1    3050 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3050 3200 3050
Wire Wire Line
	4300 2950 3050 2950
Wire Wire Line
	4300 2850 2900 2850
Wire Wire Line
	3350 3150 3350 3200
Wire Wire Line
	3200 3050 3200 3200
Wire Wire Line
	3050 2950 3050 3200
Wire Wire Line
	2900 2850 2900 3200
Wire Wire Line
	2700 3150 3350 3150
Connection ~ 3350 3150
Wire Wire Line
	3350 3150 4300 3150
Wire Wire Line
	2700 3050 3200 3050
Connection ~ 3200 3050
Wire Wire Line
	2700 2950 3050 2950
Connection ~ 3050 2950
Wire Wire Line
	2700 2850 2900 2850
Connection ~ 2900 2850
$Comp
L Device:R R23
U 1 1 619504EA
P 3350 4500
F 0 "R23" H 3300 4300 50  0000 L CNN
F 1 "2K7" V 3350 4400 50  0000 L CNN
F 2 "" V 3280 4500 50  0001 C CNN
F 3 "~" H 3350 4500 50  0001 C CNN
	1    3350 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 619504F4
P 3200 4500
F 0 "R20" H 3150 4300 50  0000 L CNN
F 1 "2K7" V 3200 4400 50  0000 L CNN
F 2 "" V 3130 4500 50  0001 C CNN
F 3 "~" H 3200 4500 50  0001 C CNN
	1    3200 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 619504FE
P 3050 4500
F 0 "R17" H 2900 4300 50  0000 L CNN
F 1 "2K7" V 3050 4400 50  0000 L CNN
F 2 "" V 2980 4500 50  0001 C CNN
F 3 "~" H 3050 4500 50  0001 C CNN
	1    3050 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 61950508
P 2900 4500
F 0 "R14" H 2800 4300 50  0000 L CNN
F 1 "2K7" V 2900 4400 50  0000 L CNN
F 2 "" V 2830 4500 50  0001 C CNN
F 3 "~" H 2900 4500 50  0001 C CNN
	1    2900 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 61950512
P 2550 4300
F 0 "R8" V 2500 4150 50  0000 C CNN
F 1 "47K" V 2550 4300 50  0000 C CNN
F 2 "" V 2480 4300 50  0001 C CNN
F 3 "~" H 2550 4300 50  0001 C CNN
	1    2550 4300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 6195051C
P 2550 4200
F 0 "R7" V 2500 4050 50  0000 C CNN
F 1 "47K" V 2550 4200 50  0000 C CNN
F 2 "" V 2480 4200 50  0001 C CNN
F 3 "~" H 2550 4200 50  0001 C CNN
	1    2550 4200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 61950526
P 2550 4100
F 0 "R6" V 2500 3950 50  0000 C CNN
F 1 "47K" V 2550 4100 50  0000 C CNN
F 2 "" V 2480 4100 50  0001 C CNN
F 3 "~" H 2550 4100 50  0001 C CNN
	1    2550 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 61950530
P 2550 4000
F 0 "R5" V 2500 3850 50  0000 C CNN
F 1 "47K" V 2550 4000 50  0000 C CNN
F 2 "" V 2480 4000 50  0001 C CNN
F 3 "~" H 2550 4000 50  0001 C CNN
	1    2550 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2900 4650 3050 4650
Wire Wire Line
	3050 4650 3200 4650
Connection ~ 3050 4650
Wire Wire Line
	3200 4650 3350 4650
Connection ~ 3200 4650
$Comp
L power:GND #PWR02
U 1 1 6195053F
P 3050 4650
F 0 "#PWR02" H 3050 4400 50  0001 C CNN
F 1 "GND" H 3055 4477 50  0001 C CNN
F 2 "" H 3050 4650 50  0001 C CNN
F 3 "" H 3050 4650 50  0001 C CNN
	1    3050 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4200 3200 4200
Wire Wire Line
	4300 4100 3050 4100
Wire Wire Line
	4300 4000 2900 4000
Wire Wire Line
	3350 4300 3350 4350
Wire Wire Line
	3200 4200 3200 4350
Wire Wire Line
	3050 4100 3050 4350
Wire Wire Line
	2900 4000 2900 4350
Wire Wire Line
	2700 4300 3350 4300
Connection ~ 3350 4300
Wire Wire Line
	3350 4300 4300 4300
Wire Wire Line
	2700 4200 3200 4200
Connection ~ 3200 4200
Wire Wire Line
	2700 4100 3050 4100
Connection ~ 3050 4100
Wire Wire Line
	2700 4000 2900 4000
Connection ~ 2900 4000
$Comp
L Device:R R24
U 1 1 61956EC8
P 3350 5700
F 0 "R24" H 3300 5500 50  0000 L CNN
F 1 "2K7" V 3350 5600 50  0000 L CNN
F 2 "" V 3280 5700 50  0001 C CNN
F 3 "~" H 3350 5700 50  0001 C CNN
	1    3350 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 61956ED2
P 3200 5700
F 0 "R21" H 3150 5500 50  0000 L CNN
F 1 "2K7" V 3200 5600 50  0000 L CNN
F 2 "" V 3130 5700 50  0001 C CNN
F 3 "~" H 3200 5700 50  0001 C CNN
	1    3200 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 61956EDC
P 3050 5700
F 0 "R18" H 2900 5500 50  0000 L CNN
F 1 "2K7" V 3050 5600 50  0000 L CNN
F 2 "" V 2980 5700 50  0001 C CNN
F 3 "~" H 3050 5700 50  0001 C CNN
	1    3050 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 61956EE6
P 2900 5700
F 0 "R15" H 2800 5500 50  0000 L CNN
F 1 "2K7" V 2900 5600 50  0000 L CNN
F 2 "" V 2830 5700 50  0001 C CNN
F 3 "~" H 2900 5700 50  0001 C CNN
	1    2900 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 61956EF0
P 2550 5500
F 0 "R12" V 2500 5350 50  0000 C CNN
F 1 "47K" V 2550 5500 50  0000 C CNN
F 2 "" V 2480 5500 50  0001 C CNN
F 3 "~" H 2550 5500 50  0001 C CNN
	1    2550 5500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R11
U 1 1 61956EFA
P 2550 5400
F 0 "R11" V 2500 5250 50  0000 C CNN
F 1 "47K" V 2550 5400 50  0000 C CNN
F 2 "" V 2480 5400 50  0001 C CNN
F 3 "~" H 2550 5400 50  0001 C CNN
	1    2550 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 61956F04
P 2550 5300
F 0 "R10" V 2500 5150 50  0000 C CNN
F 1 "47K" V 2550 5300 50  0000 C CNN
F 2 "" V 2480 5300 50  0001 C CNN
F 3 "~" H 2550 5300 50  0001 C CNN
	1    2550 5300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R9
U 1 1 61956F0E
P 2550 5200
F 0 "R9" V 2500 5050 50  0000 C CNN
F 1 "47K" V 2550 5200 50  0000 C CNN
F 2 "" V 2480 5200 50  0001 C CNN
F 3 "~" H 2550 5200 50  0001 C CNN
	1    2550 5200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2900 5850 3050 5850
Wire Wire Line
	3050 5850 3200 5850
Connection ~ 3050 5850
Wire Wire Line
	3200 5850 3350 5850
Connection ~ 3200 5850
$Comp
L power:GND #PWR03
U 1 1 61956F1D
P 3050 5850
F 0 "#PWR03" H 3050 5600 50  0001 C CNN
F 1 "GND" H 3055 5677 50  0001 C CNN
F 2 "" H 3050 5850 50  0001 C CNN
F 3 "" H 3050 5850 50  0001 C CNN
	1    3050 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 5400 3200 5400
Wire Wire Line
	4300 5300 3050 5300
Wire Wire Line
	4300 5200 2900 5200
Wire Wire Line
	3350 5500 3350 5550
Wire Wire Line
	3200 5400 3200 5550
Wire Wire Line
	3050 5300 3050 5550
Wire Wire Line
	2900 5200 2900 5550
Wire Wire Line
	2700 5500 3350 5500
Connection ~ 3350 5500
Wire Wire Line
	3350 5500 4300 5500
Wire Wire Line
	2700 5400 3200 5400
Connection ~ 3200 5400
Wire Wire Line
	2700 5300 3050 5300
Connection ~ 3050 5300
Wire Wire Line
	2700 5200 2900 5200
Connection ~ 2900 5200
Connection ~ 5400 950 
Wire Wire Line
	8400 2350 8950 2350
Wire Wire Line
	8950 2350 8950 950 
Wire Wire Line
	5400 950  5950 950 
$Comp
L Connector:Conn_01x13_Male J1
U 1 1 61925D09
P 1750 4200
F 0 "J1" H 1858 4981 50  0000 C CNN
F 1 "Conn_battery_sense" V 1500 4450 50  0000 C CNN
F 2 "" H 1750 4200 50  0001 C CNN
F 3 "~" H 1750 4200 50  0001 C CNN
	1    1750 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2850 2000 2850
Wire Wire Line
	2000 2850 2000 3600
Wire Wire Line
	2000 3600 1950 3600
Wire Wire Line
	2400 2950 2050 2950
Wire Wire Line
	2050 2950 2050 3700
Wire Wire Line
	2050 3700 1950 3700
Wire Wire Line
	2400 3050 2100 3050
Wire Wire Line
	2100 3050 2100 3800
Wire Wire Line
	2100 3800 1950 3800
Wire Wire Line
	2400 3150 2150 3150
Wire Wire Line
	2150 3150 2150 3900
Wire Wire Line
	2150 3900 1950 3900
Wire Wire Line
	2400 4000 1950 4000
Wire Wire Line
	2400 4100 1950 4100
Wire Wire Line
	2400 4200 1950 4200
Wire Wire Line
	2400 4300 1950 4300
Wire Wire Line
	1950 4400 2200 4400
Wire Wire Line
	2200 4400 2200 5200
Wire Wire Line
	2200 5200 2400 5200
Wire Wire Line
	1950 4500 2150 4500
Wire Wire Line
	2150 4500 2150 5300
Wire Wire Line
	2150 5300 2400 5300
Wire Wire Line
	1950 4600 2100 4600
Wire Wire Line
	2100 4600 2100 5400
Wire Wire Line
	2100 5400 2400 5400
Wire Wire Line
	1950 4700 2050 4700
Wire Wire Line
	2050 4700 2050 5500
Wire Wire Line
	2050 5500 2400 5500
Wire Wire Line
	5100 3150 5200 3150
Wire Wire Line
	5200 3150 5200 3400
Wire Wire Line
	5200 3400 4700 3400
Connection ~ 4700 3400
Wire Wire Line
	4700 2450 5950 2450
Wire Wire Line
	5950 2450 5950 950 
Connection ~ 5950 950 
Wire Wire Line
	5950 950  8950 950 
Wire Wire Line
	4700 3600 5300 3600
Wire Wire Line
	5950 3600 5950 2450
Connection ~ 5950 2450
Wire Wire Line
	4700 4800 5950 4800
Wire Wire Line
	5950 4800 5950 3600
Connection ~ 5950 3600
Wire Wire Line
	5300 4300 5300 3600
Wire Wire Line
	5100 4300 5300 4300
Connection ~ 5300 3600
Wire Wire Line
	5300 3600 5950 3600
Wire Wire Line
	5100 5500 5300 5500
Wire Wire Line
	5300 5500 5300 5300
Connection ~ 5300 5300
Wire Wire Line
	5300 5300 5100 5300
Text Notes 4000 3400 0    50   ~ 0
ADDR = 0x48
Text Notes 4000 4550 0    50   ~ 0
ADDR = 0x49\n
Text Notes 4000 5750 0    50   ~ 0
ADDR = 0x4B
Text Notes 6850 4750 0    50   ~ 0
0: display cell voltages\n
Text Notes 6850 4850 0    50   ~ 0
1: display voltage against ground\n
Text Notes 3900 2000 0    50   ~ 0
ADDR = 0x3C
Wire Wire Line
	1950 4800 2000 4800
Wire Wire Line
	2000 4800 2000 5850
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 61A2B02E
P 5250 6450
F 0 "J?" H 5358 6731 50  0000 C CNN
F 1 "I2C bus" H 5350 6050 50  0000 C CNN
F 2 "" H 5250 6450 50  0001 C CNN
F 3 "~" H 5250 6450 50  0001 C CNN
	1    5250 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 6350 5750 6350
Wire Wire Line
	5750 6350 5750 5400
Connection ~ 5750 5400
Wire Wire Line
	5450 6450 5850 6450
Wire Wire Line
	5850 6450 5850 5300
Connection ~ 5850 5300
Wire Wire Line
	5450 6650 5950 6650
Wire Wire Line
	5950 6650 5950 4800
Connection ~ 5950 4800
$Comp
L power:GND #PWR?
U 1 1 61A3D7A2
P 2000 5850
F 0 "#PWR?" H 2000 5600 50  0001 C CNN
F 1 "GND" H 2005 5677 50  0001 C CNN
F 2 "" H 2000 5850 50  0001 C CNN
F 3 "" H 2000 5850 50  0001 C CNN
	1    2000 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61A3DC19
P 5750 6800
F 0 "#PWR?" H 5750 6550 50  0001 C CNN
F 1 "GND" H 5755 6627 50  0001 C CNN
F 2 "" H 5750 6800 50  0001 C CNN
F 3 "" H 5750 6800 50  0001 C CNN
	1    5750 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 6550 5750 6550
Wire Wire Line
	5750 6550 5750 6800
$Comp
L power:GND #PWR?
U 1 1 61A44218
P 4700 4550
F 0 "#PWR?" H 4700 4300 50  0001 C CNN
F 1 "GND" H 4705 4377 50  0001 C CNN
F 2 "" H 4700 4550 50  0001 C CNN
F 3 "" H 4700 4550 50  0001 C CNN
	1    4700 4550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
