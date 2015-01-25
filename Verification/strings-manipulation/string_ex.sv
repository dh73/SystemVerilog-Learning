timeunit 1ns; timeprecision 1ps;
/****************************************************************************/
/*				This code is part of a set of examples 						*/
/*	Diego Hdez R.															*/
/*  dhdezr@gmail.com														*/
/*  Licensed by: WTFPL ( Do What the Fuck You Want to ).					*/
/////////////////////////////////////////////////////////////////////////////

module string_ex();

	string MyString="The original string"; // string val initialized
	string MyNewString; // string val empty

	initial begin
		$display( "My string = %s", MyString ); // Show the contents of MyString
		MyNewString="This is new string of different lenght";
		$display("My new string = %s", MyNewString);

		//change to uppercase and assign to new string
		MyNewString=MyNewString.toupper();
		$display("My new string=%s", MyNewString);

		//Get the lenght of string
		$display("The lenght of the string MyNewString is", MyNewString.len());

		//Compare variable to another variable
		if( MyString.tolower() == MyNewString.tolower() ) begin
			$display("String compare matches");
		end
		else begin
			$display("String compare don't match\n");
		end

		//Compare variable to variable
		if( MyString.toupper() == MyNewString ) begin
			$display("String variable compare matches");
		end
		else begin
			$display("String variable compare don't match\n");
		end

		#1ns $finish;
	end

endmodule
