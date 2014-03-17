view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue U -period 10ps -dutycycle 50 -starttime 0ns -endtime 250ns sim:/irigb_mod/clk_in 
wave create -driver freeze -pattern clock -initialvalue U -period 100ns -dutycycle 50 -starttime 0ns -endtime 250ns sim:/irigb_mod/pps_in 
wave modify -driver freeze -pattern clock -initialvalue U -period 100ns -dutycycle 1 -starttime 0ns -endtime 250ns Edit:/irigb_mod/pps_in 
wave modify -driver freeze -pattern clock -initialvalue U -period 100ps -dutycycle 50 -starttime 0ns -endtime 250ns Edit:/irigb_mod/clk_in 
wave modify -driver freeze -pattern clock -initialvalue U -period 100ps -dutycycle 50 -starttime 0ns -endtime 250ns Edit:/irigb_mod/clk_in 
wave create -pattern constant -value 101010 -range 5 0 -starttime 0ps -endtime 1000ps sim:/irigb_mod/sec_s 
wave create -driver freeze -pattern constant -value 101010 -range 5 0 -starttime 0ns -endtime 250ns sim:/irigb_mod/sec 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 010101101 -range 8 0 -starttime 0ns -endtime 250ns sim:/irigb_mod/day 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 10101 -range 4 0 -starttime 0ps -endtime 250ps sim:/irigb_mod/hour 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 010010 -range 5 0 -starttime 0ns -endtime 250ns sim:/irigb_mod/min 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 101010 -range 5 0 -starttime 0ns -endtime 2500ns Edit:/irigb_mod/sec 
wave modify -driver freeze -pattern constant -value 010101101 -range 8 0 -starttime 0ns -endtime 2500ns Edit:/irigb_mod/day 
wave modify -driver freeze -pattern constant -value 10101 -range 4 0 -starttime 0ps -endtime 2500ps Edit:/irigb_mod/hour 
wave modify -driver freeze -pattern constant -value 010010 -range 5 0 -starttime 0ns -endtime 2500ns Edit:/irigb_mod/min 
wave modify -driver freeze -pattern clock -initialvalue U -period 100ns -dutycycle 1 -starttime 0ns -endtime 2500ns Edit:/irigb_mod/pps_in 
wave modify -driver freeze -pattern clock -initialvalue U -period 100ps -dutycycle 50 -starttime 0ns -endtime 2500ns Edit:/irigb_mod/clk_in 
wave modify -driver freeze -pattern clock -initialvalue U -period 100ns -dutycycle 1 -starttime 0ns -endtime 250ns Edit:/irigb_mod/pps_in 
wave modify -driver freeze -pattern clock -initialvalue U -period 100ps -dutycycle 50 -starttime 0ns -endtime 250ns Edit:/irigb_mod/clk_in 
wave modify -driver freeze -pattern clock -initialvalue U -period 100ps -dutycycle 50 -starttime 0ns -endtime 250ns Edit:/irigb_mod/clk_in 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 250ns sim:/irigb_mod/enable 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10ns Edit:/irigb_mod/enable 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 250ns sim:/irigb_mod/update 
wave modify -driver freeze -pattern constant -value 1 -starttime 99ns -endtime 101ns Edit:/irigb_mod/update 
wave modify -driver freeze -pattern constant -value 10101 -range 4 0 -starttime 0ns -endtime 250ns Edit:/irigb_mod/hour 
wave modify -driver freeze -pattern constant -value 101101101 -range 8 0 -starttime 0ns -endtime 250ns Edit:/irigb_mod/day 
wave modify -driver freeze -pattern constant -value 10111 -range 4 0 -starttime 0ns -endtime 250ns Edit:/irigb_mod/hour 
wave modify -driver freeze -pattern constant -value 111011 -range 5 0 -starttime 0ns -endtime 250ns Edit:/irigb_mod/min 
wave modify -driver freeze -pattern constant -value 111010 -range 5 0 -starttime 0ns -endtime 250ns Edit:/irigb_mod/sec 
wave modify -driver freeze -pattern constant -value 101101110 -range 8 0 -starttime 0ns -endtime 250ns Edit:/irigb_mod/day 
wave create -driver freeze -pattern constant -value 011111111000 -range 11 0 -starttime 0ns -endtime 250ns sim:/irigb_mod/year 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 10111 -range 4 0 -starttime 0ns -endtime 2500ns Edit:/irigb_mod/hour 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 2500ns Edit:/irigb_mod/enable 
wave modify -driver freeze -pattern constant -value 1 -starttime 50ns -endtime 2500ns Edit:/irigb_mod/enable 
wave modify -driver freeze -pattern constant -value 0 -starttime 250ns -endtime 2500ns Edit:/irigb_mod/update 
wave modify -driver freeze -pattern constant -value 011111111000 -range 11 0 -starttime 0ns -endtime 2500ns Edit:/irigb_mod/year 
wave modify -driver freeze -pattern constant -value 101101110 -range 8 0 -starttime 0ns -endtime 2500ns Edit:/irigb_mod/day 
wave modify -driver freeze -pattern constant -value 011111111000 -range 11 0 -starttime 0ns -endtime 2500ns Edit:/irigb_mod/year 
wave modify -driver freeze -pattern constant -value 111010 -range 5 0 -starttime 0ns -endtime 2500ns Edit:/irigb_mod/sec 
wave modify -driver freeze -pattern constant -value 111011 -range 5 0 -starttime 0ns -endtime 2500ns Edit:/irigb_mod/min 
wave modify -driver freeze -pattern constant -value 100000110011 -range 11 0 -starttime 0ns -endtime 2500ns Edit:/irigb_mod/year 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 2500ns sim:/irigb_mod/reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 410ns -endtime 510ns Edit:/irigb_mod/reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 410ns -endtime 490ns Edit:/irigb_mod/reset 
wave modify -driver freeze -pattern constant -value 100000101101 -range 11 0 -starttime 0ns -endtime 2500ns Edit:/irigb_mod/year 
wave modify -driver freeze -pattern constant -value 010101010101 -range 11 0 -starttime 0ns -endtime 2500ns Edit:/irigb_mod/year 
wave modify -driver freeze -pattern constant -value 011101010101 -range 11 0 -starttime 0ns -endtime 2500ns Edit:/irigb_mod/year 
wave modify -driver freeze -pattern constant -value 100101010101 -range 11 0 -starttime 0ns -endtime 2500ns Edit:/irigb_mod/year 
wave modify -driver freeze -pattern constant -value 101100010 -range 8 0 -starttime 0ns -endtime 2500ns Edit:/irigb_mod/day 
wave modify -driver freeze -pattern constant -value 110100010 -range 8 0 -starttime 0ns -endtime 2500ns Edit:/irigb_mod/day 
wave modify -driver freeze -pattern constant -value 010100010 -range 8 0 -starttime 0ns -endtime 2500ns Edit:/irigb_mod/day 
wave modify -driver freeze -pattern constant -value 10001 -range 4 0 -starttime 0ns -endtime 2500ns Edit:/irigb_mod/hour 
wave modify -driver freeze -pattern constant -value 001011 -range 5 0 -starttime 0ns -endtime 2500ns Edit:/irigb_mod/min 
wave modify -driver freeze -pattern constant -value 100110 -range 5 0 -starttime 0ns -endtime 2500ns Edit:/irigb_mod/sec 
WaveCollapseAll -1
wave clipboard restore
