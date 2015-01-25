verdiDockWidgetDisplay -dock widgetDock_WelcomePage
verdiWindowResize -win Verdi_1 -1 -2 "1366" "709"
verdiWindowWorkMode -win Verdi_1 -hardwareDebug
debImport \
          "/home/diego/Templates/SystemVerilog_book/state_machine_with_package/sm_motor.sv" \
          "/home/diego/Templates/SystemVerilog_book/state_machine_with_package/datatypes.pkg" \
          "-2012" -path \
          {/home/diego/Templates/SystemVerilog_book/state_machine_with_package}
srcCompile "-2012" "-inc" \
           "/home/diego/Templates/SystemVerilog_book/state_machine_with_package/sm_motor.sv" \
           -win $_nTrace1 -path \
           {/home/diego/Templates/SystemVerilog_book/state_machine_with_package}
srcCompile "-2012" "-inc" \
           "/home/diego/Templates/SystemVerilog_book/state_machine_with_package/sm_motor.sv" \
           -win $_nTrace1 -path \
           {/home/diego/Templates/SystemVerilog_book/state_machine_with_package}
srcCompile "-2012" "-inc" \
           "/home/diego/Templates/SystemVerilog_book/state_machine_with_package/sm_motor.sv" \
           -win $_nTrace1 -path \
           {/home/diego/Templates/SystemVerilog_book/state_machine_with_package}
nsMsgSwitchTab -tab cmpl
nsMsgSwitchTab -tab general
debReload
schEditClkSrc -add "clk"
assCtrlInvoke -svaIncremental
schCreateWindow -hierFSM -win $_nSchema1 -mode all
schSetOptions -win $_nSchema2 -detailRTL on
schSelect -win $_nSchema2 -instpin "sm_motor.sm_motor:FSM0#FSM0:16:71:FSM" "clk"
schSelect -win $_nSchema2 -instpin "sm_motor.sm_motor:FSM0#FSM0:16:71:FSM" "clk"
schSelect -win $_nSchema2 -instpin "sm_motor.sm_motor:FSM0#FSM0:16:71:FSM" "clk"
schSelect -win $_nSchema2 -instpin "sm_motor.sm_motor:FSM0#FSM0:16:71:FSM" \
          "tempvar\[7:0\]"
schSelect -win $_nSchema2 -inst "sm_motor.sm_motor:FSM0#FSM0:16:71:FSM"
schPushViewIn -win $_nSchema2
fsmSetCurrentWindow -win $_nState3
fsmResizeWindow 0 30 909 410 -win $_nState3
fsmResizeWindow 0 30 909 410 -win $_nState3
fsmResizeWindow 0 30 909 410 -win $_nState3
fsmSelect -add -state "DONE" -win $_nState3
fsmSetSearchMode -state "DONE" -win $_nState3
fsmSelect -state "STEP" -win $_nState3
fsmSetSearchMode -state "STEP" -win $_nState3
fsmSetOptions -stateAction 1 -win $_nState3
fsmSetOptions -transCondition 1 -win $_nState3
fsmSetOptions -transAction 1 -win $_nState3
fsmGetMachineProperty -win $_nState3
fsmGetStateProperty STEP -win $_nState3
verdiWindowWorkMode -win Verdi_1 -interactiveDebug
schCreateWindow -delim "." -win $_nSchema1 -scope "sm_motor"
verdiDockWidgetMaximize -dock windowDock_nSchema_4
schPopViewUp -win $_nSchema4
schSelect -win $_nSchema4 -inst "sm_motor:FSM0:16:71:FSM"
schPushViewIn -win $_nSchema4
fsmSetCurrentWindow -win $_nState5
fsmResizeWindow 0 30 1366 568 -win $_nState5
fsmResizeWindow 0 30 1366 568 -win $_nState5
fsmResizeWindow 0 30 1366 568 -win $_nState5
verdiWindowResize -win Verdi_1 "233" "6" "900" "700"
fsmResizeWindow 0 30 900 539 -win $_nState5
debExit
