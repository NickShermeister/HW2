// Multiplexer testbench
`timescale 1 ns / 1 ps
`include "multiplexer.v"

module testMultiplexer ();
  // Your test code here
  reg select0, select1, in0, in1, in2, in3;
  wire out;
  wire out2;

  behavioralMultiplexer multiplexer (out2, select0, select1, in0, in1, in2, in3);

  structuralMultiplexer multiplexer2 (out, select0, select1, in0, in1, in2, in3);

  initial begin

    $display("Structural Multiplexer Test Bench:");
    $display("select0, select1 | O0 O1 O2 O3 | Output | Expected Output");
    select0=0;select1=0;in0 =0;in1=0;in2=0;in3=0; #1000
    $display("%b        %b       | %b  %b  %b  %b  | %b      | in0", select0, select1, in0, in1, in2, in3, out);
    select0=0;select1=0;in0 =1;in1=0;in2=0;in3=0; #1000
    $display("%b        %b       | %b  %b  %b  %b  | %b      | in0", select0, select1, in0, in1, in2, in3, out);
    select0=1;select1=0;in0 =0;in1=0;in2=0;in3=0; #1000
    $display("%b        %b       | %b  %b  %b  %b  | %b      | in1", select0, select1, in0, in1, in2, in3, out);
    select0=1;select1=0;in0 =0;in1=1;in2=0;in3=0; #1000
    $display("%b        %b       | %b  %b  %b  %b  | %b      | in1", select0, select1, in0, in1, in2, in3, out);
    select0=0;select1=1;in0 =0;in1=0;in2=0;in3=0; #1000
    $display("%b        %b       | %b  %b  %b  %b  | %b      | in2", select0, select1, in0, in1, in2, in3, out);
    select0=0;select1=1;in0 =0;in1=0;in2=1;in3=0; #1000
    $display("%b        %b       | %b  %b  %b  %b  | %b      | in2", select0, select1, in0, in1, in2, in3, out);
    select0=1;select1=1;in0 =0;in1=0;in2=0;in3=0; #1000
    $display("%b        %b       | %b  %b  %b  %b  | %b      | in3", select0, select1, in0, in1, in2, in3, out);
    select0=1;select1=1;in0 =0;in1=0;in2=0;in3=1; #1000
    $display("%b        %b       | %b  %b  %b  %b  | %b      | in3", select0, select1, in0, in1, in2, in3, out);

    $display("Behavioral Multiplexer Test Bench:");
    $display("select0, select1 | O0 O1 O2 O3 | Output | Expected Output");
    select0=0;select1=0;in0 =0;in1=0;in2=0;in3=0; #1000
    $display("%b        %b       | %b  %b  %b  %b  | %b      | in0", select0, select1, in0, in1, in2, in3, out2);
    select0=0;select1=0;in0 =1;in1=0;in2=0;in3=0; #1000
    $display("%b        %b       | %b  %b  %b  %b  | %b      | in0", select0, select1, in0, in1, in2, in3, out2);
    select0=1;select1=0;in0 =0;in1=0;in2=0;in3=0; #1000
    $display("%b        %b       | %b  %b  %b  %b  | %b      | in1", select0, select1, in0, in1, in2, in3, out2);
    select0=1;select1=0;in0 =0;in1=1;in2=0;in3=0; #1000
    $display("%b        %b       | %b  %b  %b  %b  | %b      | in1", select0, select1, in0, in1, in2, in3, out2);
    select0=0;select1=1;in0 =0;in1=0;in2=0;in3=0; #1000
    $display("%b        %b       | %b  %b  %b  %b  | %b      | in2", select0, select1, in0, in1, in2, in3, out2);
    select0=0;select1=1;in0 =0;in1=0;in2=1;in3=0; #1000
    $display("%b        %b       | %b  %b  %b  %b  | %b      | in2", select0, select1, in0, in1, in2, in3, out2);
    select0=1;select1=1;in0 =0;in1=0;in2=0;in3=0; #1000
    $display("%b        %b       | %b  %b  %b  %b  | %b      | in3", select0, select1, in0, in1, in2, in3, out2);
    select0=1;select1=1;in0 =0;in1=0;in2=0;in3=1; #1000
    $display("%b        %b       | %b  %b  %b  %b  | %b      | in3", select0, select1, in0, in1, in2, in3, out2);


  end
  endmodule
