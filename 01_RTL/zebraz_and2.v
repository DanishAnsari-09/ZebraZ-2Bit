//////////////////////////////////////////////////////////////////////////////////
// Company        : Personal Project
// Engineer       : Mohammed Danish Ansari
//
// Project Name   : Zebraz-2
// Module Name    : zebraz_and2
// Module ID      : ZBZ-STD-003
//
// Description:
// -----------------------------------------------------------------------------
// 2-input AND Gate
//
// Boolean Equation:
//      Y = A & B
//
// This module forms the third standard cell of the Zebraz library.
// -----------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module zebraz_and2 (
    input  wire A,
    input  wire B,
    output wire Y
);

wire nand_out;

zebraz_nand2 U1 (
    .A(A),
    .B(B),
    .Y(nand_out)
);

zebraz_inv U2 (
    .A(nand_out),
    .Y(Y)
);

endmodule