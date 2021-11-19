
ps:
	iverilog -g2012 -o pixelSensor -c pixelSensor.fl
	vvp -n pixelSensor

pa:     
	iverilog -g2012 -o pixelArray -c pixelArray.fl
	vvp -n pixelArray

pf:
	iverilog -g2012 -o pixelArrayFSM_tb -c pixelArrayFSM_tb.fl
	vvp -n pixelArrayFSM_tb
	
pfa:
	iverilog -g2012 -o pixelArrayFSM -c pixelArrayFSM.fl
	vvp -n pixelArrayFSM	
	
pat: 
	iverilog -g2012 -o pixelArray_tb -c pixelArray_tb.fl
	vvp -n pixelArray_tb


psfsm:
	iverilog -g2012 -o pixelSensorFsm -c pixelSensorFsm.fl
	vvp -n pixelSensorFsm


ysfsm: synth
	dot pixelSensorFsm.dot -Tpng > pixelSensorFsm.png

synth:
	yosys pixelSensorFsm.ys


test: ps pa pat psfsm synth
