//==========================================================================
//File Name				:	VGA_Basis_v0.v
//Module					:	VGA_Basis_v0
//Function				:	Simple VGA Display RTL top module
//Type					:	RTL
//Device					:	DE2_115 Cyclone IV EP4CE115F29C7N 
//--------------------------------------------------------------------------
//Update History	:
//--------------------------------------------------------------------------
//Verison				Date					Code by				Contents
//0.0.0					2017/11/15			Chen Yu				create new
//
//==========================================================================
//End Verison
//==========================================================================
module VGA_Basis_v0
(
	input  CLK_50M_i,
	input	 RST_i,
	
//		input						VGA_BLANK,
//	input						VGA_SYNC,
	
	output 	HS_o,
	output VS_o,
	
//	output CLK_220M_i,
	output CLK_220M_Ni,

	output VGA_SYNC,
	output VGA_BLANK,
	
	output 	[7:0] RGB_R_o,
	output 	[7:0] RGB_G_o,
	output 	[7:0] RGB_B_o
);


 IP IP_Init(
	.areset(RST_PLL_i),
	.inclk0(CLK_50M_i),
	.c0(CLK_220M_i),
	.locked(PLL_LOCK));


VGA_Driver  VGA_Driver_Init
(
	.CLK_50M_i(CLK_50M_i)	,
	.RST_i(RST_i)			,

	.PLL_LOCK(PLL_LOCK),
	
	.RST_PLL_i(RST_PLL_i),
	
	.HS_o(HS_o),
	.VS_o(VS_o),
	.CLK_220M_i(CLK_220M_i),
	.CLK_220M_Ni(CLK_220M_Ni),
	.VGA_SYNC(VGA_SYNC),
.VGA_BLANK(VGA_BLANK),
	
	.RGB_R_o(RGB_R_o),
	.RGB_G_o(RGB_G_o),
	.RGB_B_o(RGB_B_o)
);
//ADV7123_Driver ADV7123_Driver_Init
//(
//	//.CLK_220M_i(CLK_220M_i),
//	.VGA_SYNC(VGA_SYNC),
//	.VGA_BLANK(VGA_BLANK),
//	//.RST_i(RST_i),
//	
//	.RGB_VR_o(RGB_VR_o),
//	.RGB_VG_o(RGB_VG_o),
//	.RGB_VB_o(RGB_VB_o),
//	
//	.AD_R_o(AD_R_o),
//	.AD_G_o(AD_G_o),
//	.AD_B_o(AD_B_o)
//);

endmodule
	
