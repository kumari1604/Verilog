module half_adder(
input a,
input b,
output sum,
output carry);
xor G1(sum,a,b);
and G2(carry,a,b);
endmodule

//module instantiation
module full_adder(
    input a,
    input b,
    input cin,
    output sum,
    output carry
    );
     wire s1,c1,c2;
half_adder HA1(.sum(s1),.carry(c1),.a(a),.b(b));
half_adder HA2(.sum(sum),.carry(c2),.a(s1),.b(cin));
or O(carry,c1,c2);   
endmodule
