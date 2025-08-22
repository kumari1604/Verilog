`timescale 1ns / 1ps

module comp1(
input a,
input b,
output e0,
output g0,
output l0);
xnor(e0,a,b);
wire t1,t2;
not(t1,a); // t1=~a inverted a
not(t2,b); // t2=~b inverted b
and(g0,a,t2); //g0(greater a>b )= ab'

and(l0,t1,b);
endmodule


module comparator4bit(
    input [3:0] a,
    input [3:0] b,
    output e,
    output g,
    output l
    );
    wire [3:0]E;wire[3:0]G;wire[3:0]L;
    wire w1,w2,w3,w4,w5,w6;
    comp1 m1(.e0(E[0]),.g0(G[0]),.l0(L[0]),.a(a[0]),.b(b[0])); //e0,g0,l0 first comprator outputs inputs are a0,b0
    comp1 m2(.e0(E[1]),.g0(G[1]),.l0(L[1]),.a(a[1]),.b(b[1]));//e1,g1,l2 second comprator outputs inputs are aa1,b1
    comp1 m3(.e0(E[2]),.g0(G[2]),.l0(L[2]),.a(a[2]),.b(b[2]));//e2,g2,l2 third comprator outputs inputs are a2,b2
    comp1 m4(.e0(E[3]),.g0(G[3]),.l0(L[3]),.a(a[3]),.b(b[3]));//e3,g3,l3fourth comprator outputs inputs are a3,b3
    and a1(e,E[3],E[2],E[1],E[0]);// e = e3e2e1e0
    and a2(w1,E[3],G[2]);
    and a3(w2,E[3],E[2],G[1]);
    and a4(w3,E[3],E[2],E[1],G[0]);
    or a5(g,w1,w2,w3,G[3]);   //g= a3b3' + e3a2b2' + e3e2a1b1' + e3e2e1a0b0' ---> g=g3+e3g2+e3e2g1+e3e2e1g0
    and g1(w4,E[3],L[2]);
    and g2(w5,E[3],E[2],L[1]);
    and g3(w6,E[3],E[2],E[1],L[0]);
    or g4(l,w4,w5,w6,L[3]);  //l=l3+e3l2+e3e2l1+e3e2e1l0
endmodule
