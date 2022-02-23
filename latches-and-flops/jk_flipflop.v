`timescale 1ns / 1ps

module jk_flipflop(clk, reset, j, k, q, q_bar);
    input clk, reset, j, k;
    output q, q_bar; 
    reg q;
    
    assign q_bar = ~q;

    always @ (posedge clk) begin
        if(reset == 0) q <= 0;
        else if(j == 0 & k == 0) q <= q;
        else if(j == 0 & k == 1) q <= 0;
        else if(j == 1 & k == 0) q <= 1;
        else if(j == 1 & k == 1) q <= ~q;
    end
endmodule
