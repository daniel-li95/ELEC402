//Daniel Li 50995133 Bonus marks attempt
// Module: Divide clock by 3 with a 50% duty cycle

module divideby3FSM50Duty(
input logic clk,
input logic reset,
output logic y); // Same setup as module doesn't change

typedef enum logic [2:0] {
S0 = 3'b000, 
S1 = 3'b001,
S2 = 3'b010,
S3 = 3'b011,
S4 = 3'b100,
S5 = 3'b101} statetype;
statetype state, nextstate;

//State Register identical to lecture
always_ff @(posedge clk)
	if (reset) state <= S0;
	else state <= nextstate;

always_ff @(negedge clk)
	if (reset) state <= S0;
	else state <= nextstate;

//Next state logic identical to lecture as well
always_comb
	case (state)
		S0: nextstate = S1;
		S1: nextstate = S2;
		S2: nextstate = S3;
		S3: nextstate = S4;
		S4: nextstate = S5;
		default: nextstate = S0; // Idea hasn't changed, last state goes to zeroth state again
	endcase
	
//Output
assign y = (state == S0 || state == S1 || state == S2); //Three highs followed by three lows allows us to get a duty cycle of 50% at 1/3 clock speed.
endmodule
