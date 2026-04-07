// bit2_cmp.v

module cmp_2bit (
    input  [1:0] a,
    input  [1:0] b,
    output [2:0] out  // {gt, eq, lt}
);

  assign out = (a > b) ? 3'b100 : (a == b) ? 3'b010 : 3'b001;

endmodule
