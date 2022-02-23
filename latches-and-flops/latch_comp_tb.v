`timescale 1ns / 1ps

module latch_comp_tb();
    reg enable, data;
    wire q_out;
    
    latch_comp dut (q_out, enable, data);
    
    initial begin
        enable = 0; data = 0;
        #10
        enable = 0; data = 1;
        #10
        enable = 1; data = 0;
        #10
        enable = 1; data = 1;
        #10
        enable = 0; data = 0;
        #10
        enable = 0; data = 1;
        #10
        enable = 1; data = 0;
        #10
        enable = 1; data = 1;
        #10
        $finish;
    end
endmodule : latch_comp_tb
