// Decoder circuit

`define AND and #50
`define OR or #50
`define NOT not #50
`define NAND nand #50
`define NOR nor #50

module behavioralDecoder
(
    output out0, out1, out2, out3,
    input address0, address1,
    input enable
);
    // Uses concatenation and shift operators
    assign {out3,out2,out1,out0}=enable<<{address1,address0};
endmodule


module structuralDecoder
(
    output out0, out1, out2, out3,
    input address0, address1,
    input enable
);
    // Your decoder code here
    wire nA;
    wire nB;
    wire norAB;
    wire andAnB;
    wire andnAB;
    wire andAB;

    `NOT nota(nA, address0);
    `NOT notb(nB, address1);

    `NOR abnor(norAB, address0, address1);
    `AND and0(out0, enable, norAB);

    `AND AnBand(andAnB, address0, nB);
    `AND and1(out1, enable, andAnB);

    `AND nABand(andnAB, nA, address1);
    `AND and2(out2, enable, andnAB);

    `AND ABand(andAB, address0, address1);
    `AND and3(out3, enable, andAB);


endmodule
