`timescale 1ns / 1ps



module tb_decoder_enable(

    );
    reg [1:0]x;
    reg en;
    wire [3:0]y;
    decoder_enable dut (.x(x),.en(en),.y(y));
    initial begin
    en=1'b1;
    x=2'b00;#10;
    x=2'b01;#10;
    x=2'b10;#10;
    
    x=2'b11;#10;
    en=1'b0 ;
    x=2'b00;#10;
    x=2'b01;#10;
    x=2'b10;#10;
    x=2'b11;#10;
    $finish;
    end
endmodule
