module tb_decoder2to4(

    );
    reg [1:0]x;
    wire [3:0]y;
    decoder2to4 dut(.x(x),.y(y));
    initial begin
    $monitor("x=%b,y=%b",x,y);
    x=2'b00;#10;
    x=2'b01;#10;
    x=2'b10;#10;
    x=2'b11;#10;
    $finish;
    end
endmodule