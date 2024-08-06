if (held) {
	image_index = 1;	
} else {
	image_index = 0;	
}

draw_self();

var _d = description;
var _tool = global.control.get_tool();
if (_tool != -1) {
	switch (_tool.tool_type) {
		case TOOL_TYPE.PATCH:
		case TOOL_TYPE.SCRAPER:
		case TOOL_TYPE.NONE:
			_d = "No Action";
			break;
		case TOOL_TYPE.WELDER:
			if (_tool.patched) {
				_d = "Weld Patch";	
			} else {
				_d = "! PATCH REQUIRED !";
			}
			break;
		case TOOL_TYPE.PUMP:
			if (global.control.c_pressure >= 80) {
				_d = "Pump Coolant";	
			} else if (global.control.o_pressure >= 80) {
				_d = "Pump Oil";
			} else {
				_d = "! LOW PRESSURE !";
			}
			break;
	}
}

if (held || hovered) {
	global.control.draw_holo(_d);
}