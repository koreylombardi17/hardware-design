`timescale 1ns / 1ps


module jk_tb();
    reg j = 0;
    reg k = 0;
    reg clk = 0;
    reg reset;
    wire q, q_bar;
    
    always 
        #50
        clk <= ~clk;
    
    jk_flipflop dut (clk, reset, j, k, q, q_bar);
    
    initial begin
        reset = 0; j = 0; k = 0;
        #50
        reset = 0; j = 0; k = 0;
        #50
        reset = 0; j = 0; k = 1;
        #50
        reset = 0; j = 0; k = 1;
        #50
        reset = 1; j = 1; k = 0;
        #50
        reset = 1; j = 0; k = 1;
        #50
        reset = 1; j = 0; k = 0;
        #50
        reset = 1; j = 1; k = 1;
        #50
        $finish;
    end
endmodule
