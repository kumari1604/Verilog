`timescale 1ns / 1ps



module tb_encoder_8to3(

    );
    reg [7:0]x;
    wire [2:0]y;
    encoder_8to3 dut (.x(x),.y(y));
    initial begin 
    $monitor("x=%d,y=%b",x,y);
    x=8'b00000001;#10;
    x=8'b00000010;#10;
    x=8'b00000100;#10;
    x=8'b00001000;#10;
    x=8'b00010000;#10;
    x=8'b00100000;#10;
    x=8'b01000000;#10;
    x=8'b10000000;#10;
    $finish;
    end
endmodule
