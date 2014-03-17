view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue U -period 50ps -dutycycle 50 -starttime 0ns -endtime 2500ns sim:/freq_div/clk_in 
wave create -driver freeze -pattern clock -initialvalue U -period 1ns -dutycycle 10 -starttime 0ns -endtime 2500ns sim:/freq_div/pps 
wave modify -driver freeze -pattern clock -initialvalue U -period 100ns -dutycycle 10 -starttime 0ns -endtime 2500ns Edit:/freq_div/pps 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 2500ns sim:/freq_div/reset 
WaveCollapseAll -1
wave clipboard restore
