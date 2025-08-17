`timescale 1ns / 1ps



module tb_Binary_adder_subtractor();
reg [3:0]a;
reg [3:0]b;
reg cin;
reg en;
wire [3:0]s;
wire cout;
Binary_adder_subtractor dut(.s(s),.cout(cout),.a(a),.b(b),.cin(cin),.en(en));
initial begin 
$monitor("a=%b,b=%b,cin=%b,en=%b,s=%b,cout=%b",a,b,cin,en,s,cout);
assign cin=en;
en=1'b0;
a=4'b1000;b=4'b0001;#10;
a=4'b0010;b=4'b0110;#10;
en=1'b1;
a=4'b1100;b=4'b1010;#10;
a=4'b1000;b=4'b0001;#10;
a=4'b1000;b=4'b1001;#10;
a=4'b1010;b=4'b1100;#10;
$stop;
end
endmodule
