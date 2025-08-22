module comparator(
    input a,
    input b,
    output e,
    output g,
    output l
    );wire t1,t2;
    xnor g1(e,a,b);
    not g2(t1,a);
    not g3(t2,b);
    and g4(g,a,t2);
    and g5(l,t1,b);
endmodule
