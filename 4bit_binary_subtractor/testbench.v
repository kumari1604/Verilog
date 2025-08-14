module tb_binary_subtractor();
    reg [3:0]a;
    reg [3:0]b;
    reg cin=0;
    wire [3:0]s;
    wire cout;
    
    binary_subtractor dut(.s(s),.cout(cout),.a(a),.b(b),.cin(cin));
    initial begin
    $monitor ("a=%b,b=%b,cin=%b,s=%b,cout=%b",a,b,cin,s,cout);
   
    a=4'b1001;b=4'b1000;#10;
    a=4'b1111;b=4'b1111;#10;
    a=4'b1000;b=4'b1001;#10;
    a=4'b1010;b=4'b0110;#10;
    a=4'b0110;b=4'b1000;#10;
    $stop;
    end
    endmodule