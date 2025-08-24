module tb_decoder_3to8(

    );
    reg [2:0]x;
    wire [7:0]y;
    decoder_3to8 dut(.x(x),.y(y));
    initial begin
    $monitor("x=%b,y=%b",x,y);
    x=3'b000;#10;
    x=3'b001;#10;
    x=3'b010;#10;
    x=3'b011;#10;
    x=3'b100;#10;
    x=3'b101;#10;
    x=3'b110;#10;
    x=3'b111;#10;
    $finish;
    end
endmodule
