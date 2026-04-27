/*******************************************************************************/
//CopyRight   :  Orihard Tech Co.,Ltd
//Email & Tel :  orihard@126.com  010-84988569
//FileName    :  m_ad9516_ctl.v
//Designer    :  Jhonny Raul 
//Version     :  0.1 
//History     :  initial
//Data        :  2013_05_26
//Dscription  :  ad9516 contrlor
/*******************************************************************************/
`timescale 1 ns / 1 ps
module m_ad9516_ctl
(
//input clk
input 					clk_50m_in,
//reset ,active low
input 					rst_n,
//trig start singal
input						trig_in,
//chip select
output 	 			 	cs_n_out,
//serial clk
output 				 	sclk_out,
//serial data out
output 	 			 	sdata_out,
//constant
output 	 			 	ad9516_refsel_out,
output 	 			 	ad9516_pdwn_out,
output 	 			 	ad9516_rstn_out,
//serial data out
output 	 				syn_n_out,
output					cfg_end_out
//
);
//link init to config
wire				trig_vco_init_end;
//init
wire				vco_int_data_valid;
wire	[23: 0]	vco_int_data;
wire				cfg_end;
//config
wire				cfg_data_valid;
wire	[23: 0]	cfg_int_data;
//send data 
reg				send_data_trig;
reg				send_data_trig_dly;
reg	[23: 0]	send_data;
//
reg	[ 7: 0]	cnt;

assign	ad9516_refsel_out = 1'b1;
assign	ad9516_pdwn_out   = 1'b1;
assign	ad9516_rstn_out   = 1'b1;
assign	syn_n_out         = 1'b1;
assign	cfg_end_out			= cfg_end;
//select valid
always @(posedge clk_50m_in or negedge rst_n)
begin
	if(!rst_n)
		send_data_trig <= 0;
	else if(vco_int_data_valid || cfg_data_valid)
		send_data_trig <= 1'b1;
	else
		send_data_trig <= 0;
end
//send_data_trig delay
always @(posedge clk_50m_in or negedge rst_n)
begin
	if(!rst_n)
		send_data_trig_dly <= 0;
	else
		send_data_trig_dly <= send_data_trig;
end
//select data to transfer
always @(posedge clk_50m_in or negedge rst_n)
begin
	if(!rst_n)
		send_data <= 0;
	else if(vco_int_data_valid)
		send_data <= vco_int_data;
	else if(cfg_data_valid)
		send_data <= cfg_int_data;
end

m_ad9516_vco_init i_m_ad9516_vco_init
(
//input
	.clk_50m_in(clk_50m_in),
	.rst_n(rst_n),
	.trig_in(trig_in),
//ouput
	.trig_spi_send_out(vco_int_data_valid),
	.spi_data_out(vco_int_data),
	.process_end_out(trig_vco_init_end)
);

m_ad9516_config i_m_ad9516_config
(
//input
	.clk_50m_in(clk_50m_in),
	.rst_n(rst_n),
	.trig_in(trig_vco_init_end),
//ouput
	.trig_spi_send_out(cfg_data_valid),
	.spi_data_out(cfg_int_data),
	.process_end_out(cfg_end)
);

m_spi_ctl #(
	//sclk is the divd of the clk input
	.TRANS_CLK_SET	   (16'd2),
	.TRANS_DATA_LENTH (16'd24)
)i_m_spi_ctl
(
	.clk_50m_in(clk_50m_in),
	.rst_n     (rst_n),	
	.trig_in   (send_data_trig_dly),	
	.data_in   (send_data),
	
	.cs_n_out  (cs_n_out),
	.sclk_out  (sclk_out),
	.sdata_out (sdata_out)
);
endmodule
