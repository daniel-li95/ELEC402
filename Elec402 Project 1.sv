//Daniel Li 50995133 Project 1 

module divideby3FSM50Duty(
input logic clk,
input logic reset,
input logic [4:0] Mode,
output logic y); // Same setup as module doesn't change

typedef enum logic [3:0] {
S0 = 4'b0000, 
S1 = 4'b0001,
S2 = 4'b0010,
S3 = 4'b0011,
S4 = 4'b0100,
S5 = 4'b0101,
S6 = 4'b0110,
S7 = 4'b0111,
S8 = 4'b1000,
S9 = 4'b1001,
S10 = 4'b1010,
S11 = 4'b1011,
S12 = 4'b0100,
S13 = 4'b0110,
S14 = 4'b1000,
PULSE = 4'b101} statetype;
statetype state, nextstate;



//State Register identical to lecture
always_ff @(posedge clk)
	if (reset) state <= S0;
	else state <= nextstate;

//Next state logic identical to lecture as well
always_comb
	case (state)
		S0: 	if (Mode[4]) nextstate = PULSE;
			else nextstate = S1;
		S1: 	if (Mode[4]) nextstate = PULSE;
			else nextstate = S2;
		S2: 	if (Mode[4]) nextstate = PULSE;
			else nextstate = S3;
		S3: 	if (Mode[4]) nextstate = PULSE;
			else nextstate = S4;
		S4: 	if (Mode[4]) nextstate = PULSE;
			else nextstate = S5;
		S5: 	if (Mode[4]) nextstate = PULSE;
			else nextstate = S6;
		S6: 	if (Mode[4]) nextstate = PULSE;
			else nextstate = S7;
		S7: 	if (Mode[4]) nextstate = PULSE;
			else nextstate = S8;
		S8: 	if (Mode[4]) nextstate = PULSE;
			else nextstate = S9;
		S9: 	if (Mode[4]) nextstate = PULSE;
			else nextstate = S10;
		S10: 	if (Mode[4]) nextstate = PULSE;
			else nextstate = S11;
		S11: 	if (Mode[4]) nextstate = PULSE;
			else nextstate = S12;
		S12: 	if (Mode[4]) nextstate = PULSE;
			else nextstate = S13;
		S13: 	if (Mode[4]) nextstate = PULSE;
			else nextstate = S14;
		PULSE: 	if (Mode[4]) nextstate = PULSE;
			else nextstate = S0;
		default: nextstate = S0; // 
	endcase
	
//Output
assign y = 
endmodule