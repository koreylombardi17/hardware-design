`timescale 1ns / 1ps

module full_adder(in_1, in_2, carry_in, sum, carry_out);
    input in_1, in_2, carry_in;
    output sum, carry_out;
    wire w_1, w_2, w_3;
    half_adder half_adder_1(in_1, in_2, w_1, w_2);
    half_adder half_adder_2(carry_in, w_1, sum, w_3);
    or or_1(carry_out, w_3, w_2);
endmodule
