`default_nettype none
module seg7dec
  (
   input wire [3:0]  seg7val_in[1:0],
   output wire [7:0] seg7led_out[1:0]	    
   );

   assign seg7led_out[0] = decord(seg7val_in[0]);
   assign seg7led_out[1] = decord(seg7val_in[1]);

endmodule // seg7dec

function [7:0] decord(input [3:0] val);
   case(val)
     4'h0:    decord = 8'b1100_0000;
     4'h1:    decord = 8'b1111_1001;
     4'h2:    decord = 8'b1010_0100;
     4'h3:    decord = 8'b1011_0000;
     4'h4:    decord = 8'b1001_1001;
     4'h5:    decord = 8'b1001_0010;
     4'h6:    decord = 8'b1000_0010;
     4'h7:    decord = 8'b1101_1000;
     4'h8:    decord = 8'b1000_0000;
     4'h9:    decord = 8'b1001_0000;
     default: decord = 8'b1111_1111;
   endcase
endfunction

`default_nettype wire
