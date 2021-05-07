`default_nettype none
module top
  (
   input wire 	     clk,
   input wire [1:0]  sw,
   input wire [3:0]  btn,
   output wire [3:0] led, 
   output wire [7:0] seg7led[1:0]
   );

   parameter integer 	     FREQUENCY = 50 * 10**6;



   wire 		     one_sec_flag;
   cnt_sec
     #(.FREQUENCY(FREQUENCY))
   cnt_sec_inst
     (.clk(clk), .n_rst(btn[0]), .one_sec_flag_out(one_sec_flag));

   
   wire [3:0] 		     seg7val[1:0];
   cntup_seg7 cntup_seg7_inst
     (.clk(clk), .n_rst(btn[0]), .one_sec_flag(one_sec_flag), .seg7val_out(seg7val));
   

   cntup_led cntup_led_inst
     (.clk(clk), .n_rst(btn[0]), .one_sec_flag(one_sec_flag), .led_out(led));
   
   
   // cnt_default
   //   #(.FREQUENCY(FREQUENCY))
   // cnt_default_inst
   //   (.clk(clk), .n_rst(btn[0]), .seg7val_out(seg7val), .led_out(led));


   seg7dec seg7dec_inst
     (.seg7val_in(seg7val), .seg7led_out(seg7led));
   

   
endmodule // top

`default_nettype wire
