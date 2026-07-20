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

module zebraz_inv(

    input  A,
    output Y

);

assign Y = ~A;

endmodule