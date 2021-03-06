#==========================================================================
#File Name			:	DE2_115.tcl
#Type						:	TCL
#Device					:	DE2_115 Cyclone IV EP4CE115F29C7N 
#--------------------------------------------------------------------------
#Update History	:
#--------------------------------------------------------------------------
#Verison				Date					Code by				Contents
#0.0.1					2017/11/10		Chen Yu				create new
#
#==========================================================================
#End Verison
#==========================================================================


#Signal Name	FPGA Pin No.	Description	I/O Standard
#1 拨码开关
set_location_assignment	PIN_AB28	-to	RST_i
#set_location_assignment	PIN_AC28	-to	SW[1]
#set_location_assignment	PIN_AC27	-to	SW[2]
#set_location_assignment	PIN_AD27	-to	SW[3]
#set_location_assignment	PIN_AB27	-to	SW[4]
#set_location_assignment	PIN_AC26	-to	SW[5]
#set_location_assignment	PIN_AD26	-to	SW[6]
#set_location_assignment	PIN_AB26	-to	SW[7]
#set_location_assignment	PIN_AC25	-to	SW[8]
#set_location_assignment	PIN_AB25	-to	SW[9]
#set_location_assignment	PIN_AC24	-to	SW[10]
#set_location_assignment	PIN_AB24	-to	SW[11]
#set_location_assignment	PIN_AB23	-to	SW[12]
#set_location_assignment	PIN_AA24	-to	SW[13]
#set_location_assignment	PIN_AA23	-to	SW[14]
#set_location_assignment	PIN_AA22	-to	SW[15]
#set_location_assignment	PIN_Y24		-to	SW[16]
#set_location_assignment	PIN_Y23		-to	SW[17]

#2 按钮开关
#set_location_assignment	PIN_M23	-to	KEY[0]
#set_location_assignment	PIN_M21	-to	KEY[1]
#set_location_assignment	PIN_N21	-to	KEY[2]
#set_location_assignment	PIN_R24	-to	KEY[3]

#3 LED  
#set_location_assignment	PIN_G19	-to	LEDR[0]
#set_location_assignment	PIN_F19	-to	LEDR[1]
#set_location_assignment	PIN_E19	-to	LEDR[2]
#set_location_assignment	PIN_F21	-to	LEDR[3]
#set_location_assignment	PIN_F18	-to	LEDR[4]
#set_location_assignment	PIN_E18	-to	LEDR[5]
#set_location_assignment	PIN_J19	-to	LEDR[6]
#set_location_assignment	PIN_H19	-to	LEDR[7]
#set_location_assignment	PIN_J17	-to	LEDR[8]
#set_location_assignment	PIN_G17	-to	LEDR[9]
#set_location_assignment	PIN_J15	-to	LEDR[10]
#set_location_assignment	PIN_H16	-to	LEDR[11]
#set_location_assignment	PIN_J16	-to	LEDR[12]
#set_location_assignment	PIN_H17	-to	LEDR[13]
#set_location_assignment	PIN_F15	-to	LEDR[14]
#set_location_assignment	PIN_G15	-to	LEDR[15]
#set_location_assignment	PIN_G16	-to	LEDR[16]
#set_location_assignment	PIN_H15	-to	LEDR[17]
#
#
#set_location_assignment	PIN_E21	-to	LEDG[0]
#set_location_assignment	PIN_E22	-to	LEDG[1]
#set_location_assignment	PIN_E25	-to	LEDG[2]
#set_location_assignment	PIN_E24	-to	LEDG[3]
#set_location_assignment	PIN_H21	-to	LEDG[4]
#set_location_assignment	PIN_G20	-to	LEDG[5]
#set_location_assignment	PIN_G22	-to	LEDG[6]
#set_location_assignment	PIN_G21	-to	LEDG[7]
#set_location_assignment	PIN_F17	-to	LEDG[8]


