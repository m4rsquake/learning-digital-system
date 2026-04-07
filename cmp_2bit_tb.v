`timescale 1ps / 1ps

module cmp_2bit_tb;

  reg [1:0] a, b;
  wire [2:0] out;

  cmp_2bit u0 (
      .a  (a),
      .b  (b),
      .out(out)
  );

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, bit2_cmp_tb);

    a = 2'b00;
    b = 2'b00;
    #10;
    a = 2'b01;
    b = 2'b00;
    #10;
    a = 2'b00;
    b = 2'b01;
    #10;
    $finish;
  end
endmodule
