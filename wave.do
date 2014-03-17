onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -height 16 /irigb_mod/clk_in
add wave -noupdate -height 16 /irigb_mod/pps_in
add wave -noupdate -height 16 /irigb_mod/enable
add wave -noupdate -height 16 /irigb_mod/update
add wave -noupdate -height 16 -radix unsigned /irigb_mod/year
add wave -noupdate -height 16 -radix unsigned /irigb_mod/day
add wave -noupdate -height 16 -radix unsigned /irigb_mod/hour
add wave -noupdate -height 16 -radix unsigned /irigb_mod/min
add wave -noupdate -height 16 -radix unsigned /irigb_mod/sec
add wave -noupdate -radix unsigned -childformat {{/irigb_mod/year_s(6) -radix unsigned} {/irigb_mod/year_s(5) -radix unsigned} {/irigb_mod/year_s(4) -radix unsigned} {/irigb_mod/year_s(3) -radix unsigned} {/irigb_mod/year_s(2) -radix unsigned} {/irigb_mod/year_s(1) -radix unsigned} {/irigb_mod/year_s(0) -radix unsigned}} -subitemconfig {/irigb_mod/year_s(6) {-height 13 -radix unsigned} /irigb_mod/year_s(5) {-height 13 -radix unsigned} /irigb_mod/year_s(4) {-height 13 -radix unsigned} /irigb_mod/year_s(3) {-height 13 -radix unsigned} /irigb_mod/year_s(2) {-height 13 -radix unsigned} /irigb_mod/year_s(1) {-height 13 -radix unsigned} /irigb_mod/year_s(0) {-height 13 -radix unsigned}} /irigb_mod/year_s
add wave -noupdate -radix unsigned -childformat {{/irigb_mod/day_s(8) -radix unsigned} {/irigb_mod/day_s(7) -radix unsigned} {/irigb_mod/day_s(6) -radix unsigned} {/irigb_mod/day_s(5) -radix unsigned} {/irigb_mod/day_s(4) -radix unsigned} {/irigb_mod/day_s(3) -radix unsigned} {/irigb_mod/day_s(2) -radix unsigned} {/irigb_mod/day_s(1) -radix unsigned} {/irigb_mod/day_s(0) -radix unsigned}} -subitemconfig {/irigb_mod/day_s(8) {-height 13 -radix unsigned} /irigb_mod/day_s(7) {-height 13 -radix unsigned} /irigb_mod/day_s(6) {-height 13 -radix unsigned} /irigb_mod/day_s(5) {-height 13 -radix unsigned} /irigb_mod/day_s(4) {-height 13 -radix unsigned} /irigb_mod/day_s(3) {-height 13 -radix unsigned} /irigb_mod/day_s(2) {-height 13 -radix unsigned} /irigb_mod/day_s(1) {-height 13 -radix unsigned} /irigb_mod/day_s(0) {-height 13 -radix unsigned}} /irigb_mod/day_s
add wave -noupdate -radix unsigned -childformat {{/irigb_mod/hour_s(4) -radix unsigned} {/irigb_mod/hour_s(3) -radix unsigned} {/irigb_mod/hour_s(2) -radix unsigned} {/irigb_mod/hour_s(1) -radix unsigned} {/irigb_mod/hour_s(0) -radix unsigned}} -subitemconfig {/irigb_mod/hour_s(4) {-height 13 -radix unsigned} /irigb_mod/hour_s(3) {-height 13 -radix unsigned} /irigb_mod/hour_s(2) {-height 13 -radix unsigned} /irigb_mod/hour_s(1) {-height 13 -radix unsigned} /irigb_mod/hour_s(0) {-height 13 -radix unsigned}} /irigb_mod/hour_s
add wave -noupdate -radix unsigned -childformat {{/irigb_mod/min_s(5) -radix unsigned} {/irigb_mod/min_s(4) -radix unsigned} {/irigb_mod/min_s(3) -radix unsigned} {/irigb_mod/min_s(2) -radix unsigned} {/irigb_mod/min_s(1) -radix unsigned} {/irigb_mod/min_s(0) -radix unsigned}} -subitemconfig {/irigb_mod/min_s(5) {-height 13 -radix unsigned} /irigb_mod/min_s(4) {-height 13 -radix unsigned} /irigb_mod/min_s(3) {-height 13 -radix unsigned} /irigb_mod/min_s(2) {-height 13 -radix unsigned} /irigb_mod/min_s(1) {-height 13 -radix unsigned} /irigb_mod/min_s(0) {-height 13 -radix unsigned}} /irigb_mod/min_s
add wave -noupdate -radix unsigned -childformat {{/irigb_mod/sec_s(5) -radix unsigned} {/irigb_mod/sec_s(4) -radix unsigned} {/irigb_mod/sec_s(3) -radix unsigned} {/irigb_mod/sec_s(2) -radix unsigned} {/irigb_mod/sec_s(1) -radix unsigned} {/irigb_mod/sec_s(0) -radix unsigned}} -subitemconfig {/irigb_mod/sec_s(5) {-height 13 -radix unsigned} /irigb_mod/sec_s(4) {-height 13 -radix unsigned} /irigb_mod/sec_s(3) {-height 13 -radix unsigned} /irigb_mod/sec_s(2) {-height 13 -radix unsigned} /irigb_mod/sec_s(1) {-height 13 -radix unsigned} /irigb_mod/sec_s(0) {-height 13 -radix unsigned}} /irigb_mod/sec_s
add wave -noupdate /irigb_mod/output
add wave -noupdate /irigb_mod/day_c
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {241000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 207
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {198077 ps} {252733 ps}
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
wave create -driver freeze -pattern constant -value 0000011 -range 6 0 -starttime 0ns -endtime 250ns sim:/irigb_mod/year 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 250ns sim:/irigb_mod/enable 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10ns Edit:/irigb_mod/enable 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 250ns sim:/irigb_mod/update 
wave modify -driver freeze -pattern constant -value 1 -starttime 99ns -endtime 101ns Edit:/irigb_mod/update 
wave modify -driver freeze -pattern constant -value 10101 -range 4 0 -starttime 0ns -endtime 250ns Edit:/irigb_mod/hour 
wave modify -driver freeze -pattern constant -value 0000100 -range 6 0 -starttime 0ns -endtime 250ns Edit:/irigb_mod/year 
wave modify -driver freeze -pattern constant -value 101101101 -range 8 0 -starttime 0ns -endtime 250ns Edit:/irigb_mod/day 
wave modify -driver freeze -pattern constant -value 10111 -range 4 0 -starttime 0ns -endtime 250ns Edit:/irigb_mod/hour 
wave modify -driver freeze -pattern constant -value 111011 -range 5 0 -starttime 0ns -endtime 250ns Edit:/irigb_mod/min 
wave modify -driver freeze -pattern constant -value 111010 -range 5 0 -starttime 0ns -endtime 250ns Edit:/irigb_mod/sec 
wave modify -driver freeze -pattern constant -value 101101110 -range 8 0 -starttime 0ns -endtime 250ns Edit:/irigb_mod/day 
WaveCollapseAll -1
wave clipboard restore
