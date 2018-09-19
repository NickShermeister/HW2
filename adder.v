// Adder circuit
`define AND and #50
`define OR or #50
`define NOT not #50
`define NAND nand #50
`define NOR nor #50
`define XOR xor #50

module behavioralFullAdder
(
    output sum,
    output carryout,
    input a,
    input b,
    input carryin
);
    // Uses concatenation operator and built-in '+'
    assign {carryout, sum}=a+b+carryin;
endmodule

module structuralFullAdder
(
    output sum,
    output carryout,
    input a,
    input b,
    input carryin
);
    // Your adder code here
    wire norab;
    wire andnorc;
    wire andab;

    `AND ABand(andab, a, b);

    `XOR ABnor(norab, a, b);

    `AND NorabCand(andnorc, carryin, norab);

    // Sum:
    `XOR SumOut(sum, carryin, norab);

    //carryout
    `OR CarryoutOut(carryout, andab, andnorc);



endmodule
