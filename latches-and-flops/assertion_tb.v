`timescale 1ns / 1ps

module assertion_tb();
    reg[3:0] in;
    wire[3:0] out;
    
    assertion dut (in, out);
    
    initial begin
        in=4'b1100;
        #50
        in=4'b0101;
        #50
        $finish;
    end
endmodule : assertion_tb
