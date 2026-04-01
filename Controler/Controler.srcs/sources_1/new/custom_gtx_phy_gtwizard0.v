module custom_gtx_phy_gtwizard0 (
    input  wire        sys_clk,
    input  wire        rst,

    output wire        tx_usrclk_out,
    output wire        tx_usrclk2_out,
    output wire        rx_usrclk_out,
    output wire        rx_usrclk2_out,

    input  wire [31:0] tx_data,
    input  wire        tx_valid,
    input  wire        tx_last,
    input  wire [1:0]  tx_word_index,

    input  wire        gt_refclk_p,
    input  wire        gt_refclk_n,
    input  wire        sfp_rx_p,
    input  wire        sfp_rx_n,
    output wire        sfp_tx_p,
    output wire        sfp_tx_n,

    output wire        phy_tx_resetdone,
    output wire        phy_rx_resetdone,
    output wire        phy_channel_up,
    output wire [31:0] phy_debug_status,
    output wire [31:0] rx_data,
    output wire        rx_data_valid
);

    wire        gt0_tx_fsm_reset_done_out;
    wire        gt0_rx_fsm_reset_done_out;
    wire        gt0_txusrclk_out;
    wire        gt0_txusrclk2_out;
    wire        gt0_rxusrclk_out;
    wire        gt0_rxusrclk2_out;
    wire        gt0_cpllfbclklost_out;
    wire        gt0_cplllock_out;
    wire [15:0] gt0_drpdo_out;
    wire        gt0_drprdy_out;
    wire [7:0]  gt0_dmonitorout_out;
    wire        gt0_eyescandataerror_out;
    wire [31:0] gt0_rxdata_out;
    wire [6:0]  gt0_rxmonitorout_out;
    wire        gt0_rxoutclkfabric_out;
    wire        gt0_rxelecidle_out;
    wire        gt0_rxresetdone_out;
    wire        gt0_txoutclkfabric_out;
    wire        gt0_txoutclkpcs_out;
    wire        gt0_txresetdone_out;
    wire        gt0_qplloutclk_out;
    wire        gt0_qplloutrefclk_out;

    gtwizard_0 u_gtwizard_0 (
        .soft_reset_tx_in            (rst),
        .soft_reset_rx_in            (rst),
        .dont_reset_on_data_error_in (1'b0),
        .q0_clk1_gtrefclk_pad_n_in   (gt_refclk_n),
        .q0_clk1_gtrefclk_pad_p_in   (gt_refclk_p),
        .gt0_tx_fsm_reset_done_out   (gt0_tx_fsm_reset_done_out),
        .gt0_rx_fsm_reset_done_out   (gt0_rx_fsm_reset_done_out),
        .gt0_data_valid_in           (1'b1),
        .gt0_txusrclk_out            (gt0_txusrclk_out),
        .gt0_txusrclk2_out           (gt0_txusrclk2_out),
        .gt0_rxusrclk_out            (gt0_rxusrclk_out),
        .gt0_rxusrclk2_out           (gt0_rxusrclk2_out),
        .gt0_cpllfbclklost_out       (gt0_cpllfbclklost_out),
        .gt0_cplllock_out            (gt0_cplllock_out),
        .gt0_cpllreset_in            (rst),
        .gt0_drpaddr_in              (9'd0),
        .gt0_drpdi_in                (16'd0),
        .gt0_drpdo_out               (gt0_drpdo_out),
        .gt0_drpen_in                (1'b0),
        .gt0_drprdy_out              (gt0_drprdy_out),
        .gt0_drpwe_in                (1'b0),
        .gt0_dmonitorout_out         (gt0_dmonitorout_out),
        .gt0_eyescanreset_in         (1'b0),
        .gt0_rxuserrdy_in            (1'b1),
        .gt0_eyescandataerror_out    (gt0_eyescandataerror_out),
        .gt0_eyescantrigger_in       (1'b0),
        .gt0_rxdata_out              (gt0_rxdata_out),
        .gt0_gtxrxp_in               (sfp_rx_p),
        .gt0_gtxrxn_in               (sfp_rx_n),
        .gt0_rxdfelpmreset_in        (1'b0),
        .gt0_rxmonitorout_out        (gt0_rxmonitorout_out),
        .gt0_rxmonitorsel_in         (2'd0),
        .gt0_rxoutclkfabric_out      (gt0_rxoutclkfabric_out),
        .gt0_gtrxreset_in            (rst),
        .gt0_rxpmareset_in           (rst),
        .gt0_rxelecidle_out          (gt0_rxelecidle_out),
        .gt0_rxslide_in              (1'b0),
        .gt0_rxresetdone_out         (gt0_rxresetdone_out),
        .gt0_gttxreset_in            (rst),
        .gt0_txuserrdy_in            (1'b1),
        .gt0_txdata_in               (tx_data),
        .gt0_gtxtxn_out              (sfp_tx_n),
        .gt0_gtxtxp_out              (sfp_tx_p),
        .gt0_txoutclkfabric_out      (gt0_txoutclkfabric_out),
        .gt0_txoutclkpcs_out         (gt0_txoutclkpcs_out),
        .gt0_txresetdone_out         (gt0_txresetdone_out),
        .gt0_qplloutclk_out          (gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out       (gt0_qplloutrefclk_out),
        .sysclk_in                   (sys_clk)
    );

    assign phy_tx_resetdone = gt0_txresetdone_out;
    assign phy_rx_resetdone = gt0_rxresetdone_out;
    assign phy_channel_up   = gt0_cplllock_out & gt0_tx_fsm_reset_done_out & gt0_rx_fsm_reset_done_out;
    assign tx_usrclk_out    = gt0_txusrclk_out;
    assign tx_usrclk2_out   = gt0_txusrclk2_out;
    assign rx_usrclk_out    = gt0_rxusrclk_out;
    assign rx_usrclk2_out   = gt0_rxusrclk2_out;
    assign rx_data          = gt0_rxdata_out;
    assign rx_data_valid    = gt0_rxresetdone_out & gt0_rx_fsm_reset_done_out;

    assign phy_debug_status = {
        gt0_cpllfbclklost_out,
        gt0_cplllock_out,
        gt0_tx_fsm_reset_done_out,
        gt0_rx_fsm_reset_done_out,
        gt0_txresetdone_out,
        gt0_rxresetdone_out,
        tx_valid,
        tx_last,
        tx_word_index,
        2'b00,
        gt0_dmonitorout_out,
        gt0_rxmonitorout_out,
        gt0_eyescandataerror_out,
        gt0_rxelecidle_out,
        gt0_drprdy_out,
        gt0_txoutclkfabric_out,
        gt0_rxoutclkfabric_out,
        gt0_txoutclkpcs_out,
        2'b00
    };

endmodule
