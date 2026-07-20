//////////////////////////////////////////////////////////////////////////////////
// Company        : Personal Project
// Engineer       : Mohammed Danish Ansari
//
// Project Name   : Zebraz-2
// Module Name    : zebraz_inv
// File Name      : zebraz_inv.v
//
// Description:
// -----------------------------------------------------------------------------
// 1-bit Inverter (NOT Gate)
//
// Boolean Equation:
//      Y = ~A
//
// This module is the first standard cell in the Zebraz library.
// It will be used in constructing higher-level logic gates and processor modules.
//
// -----------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module tb_zebraz_inv;

    reg A;
    wire Y;

    zebraz_inv uut (

        .A(A),
        .Y(Y)

    );

    initial
    begin

        $display("--------------------------------");
        $display("    Zebraz Inverter Test");
        $display("--------------------------------");

        $monitor("Time=%0t  A=%b  Y=%b", $time, A, Y);

        A = 0;
        #10;

        A = 1;
        #10;

        $display("--------------------------------");
        $display("Simulation Completed");
        $display("--------------------------------");

        $finish;

    end

endmodule
