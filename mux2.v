
module mux2(
    input a,
    input b,
    input sel,
    output o
);

assign o = (sel == 1) ? a : b;

endmodule
