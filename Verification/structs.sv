/****************************************************************************/
/*				This code is part of a set of examples 						*/
/*	Diego Hdez R.															*/
/*  dhdezr@gmail.com														*/
/*  Licensed by: WTFPL ( Do What the Fuck You Wamt to ).					*/
//////////////////////////////////////////////////////////////////////////////

timeunit 1ns;
timeprecision 1ps;

typedef struct {
	byte a;
	logic b;
	shortint unsigned c;
} MyStruct; //Define a structure

module structs ();

	MyStruct object 			= '{ 10, 0, 100 }; //Initialize the vars inside
	MyStruct objectArray [1:0]	= '{'{ 10, 0, 100 }, '{ 11, 0, 101 }}; //Use double static cast

	initial begin
		$display("a=%b  b=%b   c=%h", object.a, object.b, object.c ); //Write to structure
		object.a=15;
		$display("a=%b  b=%b   c=%h", object.a, object.b, object.c );
		object.c=16'hDEAD;
		$display ("a = %b b = %b c = %h", object.a, object.b, object.c);
 		$display ("Printing array of objects\n");
 		$display ("a = %b b = %b c = %h", objectArray[0].a, objectArray[0].b, objectArray[0].c);
 		$display ("a = %b b = %b c = %h", objectArray[1].a, objectArray[1].b, objectArray[1].c);
 		#1 $finish;
 	end


endmodule
