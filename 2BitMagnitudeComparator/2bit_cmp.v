// bit2_cmp.v

module bit2_cmp (
	input [1:0] a,
	input [1:0] b,
	output reg [2:0] out
);

	always @ (*) begin
		if (a > b) 
			out = 3'b100;
		else if (a == b)
			out = 3'b010;
		else
			out = 3'b001;
	end

endmodule