# 4 七段数码管引脚配置 
#set_location_assignment	PIN_G18		-to	HEX0[0]
#set_location_assignment	PIN_F22		-to	HEX0[1]
#set_location_assignment	PIN_E17		-to	HEX0[2]
#set_location_assignment	PIN_L26		-to	HEX0[3]
#set_location_assignment	PIN_L25		-to	HEX0[4]
#set_location_assignment	PIN_J22		-to	HEX0[5]
#set_location_assignment	PIN_H22		-to	HEX0[6]
#
#set_location_assignment	PIN_M24		-to	HEX1[0]
#set_location_assignment	PIN_Y22		-to	HEX1[1]
#set_location_assignment	PIN_W21		-to	HEX1[2]
#set_location_assignment	PIN_W22		-to	HEX1[3]
#set_location_assignment	PIN_W25		-to	HEX1[4]
#set_location_assignment	PIN_U23		-to	HEX1[5]
#set_location_assignment	PIN_U24		-to	HEX1[6]
#
#set_location_assignment	PIN_AA25	-to	HEX2[0]
#set_location_assignment	PIN_AA26	-to	HEX2[1]
#set_location_assignment	PIN_Y25		-to	HEX2[2]
#set_location_assignment	PIN_W26		-to	HEX2[3]
#set_location_assignment	PIN_Y26		-to	HEX2[4]
#set_location_assignment	PIN_W27		-to	HEX2[5]
#set_location_assignment	PIN_W28		-to	HEX2[6]
#
#set_location_assignment	PIN_V21		-to	HEX3[0]
#set_location_assignment	PIN_U21		-to	HEX3[1]
#set_location_assignment	PIN_AB20	-to	HEX3[2]
#set_location_assignment	PIN_AA21	-to	HEX3[3]
#set_location_assignment	PIN_AD24	-to	HEX3[4]
#set_location_assignment	PIN_AF23	-to	HEX3[5]
#set_location_assignment	PIN_Y19		-to	HEX3[6]
#
#set_location_assignment	PIN_AB19	-to	HEX4[0]
#set_location_assignment	PIN_AA19	-to	HEX4[1]
#set_location_assignment	PIN_AG21	-to	HEX4[2]
#set_location_assignment	PIN_AH21	-to	HEX4[3]
#set_location_assignment	PIN_AE19	-to	HEX4[4]
#set_location_assignment	PIN_AF19	-to	HEX4[5]
#set_location_assignment	PIN_AE18	-to	HEX4[6]
#
#set_location_assignment	PIN_AD18	-to	HEX5[0]
#set_location_assignment	PIN_AC18	-to	HEX5[1]
#set_location_assignment	PIN_AB18	-to	HEX5[2]
#set_location_assignment	PIN_AH19	-to	HEX5[3]
#set_location_assignment	PIN_AG19	-to	HEX5[4]
#set_location_assignment	PIN_AF18	-to	HEX5[5]
#set_location_assignment	PIN_AH18	-to	HEX5[6]
#
#set_location_assignment	PIN_AA17	-to	HEX6[0]
#set_location_assignment	PIN_AB16	-to	HEX6[1]
#set_location_assignment	PIN_AA16	-to	HEX6[2]
#set_location_assignment	PIN_AB17	-to	HEX6[3]
#set_location_assignment	PIN_AB15	-to	HEX6[4]
#set_location_assignment	PIN_AA15	-to	HEX6[5]
#set_location_assignment	PIN_AC17	-to	HEX6[6]
#
#set_location_assignment	PIN_AD17	-to	HEX7[0]
#set_location_assignment	PIN_AE17	-to	HEX7[1]
#set_location_assignment	PIN_AG17	-to	HEX7[2]
#set_location_assignment	PIN_AH17	-to	HEX7[3]
#set_location_assignment	PIN_AF17	-to	HEX7[4]
#set_location_assignment	PIN_AG18	-to	HEX7[5]
#set_location_assignment	PIN_AA14	-to	HEX7[6]


# 5 时钟信号引脚配置信息 
set_location_assignment	PIN_Y2		-to	CLK_50M_i
#set_location_assignment	PIN_AG14	-to	CLOCK2_50	
#set_location_assignment	PIN_AG15	-to	CLOCK3_50
#set_location_assignment	PIN_AE23	-to	SMA_CLKOUT
#set_location_assignment	PIN_AH14	-to	SMA_CLKIN	

