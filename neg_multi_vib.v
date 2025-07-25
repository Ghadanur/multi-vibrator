`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Ghada
// Create Date: 06/26/2025 07:34:22 AM
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module neg_multi_vib(
    input clk,rst,
    input sig,
    output out
    );
    reg sig_d;          
    always @ (posedge clk or negedge rst)
     begin 
         while(!rst) begin
            @(posedge clk)
            sig_d<=sig;
          end  
     end
     assign out = (sig_d & ~sig);
          
endmodule
