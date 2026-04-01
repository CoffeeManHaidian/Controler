
 add_fsm_encoding \
       {gtx_rx32_to_stream64.state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} }

 add_fsm_encoding \
       {custom_optical_tx.state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} }

 add_fsm_encoding \
       {pcie_cmd_to_optical_hw_bringup_top.state} \
       { }  \
       {{000 00001} {001 00010} {010 00100} {011 01000} {100 10000} }
