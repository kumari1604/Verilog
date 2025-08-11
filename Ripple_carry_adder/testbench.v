module tb_RCA(

    );
    reg [3:0]a;reg[3:0]b;reg cin;
    wire [3:0]sum;
    wire carry;
    RCA  uut(.sum(sum),.carry(carry),.a(a),.b(b),.cin(cin));

initial begin
$monitor("a=%b,b=%b,cin=%b,sum=%b,carry=%b",a,b,cin,sum,carry);

    a=4'b0001;b=4'b0001; cin=1'b0;#10;
    
    a=4'b0010;b=4'b0001; cin=1'b0;#10;
     
    a=4'b1000;b=4'b0000;cin=1'b0;#10;
    $finish;
    
 end   
endmodule