`timescale 1ns / 1ps



module tb_comparator4bit(

    );
    reg [3:0]a;
    reg [3:0]b;
    wire e,g,l;
    comparator4bit dut(.a(a),.b(b),.e(e),.g(g),.l(l));
    initial begin
    $monitor("a=%b,b=%b,e=%b,g=%b,l=%b",a,b,e,g,l);
    a=4'b0000;b=4'b0010;#10;
    a=4'b1000;b=4'b1000;#10;
    a=4'b0001;b=4'b1011;#10;
    a=4'b1111;b=4'b0000;#10
    a=4'b1011;b=4'b1010;#10;
    $finish;
    end
endmodule
