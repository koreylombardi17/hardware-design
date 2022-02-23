`timescale 1ns / 1ps

module transparent_latch_tb();
    reg en, data;
    wire q_out;
    
    transparent_latch dut (q_out, en, data);
    
    initial begin
        en = 0; data = 0;
        #10
        en = 0; data = 1;
        #10
        en = 1; data = 0;
        #10
        en = 1; data = 1;
        #10
        en = 0; data = 0;
        #10
        en = 0; data = 1;
        #10
        en = 1; data = 0;
        #10
        en = 1; data = 1;
        #10
        $finish;
    end
endmodule : transparent_latch_tb
