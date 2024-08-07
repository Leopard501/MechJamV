image_index = 0;

if (blinked && global.control.has_power && global.mech.state == MECH_STATE.REPAIR) {
	// match problem required tool to held tool
	for (var _i = 0; _i < ds_list_size(global.mech.problems); _i++) {
		var _problem = ds_list_find_value(global.mech.problems, _i);
		if (!instance_exists(_problem)) continue;
		if (_problem.required_tool == TOOL_TYPE.WELDER) {
			image_index = 1;
			break;
		}
	}
}

draw_self();

blink_time++;
if (blink_time == 30) {
	blinked = !blinked;	
	blink_time = 0;
}