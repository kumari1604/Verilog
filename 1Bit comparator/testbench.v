module tb_comparator();
reg a;
reg b;

wire e,g,l;
comparator uut(.a(a),.b(b),.e(e),.g(g),.l(l));
initial begin
$monitor("a=%b,b=%b,e=%b,g=%b,l=%b",a,b,e,g,l);
a=1;b=0;#10;
a=0;b=0;#10;
a=1;b=1;#10;
a=0;b=1;#10;
$stop;
end
endmodule
