/*******************************************************************************/
//CopyRight   :  Orihard Tech Co.,Ltd
//Email & Tel :  orihard@126.com  010-84988569
//FileName    :  m_spi_ctl.v
//Designer    :  Jhonny Raul 
//Version     :  0.1 
//History     :  initial
//Data        :  2013_05_26
//Dscription  :  spi controlor
/*******************************************************************************/
`timescale 1 ns / 1 ps
module m_spi_ctl #(
	//sclk is the divd of the clk input
	parameter TRANS_CLK_SET 		= 16'd1,
	parameter TRANS_DATA_LENTH 	= 16'd24
)
(
//input clk
input 					clk_50m_in,
//reset ,active low
input 					rst_n,
//trig start singal
input						trig_in,
//prarall data in
input			[23:0]	data_in,
//chip select
output reg 			 	cs_n_out,
//serial clk
output reg 			 	sclk_out,
//serial data out
output reg 			 	sdata_out
);
//shift reg data in
reg	[23:0] 	shift_data;
//cnt0 : count the divd
reg	[15:0] 	cnt0;
//cnt1 : count the data bit
reg	[15:0] 	cnt1;

//cs_n_out
always @(posedge clk_50m_in or negedge rst_n)
begin
	if(!rst_n)
		cs_n_out <= 1;
	else if(trig_in)
		cs_n_out <= 0;
	else if((cnt0==0) && (cnt1==TRANS_DATA_LENTH) && (sclk_out==0))
		cs_n_out <= 1;
end
//cs_n_out
always @(posedge clk_50m_in or negedge rst_n)
begin
	if(!rst_n)
		shift_data <= 0;
	else if(trig_in)
		shift_data <= data_in;
	else if((cs_n_out==0) && (cnt0==0) && (sclk_out==0))
		shift_data <= {shift_data[22:0],1'b1};	
end
//sdata_out
always @(posedge clk_50m_in or negedge rst_n)
begin
	if(!rst_n)
		sdata_out <= 1;
	else if(cs_n_out)
		sdata_out <= 1;
	else if((cs_n_out==0) && (cnt0==0) && (sclk_out==0))
		sdata_out <= shift_data[23];
end
//cs_n_out
always @(posedge clk_50m_in or negedge rst_n)
begin
	if(!rst_n)
		sclk_out <= 1;
	else if(trig_in)
		sclk_out <= 0;
	else if(cs_n_out)
		sclk_out <= 1;
	else if((cs_n_out==0) && (cnt0==TRANS_CLK_SET) && (cnt1<=TRANS_DATA_LENTH))
		sclk_out <= ~sclk_out;
//	else if((cs_n_out==0) && (cnt0==TRANS_CLK_SET) && (cnt1>TRANS_DATA_LENTH))
//		sclk_out <= 1;
end
//count the divd 
always @(posedge clk_50m_in or negedge rst_n)
begin
	if(!rst_n)
		cnt0 <= 0;
	else if((cs_n_out==0) && (cnt0==TRANS_CLK_SET))
		cnt0 <= 0;
	else if((cs_n_out==0) && (cnt0<TRANS_CLK_SET))
		cnt0 <= cnt0 + 1'b1;
	else
		cnt0 <= 0;
end
//count the data bit
always @(posedge clk_50m_in or negedge rst_n)
begin
	if(!rst_n)
		cnt1 <= 0;
	else if(cs_n_out)
		cnt1 <= 0;
	else if((cs_n_out==0) && (sclk_out==0) && (cnt0==TRANS_CLK_SET))
		cnt1 <= cnt1 + 1'b1;
end

endmodule
