// Multiplexer circuit
`define AND and #50
`define OR or #50
`define NOT not #50

module behavioralMultiplexer
(
    output out,
    input address0, address1,
    input in0, in1, in2, in3
);
    // Join single-bit inputs into a bus, use address as index
    wire[3:0] inputs = {in3, in2, in1, in0};
    wire[1:0] address = {address1, address0};
    assign out = inputs[address];
endmodule


module structuralMultiplexer
(
    output out,
    input address0, address1,
    input in0, in1, in2, in3
);
    // Your multiplexer code here
    wire naddr0;
    wire naddr1;

    wire in0val;
    wire in1val;
    wire in2val;
    wire in3val;

    wire ifin0;
    wire ifin1;
    wire ifin2;
    wire ifin3;

    `NOT Addr0inv(naddr0, address0);
    `NOT Addr1inv(naddr1, address1);

    `AND ZeroIf(ifin0, naddr0, naddr1);
    `AND OneIf(ifin1, address0, naddr1);
    `AND TwoIf(ifin2, naddr0, address1);
    `AND ThreeIf(ifin3, address0, address1);

    `AND ZeroOut(in0val, ifin0, in0);
    `AND OneOut(in1val, ifin1, in1);
    `AND TwoOut(in2val, ifin2, in2);
    `AND ThreeOut(in3val, ifin3, in3);

    `OR FinalOut(out, in0val, in1val, in2val, in3val);






endmodule
