module tb_encoder_4to2(

    );
    reg [3:0]x;
    wire [1:0]y;
    encoder_4to2 dut(.x(x),.y(y));
    initial begin 
    $monitor("x=%b,y=%b",x,y);
    
    x=4'b0001;#10;
    x=4'b0010;#10;
    x=4'b0100;#10;
    x=4'b1000;#10;
    $finish;
    end
endmodule
