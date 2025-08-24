`timescale 1ns / 1ps


module decoder2to4(
    input [1:0] x,
    output [3:0] y
    );
    wire x0_bar,x1_bar;
    not(x0_bar,x[0]);
    not(x1_bar,x[1]);
    and(y[0],x1_bar,x0_bar);// y0=x1' & x0'
    and(y[1],x1_bar,x[0]); // y1=x1' & x0
    and(y[2],x[1],x0_bar);  // y2=x1&x0'
    and(y[3],x[1],x[0]); // y3=x1&x0
    
endmodule
