// Decoder testbench
`timescale 1 ns / 1 ps
`include "decoder.v"

module testDecoder ();
    reg addr0, addr1;
    reg enable;
    wire out0,out1,out2,out3,out0b,out1b,out2b,out3b;

    behavioralDecoder decoderb (out0b,out1b,out2b,out3b,addr0,addr1,enable);
    structuralDecoder decoder (out0,out1,out2,out3,addr0,addr1,enable); // Swap after testing

    initial begin
    $dumpfile("decoderr.vcd");
    $dumpvars();
    $display();

    $display("Structural Decoder Test Bench:");
    $display("En A0 A1| O0 O1 O2 O3 | Expected Output");
    enable=0;addr0=0;addr1=0; #1000
    $display("%b  %b  %b |  %b  %b  %b  %b | All false", enable, addr0, addr1, out0, out1, out2, out3);
    enable=0;addr0=1;addr1=0; #1000
    $display("%b  %b  %b |  %b  %b  %b  %b | All false", enable, addr0, addr1, out0, out1, out2, out3);
    enable=0;addr0=0;addr1=1; #1000
    $display("%b  %b  %b |  %b  %b  %b  %b | All false", enable, addr0, addr1, out0, out1, out2, out3);
    enable=0;addr0=1;addr1=1; #1000
    $display("%b  %b  %b |  %b  %b  %b  %b | All false", enable, addr0, addr1, out0, out1, out2, out3);
    enable=1;addr0=0;addr1=0; #1000
    $display("%b  %b  %b |  %b  %b  %b  %b | O0 Only", enable, addr0, addr1, out0, out1, out2, out3);
    enable=1;addr0=1;addr1=0; #1000
    $display("%b  %b  %b |  %b  %b  %b  %b | O1 Only", enable, addr0, addr1, out0, out1, out2, out3);
    enable=1;addr0=0;addr1=1; #1000
    $display("%b  %b  %b |  %b  %b  %b  %b | O2 Only", enable, addr0, addr1, out0, out1, out2, out3);
    enable=1;addr0=1;addr1=1; #1000
    $display("%b  %b  %b |  %b  %b  %b  %b | O3 Only", enable, addr0, addr1, out0, out1, out2, out3);

    $display("\nBehavioral Decoder Test Bench:");
    $display("En A0 A1| O0 O1 O2 O3 | Expected Output");
    enable=0;addr0=0;addr1=0; #1000
    $display("%b  %b  %b |  %b  %b  %b  %b | All false", enable, addr0, addr1, out0b, out1b, out2b, out3b);
    enable=0;addr0=1;addr1=0; #1000
    $display("%b  %b  %b |  %b  %b  %b  %b | All false", enable, addr0, addr1, out0b, out1b, out2b, out3b);
    enable=0;addr0=0;addr1=1; #1000
    $display("%b  %b  %b |  %b  %b  %b  %b | All false", enable, addr0, addr1, out0b, out1b, out2b, out3b);
    enable=0;addr0=1;addr1=1; #1000
    $display("%b  %b  %b |  %b  %b  %b  %b | All false", enable, addr0, addr1, out0b, out1b, out2b, out3b);
    enable=1;addr0=0;addr1=0; #1000
    $display("%b  %b  %b |  %b  %b  %b  %b | O0 Only", enable, addr0, addr1, out0b, out1b, out2b, out3b);
    enable=1;addr0=1;addr1=0; #1000
    $display("%b  %b  %b |  %b  %b  %b  %b | O1 Only", enable, addr0, addr1, out0b, out1b, out2b, out3b);
    enable=1;addr0=0;addr1=1; #1000
    $display("%b  %b  %b |  %b  %b  %b  %b | O2 Only", enable, addr0, addr1, out0b, out1b, out2b, out3b);
    enable=1;addr0=1;addr1=1; #1000
    $display("%b  %b  %b |  %b  %b  %b  %b | O3 Only", enable, addr0, addr1, out0b, out1b, out2b, out3b);



    $finish();

    end

endmodule
