//Daniel Li 50995133 Project 1 
//6 Speed Blender 

module P1Blender(
input logic clk,
input logic reset,
input logic [3:0] Mode,
output logic [1:0] y); // Same setup as module doesn't change

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
S12 = 4'b1100,
PULSE33 = 4'b1101,
PULSE66 = 4'b1110,
PULSE100 = 4'b1111} statetype;
statetype state, nextstate;



//State Register identical to lecture
always_ff @(posedge clk)
	if (reset) state <= S0;
	else state <= nextstate;

//Next state logic identical to lecture as well
always_comb
	case (state)
		S0: 	if (Mode == 4'b1111) nextstate = PULSE100;
			else if (Mode == 4'b1101) nextstate = PULSE66;
			else if (Mode == 4'b1110) nextstate = PULSE33;
			else if (Mode == 4'b0111) nextstate = S7;
			else nextstate = S1;
		S1: 	if (Mode == 4'b1111) nextstate = PULSE100;
			else if (Mode == 4'b1101) nextstate = PULSE66;
			else if (Mode == 4'b1110) nextstate = PULSE33;
			else if (Mode == 4'b0111) nextstate = S8;
			else nextstate = S2;
		S2: 	if (Mode == 4'b1111) nextstate = PULSE100;
			else if (Mode == 4'b1000) nextstate = PULSE66;
			else if (Mode == 4'b0100) nextstate = PULSE33;
			else if (Mode == 4'b0111) nextstate = S9;
			else nextstate = S3;
		S3: 	if (Mode == 4'b1111) nextstate = PULSE100;
			else if (Mode == 4'b1101) nextstate = PULSE66;
			else if (Mode == 4'b1110) nextstate = PULSE33;
			else if (Mode == 4'b0111) nextstate = S10;
			else nextstate = S4;
		S4: 	if (Mode == 4'b1111) nextstate = PULSE100;
			else if (Mode == 4'b1101) nextstate = PULSE66;
			else if (Mode == 4'b1110) nextstate = PULSE33;
			else if (Mode == 4'b0111) nextstate = S11;
			else nextstate = S5;
		S5: 	if (Mode == 4'b1111) nextstate = PULSE100;
			else if (Mode == 4'b1101) nextstate = PULSE66;
			else if (Mode == 4'b1110) nextstate = PULSE33;
			else if (Mode == 4'b0111) nextstate = S12;
			else nextstate = S6;
		S6: 	if (Mode == 4'b1111) nextstate = PULSE100;
			else if (Mode == 4'b1101) nextstate = PULSE66;
			else if (Mode == 4'b1110) nextstate = PULSE33;
			else nextstate = S0;
		S7: 	if (Mode == 4'b1111) nextstate = PULSE100;
			else if (Mode == 4'b1101) nextstate = PULSE66;
			else if (Mode == 4'b1110) nextstate = PULSE33;
			else nextstate = S8;
		S8: 	if (Mode == 4'b1111) nextstate = PULSE100;
			else if (Mode == 4'b1101) nextstate = PULSE66;
			else if (Mode == 4'b1110) nextstate = PULSE33;
			else nextstate = S9;
		S9: 	if (Mode == 4'b1111) nextstate = PULSE100;
			else if (Mode == 4'b1101) nextstate = PULSE66;
			else if (Mode == 4'b1110) nextstate = PULSE33;
			else nextstate = S10;
		S10: 	if (Mode == 4'b1111) nextstate = PULSE100;
			else if (Mode == 4'b1101) nextstate = PULSE66;
			else if (Mode == 4'b1110) nextstate = PULSE33;
			else nextstate = S11;
		S11: 	if (Mode == 4'b1111) nextstate = PULSE100;
			else if (Mode == 4'b1101) nextstate = PULSE66;
			else if (Mode == 4'b1110) nextstate = PULSE33;
			else nextstate = S12;
		S12: 	if (Mode == 4'b1111) nextstate = PULSE100;
			else if (Mode == 4'b1101) nextstate = PULSE66;
			else if (Mode == 4'b1110) nextstate = PULSE33;
			else if (Mode == 4'b0111) nextstate = S7;
			else nextstate = S0;



		PULSE33: if (Mode == 4'b1101) nextstate = PULSE33;
			else nextstate = S0;
		PULSE66: if (Mode == 4'b1110) nextstate = PULSE66;
			else nextstate = S0;
		PULSE100: if (Mode == 4'b1111) nextstate = PULSE100;
			else nextstate = S0;
		default: nextstate = S0; // 
	endcase
	
//Output
assign y = (state == 4'b1110)?  2'b10 : 
	((state == 4'b1101)? 2'b01 : 
	((state >= 4'b0111)? 2'b11 : 2'b00));
endmodule