`timescale 1ns / 1ps

module full_adder_tb();
    reg in_1, in_2, carry_in;
    wire sum, carry_out;
    
    full_adder dut (in_1, in_2, carry_in, sum, carry_out);
    
    initial begin
        in_1=0; in_2=0; carry_in=0;
        #10
        in_1=0; in_2=1; carry_in=0;
        #10
        in_1=1; in_2=0; carry_in=0;
        #10
        in_1=1; in_2=1; carry_in=0;
        #10 
        $finish;
    end   
endmodule : full_adder_tb
