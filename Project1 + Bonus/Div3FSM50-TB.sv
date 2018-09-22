// Student Name : Daniel Li
// Student Number: 50995133
// Function: Divide clock speed by 3 with a 50% duty cycle Testbench
// Modified from the up-counter TB

`timescale 1ns/1ns  // unit step = 1ns and 100ps is the resolution
module DIV3BY50_tb;
logic out;
logic clk, reset;

divideby3FSM50Duty DIV3BY50(
.y (out),
.clk (clk),
.reset (reset)
);
// Initialization
initial begin 
clk=0;
reset=1;
end

initial begin 
#15 reset =0;
end
// Defining Clock
always 
begin 
#10 clk = ~clk;
end
/*
// Print the output in a File 
//This part cannot be synthesized!
integer  file_out;
initial begin
file_out = $fopen("up_counter.txt","wb");
$fstrobe(file_out, "time\tclk\treset\tenable\tout");
end
always @(posedge clk)
begin
$fstrobe(file_out,"%3d\t%b\t%b\t%b\t%d",$time,clk,reset,enable,out);
end
*/ //Removed because last time it made a 7.8gb text file on my computer



endmodule