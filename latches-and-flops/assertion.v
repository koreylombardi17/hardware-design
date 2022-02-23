`timescale 1ns / 1ps

module assertion(in, out);
    input [3:0] in;
    output reg [3:0] out;
    
//    out[0] = 0;
//    out[1] = 0;
//    out[2] = 0;
//    out[3] = 0;
    
    always @(*)
        if (in[0] == 0)begin
            out[0] <= in[0];
            out[1] <= in[1];
            out[2] <= in[2];
            out[3] <= in[3];
        end 
        else begin
            out[0] <= 1'b0;
            out[1] <= 1'b0;
            out[2] <= 1'b0;
            out[3] <= 1'b0;
        end
endmodule
