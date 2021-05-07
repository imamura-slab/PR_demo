`default_nettype none

module cntup_led
   (
    input wire 	      clk,
    input wire 	      n_rst,
    input wire 	      one_sec_flag,
    output wire [3:0] led_out
    );

   reg [3:0] 		     led_reg;

   always_ff@(posedge clk) begin
      if(!n_rst) begin
	 led_reg <= '0;
      end
      else begin
	 if(one_sec_flag)
	    led_reg <= led_reg + 'd1;
	 else
	    led_reg <= led_reg;
      end
   end // always_ff@ (posedge clk)

   
   assign led_out        = ~led_reg;
   
endmodule // cntup_led
`default_nettype wire
