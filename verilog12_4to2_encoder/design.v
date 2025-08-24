`timescale 1ns / 1ps



module encoder_4to2(
    input [3:0] x,
    output [1:0] y
    );
    or(y[1],x[3],x[2]);
    or (y[0],x[3],x[1]);
endmodule
