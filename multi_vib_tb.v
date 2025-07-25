`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Ghada
// Create Date: 06/26/2025 01:04:28 AM
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module multi_vib_tb;
reg sig,clk,rst;
wire out;

multi_vib uut (
   .sig(sig),
   .clk(clk),
   .rst(rst),
   .out(out)
   );
   
initial begin
clk =0;
forever #5 clk=~clk;
end
initial begin
;
rst = 1'b0; sig =1'b0; #10;
for(integer i=0;i<5;i=i+1) begin
    rst = 1'b0; sig =1'b0; #10;
    rst = 1'b0; sig =1'b0; #10;
    rst = 1'b0; sig =1'b1; #10;
    rst = 1'b0; sig =1'b1; #10;
    rst = 1'b0; sig =1'b1; #10;
    rst = 1'b0; sig =1'b0; #10;
    rst = 1'b0; sig =1'b0; #10;
    rst = 1'b0; sig =1'b1; #10;
    rst = 1'b0; sig =1'b1; #10;
    rst = 1'b1; sig =1'b1; #10;
    end
  
 $finish;
 end
endmodule 
