/*******************************************************************************/
//CopyRight   :  Orihard Tech Co.,Ltd
//Email & Tel :  orihard@126.com  010-84988569
//FileName    :  m_ad9518_config.v
//Designer    :  Jhonny Raul 
//Version     :  0.1 
//History     :  initial
//Data        :  2013_05_26
//Dscription  :  ad9518 config
/*******************************************************************************/
`timescale 1 ns / 1 ps
module m_ad9516_config
(
//input clk
input 					clk_50m_in,
//reset ,active low
input 					rst_n,
//trig start singal
input						trig_in,
//chip select
output reg 				trig_spi_send_out,
//serial clk
output reg	[23:0] 	spi_data_out,
//serial data out
output reg 			 	process_end_out
);

parameter 	ADDR_DATA_0 	= 24'h00_00_99,
				ADDR_DATA_1 	= 24'h00_04_01,
				ADDR_DATA_2 	= 24'h00_10_7C,
				//R low 8bit
				ADDR_DATA_3 	= 24'h00_11_01,
				//R high 6bit
				ADDR_DATA_4		= 24'h00_12_00,
				
				//A 6bit
				ADDR_DATA_5 	= 24'h00_13_0A,
				//B low 8bit
				ADDR_DATA_6 	= 24'h00_14_0F,
				//B high 5bit
				ADDR_DATA_7 	= 24'h00_15_00,
				//Divide-by-16 and divide-by-17 when A ¡Ù 0; divide-by-16 when A = 0.
				ADDR_DATA_8 	= 24'h00_16_05,
				ADDR_DATA_9 	= 24'h00_17_00,
				
				ADDR_DATA_10 	= 24'h00_18_07,
				ADDR_DATA_11 	= 24'h00_19_00,
				ADDR_DATA_12 	= 24'h00_1A_00,
				ADDR_DATA_13 	= 24'h00_1B_00,
				//REF1 power on.
				ADDR_DATA_14 	= 24'h00_1C_44,

				ADDR_DATA_15 	= 24'h00_1D_00,
				//lvpecl0: 0x08 on,0x0A off
				ADDR_DATA_16 	= 24'h00_F0_0A,
				//lvpecl1: 0x08 on,0x0A off
				ADDR_DATA_17 	= 24'h00_F1_0A,
				//lvpecl2: 0x08 on,0x0A off
				ADDR_DATA_18 	= 24'h00_F2_0A,
				//lvpecl3: 0x08 on,0x0A off
				ADDR_DATA_19 	= 24'h00_F3_0A,
				
				//lvpecl4: 0x08 on,0x0A off
				ADDR_DATA_20 	= 24'h00_F4_0A,
				//lvpecl5: 0x08 on,0x0A off
				ADDR_DATA_21 	= 24'h00_F5_0A,
				//lvds6  : 0x42 on,0x43 off
				ADDR_DATA_22 	= 24'h01_40_42,
				//lvds7  : 0x42 on,0x43 off
				ADDR_DATA_23 	= 24'h01_41_42,
				//lvds8  : 0x42 on,0x43 off
				ADDR_DATA_24 	= 24'h01_42_42,

				//lvds9  : 0x42 on,0x43 off
				ADDR_DATA_25 	= 24'h01_43_42,
				ADDR_DATA_26 	= 24'h01_90_00,
				ADDR_DATA_27 	= 24'h01_91_80,
				ADDR_DATA_28 	= 24'h01_92_00,
				ADDR_DATA_29 	= 24'h01_93_BB,

				ADDR_DATA_30 	= 24'h01_94_00,
				ADDR_DATA_31 	= 24'h01_95_00,
				ADDR_DATA_32 	= 24'h01_96_00,
				ADDR_DATA_33 	= 24'h01_97_00,
				ADDR_DATA_34 	= 24'h01_98_00,
				
				ADDR_DATA_35 	= 24'h01_99_11,
				ADDR_DATA_36 	= 24'h01_9A_00,
				ADDR_DATA_37 	= 24'h01_9B_11,
				ADDR_DATA_38 	= 24'h01_9C_20,
				ADDR_DATA_39 	= 24'h01_9D_00,
				
				ADDR_DATA_40 	= 24'h01_9E_11,
				ADDR_DATA_41 	= 24'h01_9F_00,
   			ADDR_DATA_42 	= 24'h01_A0_11,
				ADDR_DATA_43 	= 24'h01_A1_20,
				ADDR_DATA_44 	= 24'h01_A2_00,
				
				ADDR_DATA_45 	= 24'h01_A3_00,
				//vco divde 3
				ADDR_DATA_46 	= 24'h01_E0_03,
				ADDR_DATA_47 	= 24'h01_E1_02,
				ADDR_DATA_48 	= 24'h02_30_00,
				ADDR_DATA_49 	= 24'h02_32_01;
				
parameter 	COUTNT_1 	=  6'd49;
//register the pamarmeter
reg	[23: 0] 	value_set_data[49: 0];
//spi transfer cnt : corrospond to spi div
reg	[ 7: 0] 	cnt0;
//cnt the transfer data
reg	[ 5: 0] 	cnt1;
//trig cnt0
reg				trig_cnt0;
//send static
reg				trig_spi_cnt;
//initial
always @(posedge clk_50m_in or negedge rst_n)
begin
	if(!rst_n)
		begin
			value_set_data[ 0] <= 24'd0;
			value_set_data[ 1] <= 24'd0;
			value_set_data[ 2] <= 24'd0;
			value_set_data[ 3] <= 24'd0;
			value_set_data[ 4] <= 24'd0;
			value_set_data[ 5] <= 24'd0;
			value_set_data[ 6] <= 24'd0;
			value_set_data[ 7] <= 24'd0;
			value_set_data[ 8] <= 24'd0;
			value_set_data[ 9] <= 24'd0;
			value_set_data[10] <= 24'd0;
			value_set_data[11] <= 24'd0;
			value_set_data[12] <= 24'd0;
			value_set_data[13] <= 24'd0;
			value_set_data[14] <= 24'd0;
			value_set_data[15] <= 24'd0;
			value_set_data[16] <= 24'd0;
			value_set_data[17] <= 24'd0;
			value_set_data[18] <= 24'd0;
			value_set_data[19] <= 24'd0;
			value_set_data[20] <= 24'd0;
			value_set_data[21] <= 24'd0;
			value_set_data[22] <= 24'd0;
			value_set_data[23] <= 24'd0;
			value_set_data[24] <= 24'd0;
			value_set_data[25] <= 24'd0;
			value_set_data[26] <= 24'd0;
			value_set_data[27] <= 24'd0;
			value_set_data[28] <= 24'd0;
			value_set_data[29] <= 24'd0;
			value_set_data[30] <= 24'd0;
			value_set_data[31] <= 24'd0;
			value_set_data[32] <= 24'd0;
			value_set_data[33] <= 24'd0;
			value_set_data[34] <= 24'd0;
			value_set_data[35] <= 24'd0;
			value_set_data[36] <= 24'd0;
			value_set_data[37] <= 24'd0;
			value_set_data[38] <= 24'd0;
			value_set_data[39] <= 24'd0;
			value_set_data[40] <= 24'd0;
			value_set_data[41] <= 24'd0;
			value_set_data[42] <= 24'd0;
			value_set_data[43] <= 24'd0;
			value_set_data[44] <= 24'd0;
			value_set_data[45] <= 24'd0;
			value_set_data[46] <= 24'd0;
			value_set_data[47] <= 24'd0;
			value_set_data[48] <= 24'd0;
			value_set_data[49] <= 24'd0;
		end
	else
		begin
			value_set_data[ 0] <= ADDR_DATA_0;
			value_set_data[ 1] <= ADDR_DATA_1;
			value_set_data[ 2] <= ADDR_DATA_2;
			value_set_data[ 3] <= ADDR_DATA_3;
			value_set_data[ 4] <= ADDR_DATA_4;
			value_set_data[ 5] <= ADDR_DATA_5;
			value_set_data[ 6] <= ADDR_DATA_6;
			value_set_data[ 7] <= ADDR_DATA_7;
			value_set_data[ 8] <= ADDR_DATA_8;
			value_set_data[ 9] <= ADDR_DATA_9;
			value_set_data[10] <= ADDR_DATA_10;
			value_set_data[11] <= ADDR_DATA_11;
			value_set_data[12] <= ADDR_DATA_12;
			value_set_data[13] <= ADDR_DATA_13;
			value_set_data[14] <= ADDR_DATA_14;
			value_set_data[15] <= ADDR_DATA_15;
			value_set_data[16] <= ADDR_DATA_16;
			value_set_data[17] <= ADDR_DATA_17;
			value_set_data[18] <= ADDR_DATA_18;
			value_set_data[19] <= ADDR_DATA_19;
			value_set_data[20] <= ADDR_DATA_20;
			value_set_data[21] <= ADDR_DATA_21;
			value_set_data[22] <= ADDR_DATA_22;
			value_set_data[23] <= ADDR_DATA_23;
			value_set_data[24] <= ADDR_DATA_24;
			value_set_data[25] <= ADDR_DATA_25;
			value_set_data[26] <= ADDR_DATA_26;
			value_set_data[27] <= ADDR_DATA_27;
			value_set_data[28] <= ADDR_DATA_28;
			value_set_data[29] <= ADDR_DATA_29;
			value_set_data[30] <= ADDR_DATA_30;
			value_set_data[31] <= ADDR_DATA_31;
			value_set_data[32] <= ADDR_DATA_32;
			value_set_data[33] <= ADDR_DATA_33;
			value_set_data[34] <= ADDR_DATA_34;
			value_set_data[35] <= ADDR_DATA_35;
			value_set_data[36] <= ADDR_DATA_36;
			value_set_data[37] <= ADDR_DATA_37;
			value_set_data[38] <= ADDR_DATA_38;
			value_set_data[39] <= ADDR_DATA_39;
			value_set_data[40] <= ADDR_DATA_40;
			value_set_data[41] <= ADDR_DATA_41;
			value_set_data[42] <= ADDR_DATA_42;
			value_set_data[43] <= ADDR_DATA_43;
			value_set_data[44] <= ADDR_DATA_44;
			value_set_data[45] <= ADDR_DATA_45;
			value_set_data[46] <= ADDR_DATA_46;
			value_set_data[47] <= ADDR_DATA_47;
			value_set_data[48] <= ADDR_DATA_48;
			value_set_data[49] <= ADDR_DATA_49;
		end
end
//gen trig cnt0 signal
always @(posedge clk_50m_in or negedge rst_n)
begin
	if(!rst_n)
		trig_cnt0 <= 0;
	else if(trig_in || trig_spi_cnt)
		trig_cnt0 <= 1'b1;
	else
		trig_cnt0 <= 0;
end
//cnt0
always @(posedge clk_50m_in or negedge rst_n)
begin
	if(!rst_n)
		cnt0 <= 0;
	else if(trig_cnt0 || (cnt0>=1))
		cnt0 <= cnt0 + 1'b1;
	else
		cnt0 <= 0;
end
//cnt1
always @(posedge clk_50m_in or negedge rst_n)
begin
	if(!rst_n)
		cnt1 <= 0;
	else if((cnt0==8'hFF) && (cnt1<COUTNT_1))
		cnt1 <= cnt1 + 1'b1;
	else if((cnt0==8'hFF) && (cnt1==COUTNT_1))
		cnt1 <= 0;
end
//trig_spi_cnt
always @(posedge clk_50m_in or negedge rst_n)
begin
	if(!rst_n)
		trig_spi_cnt <= 0;
	else if((cnt0==8'hFF) && (cnt1<COUTNT_1))
		trig_spi_cnt <= 1'b1;
	else
		trig_spi_cnt <= 0;
end
//trig_spi_send_out
always @(posedge clk_50m_in or negedge rst_n)
begin
	if(!rst_n)
		trig_spi_send_out <= 0;
	else if(cnt0==2)
		trig_spi_send_out <= 1'b1;
	else
		trig_spi_send_out <= 0;
end
//process_end_out
always @(posedge clk_50m_in or negedge rst_n)
begin
	if(!rst_n)
		process_end_out <= 0;
	else if((cnt0==8'hFF) && (cnt1==COUTNT_1))
		process_end_out <= 1'b1;
	else
		process_end_out <= 0;
end
//spi_data_out
always @(posedge clk_50m_in or negedge rst_n)
begin
	if(!rst_n)
		spi_data_out <= 0;
	else if(cnt0==2)
		spi_data_out <= value_set_data[cnt1];
end

endmodule
