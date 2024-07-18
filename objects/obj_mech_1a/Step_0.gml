if (global.control.o_pressure > 80) {
	global.control.tutorial[8] = true;	
}

// this is indexed at 1 because I am an idiot
for (var _i = 8; _i > 0; _i--) {
	if (global.control.tutorial[_i] && !tutorial[_i]) {
		tutorial[_i] = true;
		update_dialog(_i + 3);
		break;	
	}
}

paused = !global.control.tutorial[3];

event_inherited();