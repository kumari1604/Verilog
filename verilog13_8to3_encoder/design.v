`timescale 1ns / 1ps


module encoder_8to3(
    input [7:0] x,
    output [2:0] y
    );
    
    or(y[2],x[4],x[5],x[6],x[7]);
    or(y[1],x[2],x[3],x[6],x[7]);
    or(y[0],x[1],x[3],x[5],x[7]);
endmodule
