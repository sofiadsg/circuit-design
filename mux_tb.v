module mux2to1_tb ();

    reg [3:0] a;
    reg [3:0] b;
    reg sel;
    wire [3:0] out;

    mux2to1 m(.a (a),.b(b),.sel(sel),.o(out));

    initial
    begin
        $dumpfile("mux_dumpfile.vcd");
        $dumpvars(0, mux2to1_tb);
        a = 4'b1111;
        b = 4'b0001;
        sel = 0;
        #10 sel = 1;
        #10 sel = 0;
    end

endmodule 