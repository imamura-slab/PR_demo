`default_nettype none
module cnt_sec
  #(
    parameter integer FREQUENCY = -1
    )
   (
    input wire 	clk,
    input wire 	n_rst,
    output wire one_sec_flag_out
    );

   reg [$clog2(FREQUENCY):0] sec_cnt;
  
   always_ff@(posedge clk) begin
      if(!n_rst) begin
	 sec_cnt <= '0;
      end
      else begin
	 if(sec_cnt == FREQUENCY-1) 
	    sec_cnt <= '0;
	 else
	    sec_cnt <= sec_cnt + 'd1;
      end
   end // always_ff@ (posedge clk)


   assign one_sec_flag_out = (sec_cnt == FREQUENCY-1);
   
endmodule // cnt_sec
`default_nettype wire
