####ASK13 Ground Handling System

setlistener("/sim/signals/fdm-initialized", func {
    print("Ground handling system loaded.");
});

var gh = "controls/gear/assist-1";

setlistener("/velocities/groundspeed-kt", func(i) {
	if(i.getValue()>15 and getprop(gh)==1){
		setprop(gh, 0);
	}
});

setlistener("/gear/gear[1]/wow", func(i) {
	if(i.getValue()!=1 and getprop(gh)==1){
		setprop(gh, 0);
	}
});
