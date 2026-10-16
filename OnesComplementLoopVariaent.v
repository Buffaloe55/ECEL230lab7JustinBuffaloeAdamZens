module ones_compliment(
	input [3:0] A,
	input [3:0] B,
	output [3:0] Y
);

wire [3:0] sum;
wire [3:0] carry;
wire [2:0] second_carry;

genvar i,

generate

full_adder add0(
	.A(A[0]),
	.B(B[0]),
	.Cin(1'b0),
	.Y(sum[0]),
	.Cout(carry[0])


for (i = 1; i < 4; i = i + 1) begin
	full_adder add(
	    .A(A[i]),
	    .B(B[i]),
	    .Y(sum[i]),
	    .Cin(carry[i-1]),
	    .Cout(carry[i])

endgenerate
); 

full_adder around0(
        .A(sum[0]),
        .B(1'b0),
        .Cin(carry[3]),
        .Y(Y[0]),
        .Cout(second_carry[0])
);

generate

for (i = 1; i < 4; i = i + 1) begin
	full_adder around(
	    .A(sum[i]),
            .B(1'b0),
            .Cin(second_carry[i-1]),
            .Y(Y[i]),
            .Cout(second_carry[i])
endgenerate
);

endmodule






