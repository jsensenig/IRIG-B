view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue U -period 10ps -dutycycle 50 -starttime 0ns -endtime 250ns sim:/irigb_mod/clk_in 
wave create -driver freeze -pattern clock -initialvalue U -period 100ns -dutycycle 50 -starttime 0ns -endtime 250ns sim:/irigb_mod/pps_in 
wave create -driver freeze -pattern constant -value 001011001 -range 8 0 -starttime 0ns -endtime 2500ns sim:/irig_b/day 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 01101 -range 4 0 -starttime 0ps -endtime 1000ps sim:/irig_b/hour 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 001110 -range 5 0 -starttime 0ns -endtime 2500ns sim:/irig_b/min 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 01101 -range 4 0 -starttime 1000ps -endtime 2500ps Edit:/irig_b/hour 
wave modify -driver freeze -pattern constant -value 01101 -range 4 0 -starttime 1000ns -endtime 2500ns Edit:/irig_b/hour 
wave create -driver freeze -pattern constant -value 011011 -range 5 0 -starttime 0ps -endtime 1000ps sim:/irig_b/sec 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 011011 -range 5 0 -starttime 0ns -endtime 2500ns Edit:/irig_b/sec 
wave create -driver freeze -pattern constant -value 010110001110 -range 11 0 -starttime 0ns -endtime 2500ns sim:/irig_b/year 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 100110001110 -range 11 0 -starttime 0ns -endtime 2500ns Edit:/irig_b/year 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 2500ps sim:/irig_b/reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 2500ns Edit:/irig_b/reset 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 2500ns sim:/irig_b/enable 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10ns Edit:/irig_b/enable 
wave create -driver freeze -pattern clock -initialvalue U -period 100ns -dutycycle 1 -starttime 0ns -endtime 2500ns sim:/irig_b/pps 
wave create -driver freeze -pattern clock -initialvalue U -period 1ns -dutycycle 50 -starttime 0ps -endtime 2500ps sim:/irig_b/clk 
wave modify -driver freeze -pattern clock -initialvalue U -period 1ns -dutycycle 50 -starttime 0ns -endtime 2500ns Edit:/irig_b/clk 
wave modify -driver freeze -pattern clock -initialvalue U -period 100ps -dutycycle 50 -starttime 0ns -endtime 2500ns Edit:/irig_b/clk 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 2500ns sim:/irig_b/update 
wave modify -driver freeze -pattern constant -value 1 -starttime 90ns -endtime 110ns Edit:/irig_b/update 
wave modify -driver freeze -pattern clock -initialvalue U -period 50ps -dutycycle 50 -starttime 0ns -endtime 2500ns Edit:/irig_b/clk 
WaveCollapseAll -1
wave clipboard restore
