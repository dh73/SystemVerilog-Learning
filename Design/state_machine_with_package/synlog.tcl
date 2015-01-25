source "/home/diego/.local/share/data/Synplicity/scm_perforce.tcl"
history clear
project -load /home/diego/Templates/SystemVerilog_book/conditional_compilation/proj_1.prj
project -close /home/diego/Templates/SystemVerilog_book/conditional_compilation/proj_1.prj
project -new /home/diego/Templates/SystemVerilog_book/state_machine_with_package/proj_1.prj
add_file -verilog ./sm_motor.sv
add_file -vhdl ./datatypes.pkg
project_file -lib /home/diego/Templates/SystemVerilog_book/state_machine_with_package/datatypes.pkg work
project_file -type /home/diego/Templates/SystemVerilog_book/state_machine_with_package/datatypes.pkg include
project_file -job_owner /home/diego/Templates/SystemVerilog_book/state_machine_with_package/datatypes.pkg ""
project -run syntax_check -bg 
project -save /home/diego/Templates/SystemVerilog_book/state_machine_with_package/proj_1.prj 
project -run  -bg 
project -save /home/diego/Templates/SystemVerilog_book/state_machine_with_package/proj_1.prj 
project -run  -bg 
project -save /home/diego/Templates/SystemVerilog_book/state_machine_with_package/proj_1.prj 
project -run  -bg 
project -save /home/diego/Templates/SystemVerilog_book/state_machine_with_package/proj_1.prj 
project -close /home/diego/Templates/SystemVerilog_book/state_machine_with_package/proj_1.prj