# 6 LCD
#set_location_assignment	PIN_L3	-to	LCD_DATA[0]
#set_location_assignment	PIN_L1	-to	LCD_DATA[1]
#set_location_assignment	PIN_L2	-to	LCD_DATA[2]
#set_location_assignment	PIN_K7	-to	LCD_DATA[3]
#set_location_assignment	PIN_K1	-to	LCD_DATA[4]
#set_location_assignment	PIN_K2	-to	LCD_DATA[5]
#set_location_assignment	PIN_M3	-to	LCD_DATA[6]
#set_location_assignment	PIN_M5	-to	LCD_DATA[7]
#
#set_location_assignment	PIN_L4	-to	LCD_EN
#set_location_assignment	PIN_M1	-to	LCD_RW
#set_location_assignment	PIN_M2	-to	LCD_RS
#set_location_assignment	PIN_L5	-to	LCD_ON
#set_location_assignment	PIN_L6	-to	LCD_BLON

#10 VGA                 
set_location_assignment	PIN_E12	-to	RGB_R_o[0]
set_location_assignment	PIN_E11	-to	RGB_R_o[1]
set_location_assignment	PIN_D10	-to	RGB_R_o[2]
set_location_assignment	PIN_F12	-to	RGB_R_o[3]
set_location_assignment	PIN_G10	-to	RGB_R_o[4]
set_location_assignment	PIN_J12	-to	RGB_R_o[5]
set_location_assignment	PIN_H8 	-to	RGB_R_o[6]
set_location_assignment	PIN_H10	-to	RGB_R_o[7]

set_location_assignment	PIN_G8 	-to	RGB_G_o[0]
set_location_assignment	PIN_G11	-to	RGB_G_o[1]
set_location_assignment	PIN_F8 	-to	RGB_G_o[2]
set_location_assignment	PIN_H12	-to	RGB_G_o[3]
set_location_assignment	PIN_C8 	-to	RGB_G_o[4]
set_location_assignment	PIN_B8 	-to	RGB_G_o[5]
set_location_assignment	PIN_F10	-to	RGB_G_o[6]
set_location_assignment	PIN_C9 	-to	RGB_G_o[7]

set_location_assignment	PIN_B10	-to	RGB_B_o[0]
set_location_assignment	PIN_A10	-to	RGB_B_o[1]
set_location_assignment	PIN_C11	-to	RGB_B_o[2]
set_location_assignment	PIN_B11	-to	RGB_B_o[3]
set_location_assignment	PIN_A11	-to	RGB_B_o[4]
set_location_assignment	PIN_C12	-to	RGB_B_o[5]
set_location_assignment	PIN_D11	-to	RGB_B_o[6]
set_location_assignment	PIN_D12	-to	RGB_B_o[7]

set_location_assignment	PIN_A12	-to	CLK_220M_Ni
set_location_assignment	PIN_F11	-to	VGA_BLANK
set_location_assignment	PIN_G13	-to	HS_o
set_location_assignment	PIN_C13	-to	VS_o
set_location_assignment	PIN_C10	-to	VGA_SYNC

