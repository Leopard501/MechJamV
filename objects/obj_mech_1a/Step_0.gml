if (dialog_finished) {
	if (global.control.tutorial_3 && !t3) {
		t3 = true;
		update_dialog(6);
	} else if (global.control.tutorial_2 && !t2) {
		t2 = true;
		update_dialog(5);	
	} else if (global.control.tutorial_1 && !t1) {
		t1 = true;
		update_dialog(4);	
	}
}

paused = !global.control.tutorial_3;

event_inherited();