/*******************************************************************************/
//CopyRight   :  Orihard Tech Co.,Ltd
//Email & Tel :  orihard@126.com  010-84988569
//FileName    :  m_ad9518_vco_init.v
//Designer    :  Jhonny Raul 
//Version     :  0.1 
//History     :  initial
//Data        :  2013_05_26
//Dscription  :  vco initial
/*******************************************************************************/
`timescale 1 ns / 1 ps
module m_ad9516_vco_init
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

parameter 	ADDR_DATA_0 	= 24'h00_00_A5,
				ADDR_DATA_1 	= 24'h00_00_99,
				ADDR_DATA_2 	= 24'h00_10_7C,
				ADDR_DATA_3 	= 24'h00_11_01,
				ADDR_DATA_4 	= 24'h00_12_00,
				ADDR_DATA_5 	= 24'h00_13_0A,
				ADDR_DATA_6 	= 24'h00_14_0F,//parameter B
				ADDR_DATA_7 	= 24'h00_15_00,
				ADDR_DATA_8 	= 24'h00_16_05,//prescaler P
				ADDR_DATA_9 	= 24'h00_17_00,
				ADDR_DATA_10 	= 24'h00_18_00,
				ADDR_DATA_11 	= 24'h02_32_01,
				ADDR_DATA_12 	= 24'h00_18_01,
				ADDR_DATA_13 	= 24'h02_32_01;
				
parameter 	COUTNT_1 	=  19'h1_A000,
				COUTNT_2 	=  6'h0D;
//register the pamarmeter			
reg	[23: 0] 	value_set_data[13: 0];
//spi transfer cnt : corrospond to spi div
reg	[ 7: 0] 	cnt0;
//2ms delay cnt : corrospond to clk frequence
reg	[18: 0] 	cnt1;
//cnt the transfer data
reg	[ 5: 0] 	cnt2;
//trig cnt0
reg				trig_cnt0;
//trig 2ms delay cnt
reg				trig_2ms;
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
		end
end

//gen trig cnt0 signal
always @(posedge clk_50m_in or negedge rst_n)
begin
	if(!rst_n)
		trig_cnt0 <= 0;
	else if(trig_in || trig_spi_cnt || (cnt1==COUTNT_1))
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
//cnt1 : delay 2ms
always @(posedge clk_50m_in or negedge rst_n)
begin
	if(!rst_n)
		cnt1 <= 0;
	else if(cnt1==COUTNT_1)
		cnt1 <= 0;
	else if(trig_2ms || (cnt1>=1))
		cnt1 <= cnt1 + 1'b1;
	else
		cnt1 <= 0;
end
//cnt2
always @(posedge clk_50m_in or negedge rst_n)
begin
	if(!rst_n)
		cnt2 <= 0;
	else if((cnt0==8'hFF) && (cnt2<COUTNT_2))
		cnt2 <= cnt2 + 1'b1;
	else if((cnt0==8'hFF) && (cnt2==COUTNT_2))
		cnt2 <= 0;
end
//trig_2ms
always @(posedge clk_50m_in or negedge rst_n)
begin
	if(!rst_n)
		trig_2ms <= 0;
	else if((cnt0==8'hFF) && ((cnt2==0)||(cnt2==11)))
		trig_2ms <= 1'b1;
	else
		trig_2ms <= 0;
end
//trig_spi_cnt
always @(posedge clk_50m_in or negedge rst_n)
begin
	if(!rst_n)
		trig_spi_cnt <= 0;
	else if((cnt0==8'hFF) && ((cnt2==0)||(cnt2==11)))
		trig_spi_cnt <= 0;
	else if((cnt0==8'hFF) && (cnt2<COUTNT_2))
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
	else if((cnt0==8'hFF) && (cnt2==COUTNT_2))
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
		spi_data_out <= value_set_data[cnt2];
end
//m_spi_ctl #(
//	//sclk is the divd of the clk input
//	.TRANS_CLK_SET	   (16'd1),
//	.TRANS_DATA_LENTH (16'd24)
//)i_m_spi_ctl
//(
//	.clk_50m_in(clk_50m_in),
//	.rst_n     (rst_n),	
//	.trig_in   (trig_spi_send),	
//	.data_in   (value_set_data[cnt2]),
//	
//	.cs_n_out  (cs_n_out),
//	.sclk_out  (sclk_out),
//	.sdata_out (sdata_out)
//);
endmodule
