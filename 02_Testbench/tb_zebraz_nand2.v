//////////////////////////////////////////////////////////////////////////////////
// Company        : Personal Project
// Engineer       : Mohammed Danish Ansari
//
// Project Name   : Zebraz-2
// Module Name    : zebraz_nand2
// Module ID      : ZBZ-STD-002
//
// Description:
// -----------------------------------------------------------------------------
// 2-input NAND Gate
//
// Boolean Equation:
//      Y = ~(A & B)
//
// This module forms the second standard cell of the Zebraz library.
// -----------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module tb_zebraz_nand2;

    reg A;
    reg B;

    wire Y;

    zebraz_nand2 uut (
        .A(A),
        .B(B),
        .Y(Y)
    );

    initial begin

        $display("---------------------------------------------");
        $display("      Zebraz NAND2 Testbench");
        $display("---------------------------------------------");
        $display("Time\tA\tB\tY");
        $monitor("%0t\t%b\t%b\t%b",$time,A,B,Y);

        A = 0; B = 0;
        #10;

        A = 0; B = 1;
        #10;

        A = 1; B = 0;
        #10;

        A = 1; B = 1;
        #10;

        $display("---------------------------------------------");
        $display("Simulation Completed");
        $display("---------------------------------------------");

        $finish;

    end

endmodule