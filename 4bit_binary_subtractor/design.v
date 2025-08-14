// 4 bit binary subtrator using 4 bit ripple carry adders in gate level modeling


// full adder code
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

// 4 bit ripple carry adder code-module
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


// 4 binary subtractor module using RCA
module binary_subtractor(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output wire signed [3:0] s,
    output cout
    );
   
    wire [3:0]q; // inverted inputs of b --> b'
 not a1( q[0],b[0]);
 not a2(q[1],b[1]);
 not a3(q[2],b[2]);
 not a4(q[3],b[3]);
  wire [3:0]w;  // outputs of first rca w0,w1,w2,w3;
    wire cout1;  // end around carry of first rca --->cout 
 RCA m1(.s(w),.cout(cout1),.a(a),.b(q),.cin(1'b1));
 wire t1; // temporary wire for inverting cout1
 not (t1,cout1);
 wire [3:0]p; // xor operation between cout1 and frst Rca sum outputs(which gives 1s compliment ) ....which are inputs to the second rca
 xor x1(p[0],t1,w[0]);
 xor x2(p[1],t1,w[1]);
 xor x3(p[2],t1,w[2]);
 xor x4(p[3],t1,w[3]);
 wire [3:0]d; // grounding all the second inputs d0,d1,d2,d3 of the second RCA 
assign d = 4'b0000;
RCA m2(.s(s),.cout(cout),.a(p),.b(d),.cin(t1));
endmodule
