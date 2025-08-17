
//addition and subtraction of 4 bit data using ripple carry adders with enable

`timescale 1ns / 1ps
// full adder
module FA(input a,
input b,
input cin,
output sum,
output carry);
wire t1,t2,t3;
xor G1(sum,a,b,cin);
and G2(t1,a,b);
and G3(t2,b,cin);
and G4(t3,cin,a);
or G5(carry,t1,t2,t3);
endmodule
  
// 4 bit Ripple carry adder
module RCA(
input [3:0]a,
input [3:0]b,
input cin,
output [3:0]s,
output cout);
wire c1,c2,c3,c4;

FA M1(.sum(s[0]),.carry(c1),.a(a[0]),.b(b[0]),.cin(cin));
FA M2(.sum(s[1]),.carry(c2),.a(a[1]),.b(b[1]),.cin(c1));
FA M3(.sum(s[2]),.carry(c3),.a(a[2]),.b(b[2]),.cin(c2));
FA M4 (.sum(s[3]),.carry(c4),.a(a[3]),.b(b[3]),.cin(c3));
assign cout=c4;
endmodule

module Binary_adder_subtractor(
    input [3:0] a,
    input [3:0] b,
    input cin,
    input en,
    output [3:0] s,
    output cout
    );
    
    // based on the enable the add/sub will going to perform 
     wire [3:0]p; // going to do xor operation with 'en' if en=0 it will do addition so the b inputs are same..if en=1 it will have to do subtraction 
    // so it will give b' (inverted b) i.e 1's complement..
    // then cin will be 1 --> a+(b'+1) is the output of the First RCA b'+1 is 2's complement of b 
    xor (p[0],en,b[0]);
    xor (p[1],en,b[1]);
    xor (p[2],en,b[2]);
    xor (p[3],en,b[3]);
    wire cout1;// it is the end around carry of first rca
    wire [3:0]q; // output of the first rca
 
    RCA m1(.s(q),.cout(cout1),.a(a),.b(p),.cin(en));
    wire t1;
    not (t1,cout1);
    wire t2;                // t2=en.cout1' 
    and (t2,en,t1);
    wire [3:0]r;  // xor of t2 and [3:0]q 
    xor(r[0],t2,q[0]);
    xor (r[1],t2,q[1]);
    xor (r[2],t2,q[2]);
    xor (r[3],t2,q[3]);
     wire [3:0]g; // second inputs of the second ripple carry adder
     assign g[0]=1'b0;
     assign g[1]=1'b0;
     assign g[2]=1'b0;
     assign g[3]=1'b0;
    
    RCA m2(.s(s),.cout(cout),.a(r),.b(g),.cin(t2));   
endmodule

