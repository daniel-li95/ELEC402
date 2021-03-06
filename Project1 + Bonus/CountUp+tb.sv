// Student Name: Daniel Li
// Student Number: 50995133
// Function: Counts up

module Countup_tb;
logic [7:0] out_tb;
logic enable_tb, clk_tb, reset_tb;
up_counter u8(
.out (out_tb),
.enable (enable_tb),
.clk (clk_tb),
.reset (reset_tb)
);
// Initialize the testbench
initial begin
clk_tb = 0;
reset_tb = 1;
enable_tb = 0;
end
initial begin 
#15 reset_tb = 0;
enable_tb = 1;
end

always 
begin
#10 clk_tb = ~clk_tb;
end
integer file_out;
initial begin
file_out = $fopen("up_counter.txt", "wb");
$fstrobe(file_out, "time\tclk\treset\tenable\tout");
end
always @(posedge clk_tb)
begin 
$fstrobe(file_out, "%3d\t%b\t%b\t%b\t%d", $time, clk_tb, reset_tb, enable_tb, out_tb);
end
endmodule
