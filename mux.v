module mux2to1(input[3:0] a, input[3:0] b, input sel, output[3:0] o);
    assign o = sel ? a:b;
endmodule
