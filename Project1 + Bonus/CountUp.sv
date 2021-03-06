
// Student Name: Daniel Li
// Student Number: 50995133
// Function: Counts up

module up_counter
( 
output logic [7:0] out, // Output of the counter
input logic enable, // Enables the counter when set to high
input logic clk, // Clock
input logic reset // Reset for the counter
);

// Time to make the logic for the counter
always_ff @(posedge clk)
if (reset)
	begin
	out <= 8'b0;
	end
else if (enable)
	begin 	
	out <= out + 1;
	end
endmodule

 