## 18 SRAM
#SRAM_ADDR[0] PIN_AB7 SRAM Address[0] 3.3V
#SRAM_ADDR[1] PIN_AD7 SRAM Address[1] 3.3V
#SRAM_ADDR[2] PIN_AE7 SRAM Address[2] 3.3V
#SRAM_ADDR[3] PIN_AC7 SRAM Address[3] 3.3V
#SRAM_ADDR[4] PIN_AB6 SRAM Address[4] 3.3V
#SRAM_ADDR[5] PIN_AE6 SRAM Address[5] 3.3V
#SRAM_ADDR[6] PIN_AB5 SRAM Address[6] 3.3V
#SRAM_ADDR[7] PIN_AC5 SRAM Address[7] 3.3V
#SRAM_ADDR[8] PIN_AF5 SRAM Address[8] 3.3V
#SRAM_ADDR[9] PIN_T7 SRAM Address[9] 3.3V
#SRAM_ADDR[10] PIN_AF2 SRAM Address[10] 3.3V
#SRAM_ADDR[11] PIN_AD3 SRAM Address[11] 3.3V
#SRAM_ADDR[12] PIN_AB4 SRAM Address[12] 3.3V
#SRAM_ADDR[13] PIN_AC3 SRAM Address[13] 3.3V
#SRAM_ADDR[14] PIN_AA4 SRAM Address[14] 3.3V
#SRAM_ADDR[15] PIN_AB11 SRAM Address[15] 3.3V
#SRAM_ADDR[16] PIN_AC11 SRAM Address[16] 3.3V
#SRAM_ADDR[17] PIN_AB9 SRAM Address[17] 3.3V
#SRAM_ADDR[18] PIN_AB8 SRAM Address[18] 3.3V
#SRAM_ADDR[19] PIN_T8 SRAM Address[19] 3.3V
#SRAM_DQ[0] PIN_AH3 SRAM Data[0] 3.3V
#SRAM_DQ[1] PIN_AF4 SRAM Data[1] 3.3V
#SRAM_DQ[2] PIN_AG4 SRAM Data[2] 3.3V
#SRAM_DQ[3] PIN_AH4 SRAM Data[3] 3.3V
#SRAM_DQ[4] PIN_AF6 SRAM Data[4] 3.3V
#SRAM_DQ[5] PIN_AG6 SRAM Data[5] 3.3V
#SRAM_DQ[6] PIN_AH6 SRAM Data[6] 3.3V
#SRAM_DQ[7] PIN_AF7 SRAM Data[7] 3.3V
#SRAM_DQ[8] PIN_AD1 SRAM Data[8] 3.3V
#SRAM_DQ[9] PIN_AD2 SRAM Data[9] 3.3V
#SRAM_DQ[10] PIN_AE2 SRAM Data[10] 3.3V
#SRAM_DQ[11] PIN_AE1 SRAM Data[11] 3.3V
#SRAM_DQ[12] PIN_AE3 SRAM Data[12] 3.3V
#SRAM_DQ[13] PIN_AE4 SRAM Data[13] 3.3V
#SRAM_DQ[14] PIN_AF3 SRAM Data[14] 3.3V
#SRAM_DQ[15] PIN_AG3 SRAM Data[15] 3.3V
#SRAM_OE_N PIN_AD5 SRAM Output Enable 3.3V
#SRAM_WE_N PIN_AE8 SRAM Write Enable 3.3V
#SRAM_CE_N PIN_AF8 SRAM Chip Select 3.3V
#SRAM_LB_N PIN_AD4 SRAM Lower Byte Strobe 3.3V
#SRAM_UB_N PIN_AC4 SRAM Higher Byte Strobe 3.3V
#
## 19 SDRAM
#DRAM_ADDR[0] PIN_R6 SDRAM Address[0] 3.3V
#DRAM_ADDR[1] PIN_V8 SDRAM Address[1] 3.3V
#DRAM_ADDR[2] PIN_U8 SDRAM Address[2] 3.3V
#DRAM_ADDR[3] PIN_P1 SDRAM Address[3] 3.3V
#DRAM_ADDR[4] PIN_V5 SDRAM Address[4] 3.3V
#DRAM_ADDR[5] PIN_W8 SDRAM Address[5] 3.3V
#DRAM_ADDR[6] PIN_W7 SDRAM Address[6] 3.3V
#DRAM_ADDR[7] PIN_AA7 SDRAM Address[7] 3.3V
#DRAM_ADDR[8] PIN_Y5 SDRAM Address[8] 3.3V
#DRAM_ADDR[9] PIN_Y6 SDRAM Address[9] 3.3V
#DRAM_ADDR[10] PIN_R5 SDRAM Address[10] 3.3V
#DRAM_ADDR[11] PIN_AA5 SDRAM Address[11] 3.3V
#DRAM_ADDR[12] PIN_Y7 SDRAM Address[12] 3.3V
#DRAM_DQ[0] PIN_W3 SDRAM Data[0] 3.3V
#DRAM_DQ[1] PIN_W2 SDRAM Data[1] 3.3V
#DRAM_DQ[2] PIN_V4 SDRAM Data[2] 3.3V
#DRAM_DQ[3] PIN_W1 SDRAM Data[3] 3.3V
#DRAM_DQ[4] PIN_V3 SDRAM Data[4] 3.3V
#DRAM_DQ[5] PIN_V2 SDRAM Data[5] 3.3V
#DRAM_DQ[6] PIN_V1 SDRAM Data[6] 3.3V
#DRAM_DQ[7] PIN_U3 SDRAM Data[7] 3.3V
#DRAM_DQ[8] PIN_Y3 SDRAM Data[8] 3.3V
#DRAM_DQ[9] PIN_Y4 SDRAM Data[9] 3.3V
#DRAM_DQ[10] PIN_AB1 SDRAM Data[10] 3.3V
#DRAM_DQ[11] PIN_AA3 SDRAM Data[11] 3.3V
#DRAM_DQ[12] PIN_AB2 SDRAM Data[12] 3.3V
#DRAM_DQ[13] PIN_AC1 SDRAM Data[13] 3.3V
#DRAM_DQ[14] PIN_AB3 SDRAM Data[14] 3.3V
#DRAM_DQ[15] PIN_AC2 SDRAM Data[15] 3.3V
#DRAM_DQ[16] PIN_M8 SDRAM Data[16] 3.3V
#DRAM_DQ[17] PIN_L8 SDRAM Data[17] 3.3V
#DRAM_DQ[18] PIN_P2 SDRAM Data[18] 3.3V
#DRAM_DQ[19] PIN_N3 SDRAM Data[19] 3.3V
#DRAM_DQ[20] PIN_N4 SDRAM Data[20] 3.3V
#DRAM_DQ[21] PIN_M4 SDRAM Data[21] 3.3V
#DRAM_DQ[22] PIN_M7 SDRAM Data[22] 3.3V
#DRAM_DQ[23] PIN_L7 SDRAM Data[23] 3.3V
#DRAM_DQ[24] PIN_U5 SDRAM Data[24] 3.3V
#DRAM_DQ[25] PIN_R7 SDRAM Data[25] 3.3V
#DRAM_DQ[26] PIN_R1 SDRAM Data[26] 3.3V
#DRAM_DQ[27] PIN_R2 SDRAM Data[27] 3.3V
#DRAM_DQ[28] PIN_R3 SDRAM Data[28] 3.3V
#DRAM_DQ[29] PIN_T3 SDRAM Data[29] 3.3V
#DRAM_DQ[30] PIN_U4 SDRAM Data[30] 3.3V
#DRAM_DQ[31] PIN_U1 SDRAM Data[31] 3.3V
#DRAM_BA[0] PIN_U7 SDRAM Bank Address[0] 3.3V
#DRAM_BA[1] PIN_R4 SDRAM Bank Address[1] 3.3V
#DRAM_DQM[0] PIN_U2 SDRAM byte Data Mask[0] 3.3V
#DRAM_DQM[1] PIN_W4 SDRAM byte Data Mask[1] 3.3V
#DRAM_DQM[2] PIN_K8 SDRAM byte Data Mask[2] 3.3V
#DRAM_DQM[3] PIN_N8 SDRAM byte Data Mask[3] 3.3V
#DRAM_RAS_N PIN_U6 SDRAM Row Address Strobe 3.3V
#DRAM_CAS_N PIN_V7 SDRAM Column Address Strobe 3.3V
#DRAM_CKE PIN_AA6 SDRAM Clock Enable 3.3V
#DRAM_CLK PIN_AE5 SDRAM Clock 3.3V
#DRAM_WE_N PIN_V6 SDRAM Write Enable 3.3V
#DRAM_CS_N PIN_T4 SDRAM Chip Select 3.3V
#
## 23 SD Card
#SD_CLK PIN_AE13 SD Clock 3.3V
#SD_CMD PIN_AD14 SD Command Line 3.3V
#SD_DAT[0] PIN_AE14 SD Data[0] 3.3V
#SD_DAT[1] PIN_AF13 SD Data[1] 3.3V
#SD_DAT[2] PIN_AB14 SD Data[2] 3.3V
#SD_DAT[3] PIN_AC14 SD Data[3] 3.3V
#SD_WP_N PIN_AF14 SD Write Protect 3.3V
#
##CLK
