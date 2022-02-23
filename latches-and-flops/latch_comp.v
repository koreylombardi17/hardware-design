`timescale 1ns / 1ps

module latch_comp(q_out, enable, data);
    output q_out;
    input enable, data;
    reg q_out;
    
    always @ (enable or data) 
        begin
            if(enable == 0)q_out = ~data;
        end
endmodule
