`timescale 1ns / 1ps

// 1bit comparator
module comp1(
input a,
input b,
output e,
output g,
output l
);wire t1,t2;
xnor(e,a,b);
not (t1,a);
not (t2,b);
and (g,a,t2);
and (l,t1,b);

endmodule
module comparator2bit(
    input [1:0] a,
    input [1:0] b,
    output e2,
    output g2,
    output l2
    );
  
    wire e0,g0,l0,e1,g1,l1;
    comp1 m1(.e(e0),.g(g0),.l(l0),.a(a[0]),.b(b[0]));
    comp1 m2(.e(e1),.g(g1),.l(l1),.a(a[1]),.b(b[1]));
    and (e2,e0,e1);
      wire w1;
    and (w1,g0,e1);
  
    or (g2,w1,g1);
    wire w2;
    
    and (w2,e1,l0);
    or (l2,w2,l1);
endmodule
