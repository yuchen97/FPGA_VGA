module	ADV7123_Driver
(
	//input		CLK_220M_i,
	input		VGA_SYNC,
	input		VGA_BLANK,
	//input		RST_i,
	
	input [7:0] RGB_VR_o,
	input [7:0] RGB_VG_o,
	input [7:0] RGB_VB_o,
	
	output  	[7:0] AD_R_o,
	output  	[7:0] AD_G_o,
	output  	[7:0] AD_B_o
);
wire 			VGA_COLORS_EN;
//reg	[7:0] AD_R_r;
//reg	[7:0] AD_G_r;
//reg	[7:0] AD_B_r;
//assign	VGA_SYNC = 1'b0;
//assign	VGA_BLANK = 1'B1;
assign	VGA_COLORS_EN = VGA_BLANK &&(!VGA_SYNC);
assign	{AD_R_o,AD_G_o,AD_B_o} = VGA_COLORS_EN ? {RGB_VR_o,RGB_VG_o,RGB_VB_o} : {8'b0,8'b0,8'b0};
//always@(posedge CLK_220M_i,negedge RST_i)begin
//	if(!RST_i)begin 
//		{AD_R_r,AD_G_r,AD_B_r}<={8'b0,8'b0,8'b0};
//	end else if(VGA_COLORS_EN)begin
//			{AD_R_r,AD_G_r,AD_B_r}<={RGB_R_o,RGB_G_o,RGB_B_o};
//	end else begin
//			{AD_R_r,AD_G_r,AD_B_r}<={8'b0,8'b0,8'b0};
//	end
//end
//assign		{AD_R_o,AD_G_o,AD_B_o} = {AD_R_r,AD_G_r,AD_B_r};
endmodule
