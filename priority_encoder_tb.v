// Testbench for 4-to-2 Priority Encoder

`timescale 1ns/1ps

module priority_encoder_tb;

reg  [3:0] D;
wire [1:0] Y;
wire       valid;

priority_encoder uut (
    .D(D),
    .Y(Y),
    .valid(valid)
);

initial begin

    $display("Time\tD\tY\tValid");
    $monitor("%0t\t%b\t%b\t%b", $time, D, Y, valid);

    // No input
    D = 4'b0000;
    #10;

    // D0 active
    D = 4'b0001;
    #10;

    // D1 active
    D = 4'b0010;
    #10;

    // D2 active
    D = 4'b0100;
    #10;

    // D3 active
    D = 4'b1000;
    #10;

    // D0 and D1 active: D1 has priority
    D = 4'b0011;
    #10;

    // D2 and D3 active: D3 has priority
    D = 4'b1100;
    #10;

    // All inputs active: D3 has priority
    D = 4'b1111;
    #10;

    $finish;
end

endmodule