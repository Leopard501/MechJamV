/// @description Advance dialog

if (hovered) {
	if (global.control.monitor_line < ds_list_size(global.mech.dialog) - 1) {
		global.control.monitor_line += 1;
		global.mech.update_dialog(-1);
	} else {
		global.mech.dialog_forced = false;	
	}
}