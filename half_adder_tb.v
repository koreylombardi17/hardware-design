`timescale 1ns / 1ps

module half_adder_tb();
    reg in_1, in_2;
    wire sum, carry_out;
    
    half_adder dut (in_1, in_2, sum, carry_out);
    
    initial begin
        in_1=0; in_2=0;
        #10
        in_1=0; in_2=1;
        #10
        in_1=1; in_2=0;
        #10
        in_1=1; in_2=1;
        #10 
        $finish;
    end   
endmodule : half_adder_tb


