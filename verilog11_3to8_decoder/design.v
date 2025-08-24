`timescale 1ns / 1ps

module decoder_2to4(
input en,
input [1:0]x,
output [3:0]y);
wire x1_bar,x0_bar;               
    not(x1_bar,x[1]);
    not(x0_bar,x[0]);
    and(y[0],x1_bar,x0_bar,en);
    and(y[1],x1_bar,x[0],en);
    and(y[2],x[1],x0_bar,en);
    and(y[3],x[1],x[0],en);
endmodule
module decoder_3to8(
    input [2:0] x,
    output [7:0] y
    );
    wire w;
    not(w,x[2]);
    decoder_2to4 m1(.x(x[1:0]),.y(y[3:0]),.en(w));
    decoder_2to4 m2(.x(x[1:0]),.y(y[7:4]),.en(x[2]));
    endmodule
