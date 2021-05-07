`default_nettype none
module cntup_seg7
   (
    input wire 	      clk,
    input wire 	      n_rst,
    input wire 	      one_sec_flag,
    output wire [3:0] seg7val_out[1:0]
    );

   reg [3:0] 		     seg7val_reg[1:0];


   always_ff@(posedge clk) begin
      if(!n_rst) begin
	 seg7val_reg[0] <= '0;
	 seg7val_reg[1] <= '0;
      end
      else begin
	 if(one_sec_flag) begin
	    if(seg7val_reg[0] == 'd9) begin
	       seg7val_reg[0] <= '0;
	       if(seg7val_reg[1] == 'd9) begin
		  seg7val_reg[1] <= '0;
	       end
	       else begin
		  seg7val_reg[1] <= seg7val_reg[1] + 'd1;
	       end
	    end
	    else begin
	       seg7val_reg[0] <= seg7val_reg[0] + 'd1;
	       seg7val_reg[1] <= seg7val_reg[1];
	    end // else: !if(seg7val_reg[0] == 'd9)
	 end // if (one_sec_flag)
	 else begin
	    seg7val_reg[0] <= seg7val_reg[0];
	    seg7val_reg[1] <= seg7val_reg[1];
	 end // else: !if(one_sec_flag)
      end // else: !if(!n_rst)
   end // always_ff@ (posedge clk)

   
   assign seg7val_out[0] = seg7val_reg[0];
   assign seg7val_out[1] = seg7val_reg[1];
   
endmodule // cntup_seg7
`default_nettype wire
