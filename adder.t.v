// Adder testbench
`timescale 1 ns / 1 ps
`include "adder.v"

module testFullAdder();
    reg a, b, carryin;
    wire sum, carryout, sum2, carryout2;

    behavioralFullAdder adder2 (sum2, carryout2, a, b, carryin);

    structuralFullAdder adder (sum, carryout, a, b, carryin);


    initial begin
        // Your test code here
        $display("Structural Adder:");
        $display("carryin | a b | sum | carryout | Expected sum | Expected carryout");
        a=0;b=0;carryin=0; #1000
        $display("%b       | %b %b | %b   | %b        | 0            | 0", carryin, a, b, sum, carryout);
        a=1;b=0;carryin=0; #1000
        $display("%b       | %b %b | %b   | %b        | 1            | 0", carryin, a, b, sum, carryout);
        a=0;b=1;carryin=0; #1000
        $display("%b       | %b %b | %b   | %b        | 1            | 0", carryin, a, b, sum, carryout);
        a=1;b=1;carryin=0; #1000
        $display("%b       | %b %b | %b   | %b        | 0            | 1", carryin, a, b, sum, carryout);
        a=0;b=0;carryin=1; #1000
        $display("%b       | %b %b | %b   | %b        | 1            | 0", carryin, a, b, sum, carryout);
        a=1;b=0;carryin=1; #1000
        $display("%b       | %b %b | %b   | %b        | 0            | 1", carryin, a, b, sum, carryout);
        a=0;b=1;carryin=1; #1000
        $display("%b       | %b %b | %b   | %b        | 0            | 1", carryin, a, b, sum, carryout);
        a=1;b=1;carryin=1; #1000
        $display("%b       | %b %b | %b   | %b        | 1            | 1", carryin, a, b, sum, carryout);

        $display("Behavioral Adder");
        $display("carryin | a b | sum | carryout | Expected sum | Expected carryout");
        a=0;b=0;carryin=0; #1000
        $display("%b       | %b %b | %b   | %b        | 0            | 0", carryin, a, b, sum2, carryout2);
        a=1;b=0;carryin=0; #1000
        $display("%b       | %b %b | %b   | %b        | 1            | 0", carryin, a, b, sum2, carryout2);
        a=0;b=1;carryin=0; #1000
        $display("%b       | %b %b | %b   | %b        | 1            | 0", carryin, a, b, sum2, carryout2);
        a=1;b=1;carryin=0; #1000
        $display("%b       | %b %b | %b   | %b        | 0            | 1", carryin, a, b, sum2, carryout2);
        a=0;b=0;carryin=1; #1000
        $display("%b       | %b %b | %b   | %b        | 1            | 0", carryin, a, b, sum2, carryout2);
        a=1;b=0;carryin=1; #1000
        $display("%b       | %b %b | %b   | %b        | 0            | 1", carryin, a, b, sum2, carryout2);
        a=0;b=1;carryin=1; #1000
        $display("%b       | %b %b | %b   | %b        | 0            | 1", carryin, a, b, sum2, carryout2);
        a=1;b=1;carryin=1; #1000
        $display("%b       | %b %b | %b   | %b        | 1            | 1", carryin, a, b, sum2, carryout2);




    end
endmodule