//(
//	input						CLK_50M_i	,
//	input						RST_i			,
//	
//	output					HS_o,
//	output					VS_o,
//	
//	output		[ 7:0]	RGB_R_o,
//	output		[ 7:0]	RGB_G_o,
//	output		[ 7:0]	RGB_B_o
//);
//
///**********Hor Parameter Configuration**********/
//parameter	HOR_SYNC = 12'd208;
//parameter	H_BACK_PROCH = 12'd344;
//parameter	H_ADDR = 12'd1920;
//parameter	H_FRONT_PROCH = 12'd136;
//parameter	H_TOTAL = 12'd2608;
//
///**********Ver Parameter Configuration**********/
//parameter	VER_SYNC = 12'd5;
//parameter	V_BACK_PROCH = 12'd42;
//parameter	V_ADDR = 12'd1080;
//parameter	V_FRONT_PROCH = 12'd3;
//parameter	V_TOTAL = 12'd1130;
///**********Colors Parameter Configuration**********/
//parameter BLACK_RGB   = {8'd0,  8'd0,  8'd0  };
//parameter BLUE_RGB    = {8'd0,  8'd0,  8'd255};
//parameter GREEN_RGB   = {8'd0,  8'd255,8'd0  };
//parameter CYAN_RGB    = {8'd0,  8'd255,8'd255};
//parameter RED_RGB     = {8'd255,8'd0,  8'd0  };
//parameter PURPLE_RGB  = {8'd255,8'd0,  8'd255};
//parameter YELLOW_RGB  = {8'd255,8'd255,8'd0  };
//parameter WHITE_RGB   = {8'd255,8'd255,8'd255};
//
//wire							CLK_220M_i;
//wire							PLL_LOCK;
//
//reg			[11:0]		X_CNT;
//reg			[11:0]		Y_CNT;
//wire			[11:0]		X_POS_o;
//wire			[11:0]		Y_POS_o;
//
//wire 							W_DATA_EN;
//
//reg			[ 7:0]		RED_DATA_8;
//reg			[ 7:0]		GREEN_DATA_8;
//reg			[ 7:0]		BLUE_DATA_8;
//
////reg 			[ 7:0]		RGB_R_o;
////reg 			[ 7:0]		RGB_G_o;
////reg 			[ 7:0]		RGB_B_o;
//wire 			[ 7:0]		RGB_R_i;
//wire 			[ 7:0]		RGB_G_i;
//wire 			[ 7:0]		RGB_B_i;
///*=========================================================================+/
//||																									||
//||								PLL Initial 50MHz to 220.75MHz							||
//||																									||
///+=========================================================================*/
// IP IP_Init(
//	.areset(RST_i),
//	.inclk0(CLK_50M_i),
//	.c0(CLK_220M_i),
//	.locked(PLL_LOCK));
///*=========================================================================+/
//||																									||
//||									RGB Data 8 8 8 24Bit										||
//||																									||
///+=========================================================================*/
//always@(posedge CLK_220M_i) begin
//	if(W_DATA_EN && PLL_LOCK) begin
//		case(X_POS_o)
//			12'd1			:     {RED_DATA_8,GREEN_DATA_8,BLUE_DATA_8} <= GREEN_RGB;
//			(H_ADDR/8)*1:		{RED_DATA_8,GREEN_DATA_8,BLUE_DATA_8} <= BLUE_RGB;
//			(H_ADDR/8)*2:		{RED_DATA_8,GREEN_DATA_8,BLUE_DATA_8} <= BLACK_RGB;
//			(H_ADDR/8)*3:		{RED_DATA_8,GREEN_DATA_8,BLUE_DATA_8} <= CYAN_RGB;
//			(H_ADDR/8)*4:		{RED_DATA_8,GREEN_DATA_8,BLUE_DATA_8} <= RED_RGB;
//			(H_ADDR/8)*5:		{RED_DATA_8,GREEN_DATA_8,BLUE_DATA_8} <= PURPLE_RGB;
//			(H_ADDR/8)*6:		{RED_DATA_8,GREEN_DATA_8,BLUE_DATA_8} <= YELLOW_RGB;
//			(H_ADDR/8)*7:		{RED_DATA_8,GREEN_DATA_8,BLUE_DATA_8} <= WHITE_RGB;
//			default		:		{RED_DATA_8,GREEN_DATA_8,BLUE_DATA_8} <={RED_DATA_8,GREEN_DATA_8,BLUE_DATA_8};
//		endcase
//	end else
//			{RED_DATA_8,GREEN_DATA_8,BLUE_DATA_8} <= {8'd0,8'd0,8'd0};
//end
//
//assign {RGB_R_i,RGB_G_i,RGB_B_i} = {RED_DATA_8,GREEN_DATA_8,BLUE_DATA_8};
///*=========================================================================+/
//||																									||
//||					Horizontal counter and Hor Sync Signal Generate					||
//||																									||
///+=========================================================================*/
//always@(posedge CLK_50M_i or negedge RST_i) begin
//	if(!RST_i)
//		X_CNT	<= 12'd0;
//	else	if(X_CNT < H_TOTAL-12'B1)
//		X_CNT	<=	X_CNT + 12'd1;
//	else
//		X_CNT	<=	12'd0;
//end
///*=========================================================================+/
//||																									||
//||					Vertical counter and Ver Sync Signal Generate					||
//||																									||
///+=========================================================================*/
//always@(posedge CLK_50M_i or negedge RST_i) begin
//	if(!RST_i)
//		Y_CNT	<= 12'd0;
//	else	if((X_CNT == H_TOTAL-12'B1)&&(Y_CNT < V_TOTAL-12'B1))
//		Y_CNT	<=	Y_CNT + 12'd1;
//	else
//		Y_CNT	<=	12'd0;
//end
///*=========================================================================+/
//||																									||
//||							Write Requst Enable and X\Y Position						||
//||																									||
///+=========================================================================*/
//assign	HS_o		 = (X_CNT < HOR_SYNC) ? 1'B0 : 1'B1;
//assign	VS_o		 = (Y_CNT < VER_SYNC) ? 1'B0 : 1'B1;
//
//assign	W_DATA_EN = (X_CNT >= HOR_SYNC + H_BACK_PROCH)&&
//							(X_CNT <  HOR_SYNC + H_BACK_PROCH + H_ADDR)&&
//							(Y_CNT >= VER_SYNC + V_BACK_PROCH)&&
//							(Y_CNT <  VER_SYNC + V_BACK_PROCH + V_ADDR);
//							
//assign	{RGB_R_o,RGB_G_o,RGB_B_o}	=	W_DATA_EN ? {RGB_R_i,RGB_G_i,RGB_B_i} : 24'b0;
//
//
//assign 	X_POS_o = W_DATA_EN?(X_CNT-HOR_SYNC-H_BACK_PROCH + 12'd1):12'd0;
//assign 	Y_POS_o = W_DATA_EN?(Y_CNT-VER_SYNC-V_BACK_PROCH + 12'd1):12'd0;			
//
//endmodule
