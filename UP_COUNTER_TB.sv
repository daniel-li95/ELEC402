// Student Name : XYZ
// Student Number: 12345678
// Function: Up Counter TB

`timescale 1ns/1ps  // unit step = 1ns and 1ps is the resolution
module up_counter_tb;
logic [7:0] out;
logic enable, clk, reset;

up_counter U0(
.out (out),
.enable (enable),
.clk (clk),
.reset (reset)
);
// Initialization
initial begin 
clk=0;
reset=1;
enable= 0;
end

initial begin 
#15 reset =0;
enable=1;
end
// Defining Clock
always 
begin 
#10 clk = ~clk;
end

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



endmodule