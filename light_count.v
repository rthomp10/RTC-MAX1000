//	+FHDR------------------------------------------------------------------------
// FILE NAME	: light_count.v
// DEPARTMENT	: Personal Use
// AUTHOR	: Ryan Thompson
//	AUTHOR’S EMAIL : ryanrthompson10@gmail.com
//	-----------------------------------------------------------------------------
//	RELEASE HISTORY
// VERSION		DATE			AUTHOR			DESCRIPTION		
// 1.0		10-19-2019	Ryan Thompson		Engineering Student
//	-----------------------------------------------------------------------------				
// KEYWORDS	: 8bit counter, light, LEDs
//	-----------------------------------------------------------------------------				
// PURPOSE	: An eight bit counter for the MAX1000 LEDs.	
//	-----------------------------------------------------------------------------				
// PARAMETERS				
//	PARAM NAME	RANGE	:	DESCRIPTION			:	DEFAULT	: UNITS
// 	f			[7,0]	:	second counter		: 		0		: Seconds past in binary
//		x1			[0]	:	arbitrary input	:		clk	: Hz
//	-----------------------------------------------------------------------------				
// REUSE ISSUES				
//	Reset Strategy	:	Async	
//	Clock Domains	:	12MHz	
//	Critical Timing	:			
//	Test Features	:			
//	Asynchronous I/F	:			
//	Scan Methodology	:			
//	Instantiations	:			
//	Synthesizable (y/n)   :	y
//	Other	:
// -FHDR------------------------------------------------------------------------


module light_count(
							 f,
							 x1,
							 reset
					   );
					
output[7:0] f;			// LED Output
input			x1;		// clock_in
input			reset;		

reg[7:0]	f;

always @( negedge x1 or posedge reset ) begin
	if( reset )
		f <= 0;
	else
		f <= f + 1;		// increment counter
end

endmodule 
