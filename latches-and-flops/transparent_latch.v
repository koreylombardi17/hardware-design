`timescale 1ns / 1ps

module transparent_latch(q_out, en, data);
    output q_out;
    input en, data;
    reg q_out;
    
    always @ (en or data)
        begin
            if(en)q_out = data;
        end
endmodule
