//Daniel Li 50995133 Project 2
//30 Speed Blender 
//Can only climb in speed for a single cycle, will increase output if the mode changes half way, but will only decrease when at the end of the 6 state cycle
// In this implementation, I put the empty states inebetween the different output states, e.g. Input modes 11,17 and 23, as well as at the end before reaching the pulse settings.
module P3Blender(
input logic clk,
input logic reset,
input logic [4:0] Mode,
output logic [1:0] y); // Same setup as module doesn't change

typedef enum logic [4:0] {
S0 = 5'b00000, 
S1 = 5'b00001,
S2 = 5'b00010,
S3 = 5'b00011,
S4 = 5'b00100,
S5 = 5'b00101,
S6 = 5'b00110,
S7 = 5'b00111,
S8 = 5'b01000,
S9 = 5'b01001,
S10 = 5'b01010,
S11 = 5'b01011,
S12 = 5'b01100,
S13 = 5'b01101,
S14 = 5'b01110,
S15 = 5'b01111,
S16 = 5'b10000,
S17 = 5'b10001,
S18 = 5'b10010,
S19 = 5'b10011,
S20 = 5'b10100,
S21 = 5'b10101,
S22 = 5'b10110,
S23 = 5'b10111,
S24 = 5'b11000,
PULSE33 = 5'b11101,
PULSE66 = 5'b11110,
PULSE100 = 5'b11111} statetype;
statetype state, nextstate;



//State Register identical to lecture
always_ff @(posedge clk)
	if (reset) state <= S0;
	else state <= nextstate;

//Next state logic identical to lecture as well
always_comb
	case (state)
		S0: 	if (Mode == 5'b11111) nextstate = PULSE100; //This state is the base state, being the off state, and will output 00
			else if (Mode == 5'b11110) nextstate = PULSE66;
			else if (Mode == 5'b11101) nextstate = PULSE33;
			else if (Mode == 5'b00110) nextstate = S7;
			else if (Mode == 5'b01100) nextstate = S13;
			else if (Mode == 5'b10010) nextstate = S19;
			else nextstate = S1;
		S1: 	if (Mode == 5'b11111) nextstate = PULSE100;// This state is the next off state, which will output 0 and has more conditions to jump to a 'power' state
			else if (Mode == 5'b11110) nextstate = PULSE66;
			else if (Mode == 5'b11101) nextstate = PULSE33;
			else if (Mode == 5'b00110) nextstate = S8;
			else if (Mode == 5'b00111) nextstate = S8;
			else if (Mode == 5'b01100) nextstate = S14;
			else if (Mode == 5'b01101) nextstate = S14;
			else if (Mode == 5'b10010) nextstate = S20;
			else if (Mode == 5'b10011) nextstate = S20;
			else nextstate = S2;
		S2: 	if (Mode == 5'b11111) nextstate = PULSE100;// This is the next off state, which will output 0 and has an additional condition to jump to an active 'power' state
			else if (Mode == 5'b11110) nextstate = PULSE66;
			else if (Mode == 5'b11101) nextstate = PULSE33;
			else if (Mode == 5'b00110) nextstate = S9;
			else if (Mode == 5'b00111) nextstate = S9;
			else if (Mode == 5'b01000) nextstate = S9;
			else if (Mode == 5'b01100) nextstate = S15;
			else if (Mode == 5'b01101) nextstate = S15;
			else if (Mode == 5'b01110) nextstate = S15;
			else if (Mode == 5'b10010) nextstate = S21;
			else if (Mode == 5'b10011) nextstate = S21;
			else if (Mode == 5'b10100) nextstate = S21;
			else nextstate = S3;
		S3: 	if (Mode == 5'b11111) nextstate = PULSE100;// Same as S2 but with one more condition
			else if (Mode == 5'b11110) nextstate = PULSE66;
			else if (Mode == 5'b11101) nextstate = PULSE33;
			else if (Mode == 5'b00110) nextstate = S10;
			else if (Mode == 5'b00111) nextstate = S10;
			else if (Mode == 5'b01000) nextstate = S10;
			else if (Mode == 5'b01001) nextstate = S10;
			else if (Mode == 5'b01100) nextstate = S16;
			else if (Mode == 5'b01101) nextstate = S16;
			else if (Mode == 5'b01110) nextstate = S16;
			else if (Mode == 5'b01111) nextstate = S16;
			else if (Mode == 5'b10010) nextstate = S22;
			else if (Mode == 5'b10011) nextstate = S22;
			else if (Mode == 5'b10100) nextstate = S22;
			else if (Mode == 5'b10101) nextstate = S22;
			else nextstate = S4;
		S4: 	if (Mode == 5'b11111) nextstate = PULSE100;// Same as S3 but with one more condition
			else if (Mode == 5'b11110) nextstate = PULSE66;
			else if (Mode == 5'b11101) nextstate = PULSE33;		
			else if (Mode == 5'b00110) nextstate = S11;
			else if (Mode == 5'b00111) nextstate = S11;
			else if (Mode == 5'b01000) nextstate = S11;
			else if (Mode == 5'b01001) nextstate = S11;
			else if (Mode == 5'b01010) nextstate = S11;	
			else if (Mode == 5'b01100) nextstate = S17;
			else if (Mode == 5'b01101) nextstate = S17;
			else if (Mode == 5'b01110) nextstate = S17;
			else if (Mode == 5'b01111) nextstate = S17;
			else if (Mode == 5'b10000) nextstate = S17;
			else if (Mode == 5'b10010) nextstate = S23;
			else if (Mode == 5'b10011) nextstate = S23;
			else if (Mode == 5'b10100) nextstate = S23;
			else if (Mode == 5'b10101) nextstate = S23;
			else if (Mode == 5'b10110) nextstate = S23;
			else nextstate = S5;
		S5: 	if (Mode == 5'b11111) nextstate = PULSE100;//Last off state, will always cycle back to S0 unless instructed to go to the PULSE states
			else if (Mode == 5'b11110) nextstate = PULSE66;
			else if (Mode == 5'b11101) nextstate = PULSE33;
			else if (Mode == 5'b00110) nextstate = S6;
			else if (Mode == 5'b01100) nextstate = S12;
			else if (Mode == 5'b10010) nextstate = S18;
			else nextstate = S0;
		S6: 	if (Mode == 5'b11111) nextstate = PULSE100;// First power state, will always advance to the next power state, making it so that if S7 is reached at any time
			else if (Mode == 5'b11110) nextstate = PULSE66;//Then the duty cycle is capped, unless interrupted by the PULSE state conditions
			else if (Mode == 5'b11101) nextstate = PULSE33;
			else nextstate = S7;
		S7: 	if (Mode == 5'b11111) nextstate = PULSE100;// Next power state, same function as the first power state
			else if (Mode == 5'b11110) nextstate = PULSE66;
			else if (Mode == 5'b11101) nextstate = PULSE33;
			else nextstate = S8;
		S8: 	if (Mode == 5'b01111) nextstate = PULSE100;// Next power state, same function as the first power state
			else if (Mode == 5'b11110) nextstate = PULSE66;
			else if (Mode == 5'b11101) nextstate = PULSE33;
			else nextstate = S9;
		S9: 	if (Mode == 5'b11111) nextstate = PULSE100;// Same as S8
			else if (Mode == 5'b11110) nextstate = PULSE66;
			else if (Mode == 5'b11101) nextstate = PULSE33;
			else nextstate = S10;
		S10: 	if (Mode == 5'b11111) nextstate = PULSE100;// Same as S9
			else if (Mode == 5'b11110) nextstate = PULSE66;
			else if (Mode == 5'b11101) nextstate = PULSE33;
			else nextstate = S11;
		S11: 	if (Mode == 5'b11111) nextstate = PULSE100; // // Last power state, depending on the input mode, will cycle to the first off or first power state.
			else if (Mode == 5'b11110) nextstate = PULSE66;
			else if (Mode == 5'b11101) nextstate = PULSE33;
			else if (Mode == 5'b00110) nextstate = S6;
			else if (Mode == 5'b01100) nextstate = S12;
			else if (Mode == 5'b10010) nextstate = S18;
			else nextstate = S0;
		S12: 	if (Mode == 5'b11111) nextstate = PULSE100; //This state is the base state, being the low-on state, and will output 01
			else if (Mode == 5'b11110) nextstate = PULSE66;
			else if (Mode == 5'b11101) nextstate = PULSE33;
			else if (Mode == 5'b00110) nextstate = S7;
			else if (Mode == 5'b10010) nextstate = S19;
			else nextstate = S13;
		S13: 	if (Mode == 5'b11111) nextstate = PULSE100;// This state is the next low-on state, which will output 01 and has more conditions to jump to a 'power' state
			else if (Mode == 5'b11110) nextstate = PULSE66;
			else if (Mode == 5'b11101) nextstate = PULSE33;
			else if (Mode == 5'b00110) nextstate = S8;
			else if (Mode == 5'b00111) nextstate = S8;
			else if (Mode == 5'b10010) nextstate = S20;
			else if (Mode == 5'b10011) nextstate = S20;
			else nextstate = S14;
		S14: 	if (Mode == 5'b11111) nextstate = PULSE100;// This is the next low-on state, which will output 01 and has an additional condition to jump to an active 'power' state
			else if (Mode == 5'b11110) nextstate = PULSE66;
			else if (Mode == 5'b11101) nextstate = PULSE33;
			else if (Mode == 5'b00110) nextstate = S9;
			else if (Mode == 5'b00111) nextstate = S9;
			else if (Mode == 5'b01000) nextstate = S9;
			else if (Mode == 5'b10010) nextstate = S21;
			else if (Mode == 5'b10011) nextstate = S21;
			else if (Mode == 5'b10100) nextstate = S21;
			else nextstate = S15;
		S15: 	if (Mode == 5'b11111) nextstate = PULSE100;// 
			else if (Mode == 5'b11110) nextstate = PULSE66;
			else if (Mode == 5'b11101) nextstate = PULSE33;
			else if (Mode == 5'b00110) nextstate = S10;
			else if (Mode == 5'b00111) nextstate = S10;
			else if (Mode == 5'b01000) nextstate = S10;
			else if (Mode == 5'b01001) nextstate = S10;
			else if (Mode == 5'b10010) nextstate = S22;
			else if (Mode == 5'b10011) nextstate = S22;
			else if (Mode == 5'b10100) nextstate = S22;
			else if (Mode == 5'b10101) nextstate = S22;
			else nextstate = S16;
		S16: 	if (Mode == 5'b11111) nextstate = PULSE100;// Same as S3 but with one more condition
			else if (Mode == 5'b11110) nextstate = PULSE66;
			else if (Mode == 5'b11101) nextstate = PULSE33;		
			else if (Mode == 5'b00110) nextstate = S11;
			else if (Mode == 5'b00111) nextstate = S11;
			else if (Mode == 5'b01000) nextstate = S11;
			else if (Mode == 5'b01001) nextstate = S11;
			else if (Mode == 5'b01010) nextstate = S11;	
			else if (Mode == 5'b10010) nextstate = S23;
			else if (Mode == 5'b10011) nextstate = S23;
			else if (Mode == 5'b10100) nextstate = S23;
			else if (Mode == 5'b10101) nextstate = S23;
			else if (Mode == 5'b10110) nextstate = S23;
			else nextstate = S17;
		S17: 	if (Mode == 5'b11111) nextstate = PULSE100;//Last off state, will always cycle back to S0 unless instructed to go to the PULSE states
			else if (Mode == 5'b11110) nextstate = PULSE66;
			else if (Mode == 5'b11101) nextstate = PULSE33;
			else if (Mode == 5'b00110) nextstate = S6;
			else if (Mode == 5'b01100) nextstate = S12;
			else if (Mode == 5'b10010) nextstate = S18;
			else nextstate = S0;
		S18: 	if (Mode == 5'b11111) nextstate = PULSE100;// First mid-power state, will always advance to the next power state, or go into the high-power state
			else if (Mode == 5'b11110) nextstate = PULSE66;//
			else if (Mode == 5'b11101) nextstate = PULSE33;
			else if (Mode == 5'b00110) nextstate = S7;
			else nextstate = S19;
		S19: 	if (Mode == 5'b11111) nextstate = PULSE100;// Next midpower state, same function as the first midpower state
			else if (Mode == 5'b11110) nextstate = PULSE66;
			else if (Mode == 5'b11101) nextstate = PULSE33;
			else if (Mode == 5'b00110) nextstate = S8;
			else if (Mode == 5'b00111) nextstate = S8;
			else nextstate = S20;
		S20: 	if (Mode == 5'b01111) nextstate = PULSE100;// Next mid power state, same function as the first midpower state
			else if (Mode == 5'b11110) nextstate = PULSE66;
			else if (Mode == 5'b11101) nextstate = PULSE33;
			else if (Mode == 5'b00110) nextstate = S9;
			else if (Mode == 5'b00111) nextstate = S9;
			else if (Mode == 5'b01000) nextstate = S9;
			else nextstate = S21;
		S21: 	if (Mode == 5'b11111) nextstate = PULSE100;
			else if (Mode == 5'b11110) nextstate = PULSE66;
			else if (Mode == 5'b11101) nextstate = PULSE33;
			else if (Mode == 5'b00110) nextstate = S10;
			else if (Mode == 5'b00111) nextstate = S10;
			else if (Mode == 5'b01000) nextstate = S10;
			else if (Mode == 5'b01001) nextstate = S10;
			else nextstate = S22;
		S22: 	if (Mode == 5'b11111) nextstate = PULSE100;// Medium-on, c
			else if (Mode == 5'b11110) nextstate = PULSE66;
			else if (Mode == 5'b11101) nextstate = PULSE33;
			else if (Mode == 5'b00110) nextstate = S11;
			else if (Mode == 5'b00111) nextstate = S11;
			else if (Mode == 5'b01000) nextstate = S11;
			else if (Mode == 5'b01001) nextstate = S11;
			else if (Mode == 5'b01010) nextstate = S11;	
			else nextstate = S23;
		S23: 	if (Mode == 5'b11111) nextstate = PULSE100; // // Last power state, depending on the input mode, will cycle to the different first states.
			else if (Mode == 5'b11110) nextstate = PULSE66;
			else if (Mode == 5'b11101) nextstate = PULSE33;
			else if (Mode == 5'b00110) nextstate = S6;
			else if (Mode == 5'b01100) nextstate = S12;
			else if (Mode == 5'b10010) nextstate = S18;
			else nextstate = S0;



		PULSE33: if (Mode == 5'b11101) nextstate = PULSE33; // Lowest full duty cycle output state, with an output of 01
			else nextstate = S0;
		PULSE66: if (Mode == 5'b11110) nextstate = PULSE66;// Middle full duty cycle output state, with an output of 10
			else nextstate = S0;
		PULSE100: if (Mode == 5'b11111) nextstate = PULSE100;// Full power, full duty cycle, essentially the same as keeping the input mode on full blend
			else nextstate = S0; // Meant to emulate a PULSE function on a blender, such that if the momentary button is released, the output drops to 00 on the next clock cycle
		default: nextstate = S0; // 
	endcase
	
//Output
assign y = (state == 5'b11111)?  2'b11 : 
	((state == 5'b11110)? 2'b10 : 
	((state == 5'b11101)? 2'b01 : ((state >= 5'b10010)? 2'b10: ((state >= 5'b01100)? 2'b01 : (state >= 5'b00110)? 2'b11 : 2'b00)))); 
// Calculating the outputs with conditions. The system won't error as the next clock cycle will rectify the state. The only way to fall into the errors is to have the input modes change at faster than clock cycle speeds at very specific times.
endmodule