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


   // count 1 second
   wire 		     one_sec_flag;
   cnt_sec
     #(.FREQUENCY(FREQUENCY))
   cnt_sec_inst
     (.clk(clk), .n_rst(btn[0]), .one_sec_flag_out(one_sec_flag));


   // count up 7segLEDs
   wire [3:0] 		     seg7val[1:0];
   cntup_seg7 cntup_seg7_inst
     (.clk(clk), .n_rst(btn[0]), .one_sec_flag(one_sec_flag), .seg7val_out(seg7val));
   
   // 7seg decorder
   seg7dec seg7dec_inst
     (.seg7val_in(seg7val), .seg7led_out(seg7led));

   
   // count up LEDs
   cntup_led cntup_led_inst
     (.clk(clk), .n_rst(btn[0]), .one_sec_flag(one_sec_flag), .led_out(led));
   


   // pr ip
   wire 		     freeze;
   wire [2:0] 		     pr_ip_status;
   pr_ip pr_ip_inst
     (
      .clk(clk),
      .nreset(1'b1),
      .freeze(freeze),
      .pr_start(1'b0),
      .status(pr_ip_status),
      .data(16'b0),
      .data_valid(1'b0),
      .data_ready()
      );
   



   
endmodule // top

`default_nettype wire
