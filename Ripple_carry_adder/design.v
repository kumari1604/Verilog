module FA(a,b,cin,sum,carry);
input a,b,cin;
output sum,carry;
wire t1,t2,t3;
xor G1(sum,a,b,cin);
and g2(t1,a,b);
and g3(t2,b,cin);
and g4(t3,cin,a);
or g5(carry,t1,t2,t3);
endmodule

module RCA(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output carry
    );
    wire c1,c2,c3;
    FA full_adder1(.sum(sum[0]),.carry(c1),.a(a[0]),.b(b[0]),.cin(cin));
    FA full_adder2(.sum(sum[1]),.carry(c2),.a(a[1]),.b(b[1]),.cin(c1));
    FA full_adder3(.sum(sum[2]),.carry(c3),.a(a[2]),.b(b[2]),.cin(c2));
    FA full_adder4(.sum(sum[3]),.carry(carry),.a(a[3]),.b(b[3]),.cin(c3));
    
    endmodule
