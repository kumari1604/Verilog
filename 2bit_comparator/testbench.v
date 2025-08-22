
module tb_comparator2bit(

    );
    reg [1:0]a;
    reg [1:0]b;
    wire g2;
    wire l2;
    wire e2;
    
    comparator2bit dut(.g2(g2),.l2(l2),.e2(e2),.a(a),.b(b));
    initial begin
    $monitor("a=%bb,b=%b,e2=%b,g2=%b,l2=%b",a,b,e2,g2,l2);
    a=2'b00;b=2'b10;#10;
    a=2'b11;b=2'b11;#10;
    a=2'b01;b=2'b00;#10;
    a=2'b10;b=2'b10;#10;
    a=2'b00;b=2'b00;#10;
    a=2'b10;b=2'b01;#10;
    $finish;
    end
endmodule