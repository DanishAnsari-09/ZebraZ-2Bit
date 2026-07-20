`timescale 1ns / 1ps

module tb_zebraz_and2;

reg A;
reg B;

wire Y;

zebraz_and2 uut(
    .A(A),
    .B(B),
    .Y(Y)
);

initial begin

    $display("---------------------------");
    $display("Zebraz AND2 Test");
    $display("---------------------------");

    $monitor("%0t A=%b B=%b Y=%b",$time,A,B,Y);

    A=0;B=0; #10;
    A=0;B=1; #10;
    A=1;B=0; #10;
    A=1;B=1; #10;

    $finish;

end

endmodule