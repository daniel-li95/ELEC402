// Student Name: Daniel Li
// Student Number: 50995133
// Function:  Tests the Project 2 Blender

module P3Blender_tb;
logic [1:0] out_tb;
logic  clk_tb, reset_tb;
logic [4:0] BlendMode;

P3Blender TestblendP2(
.y (out_tb),
.clk (clk_tb),
.reset (reset_tb),
.Mode (BlendMode)
);
// Initialize the testbench
initial begin
clk_tb = 0;
reset_tb = 1;
BlendMode = 0;
end
initial begin 
#15 reset_tb = 0;
end

always 
begin
#10 clk_tb = ~clk_tb; // The clock cycle being an order of magnitude faster than the mode change allows for it to cycle through every state at least twice.
end

always
begin 
#400 BlendMode = BlendMode +1; // The counting up of the mode allows for the cycling through the modes
end 

endmodule
