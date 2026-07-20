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

module zebraz_nand2 (
    input  wire A,
    input  wire B,
    output wire Y
);

assign Y = ~(A & B);

endmodule