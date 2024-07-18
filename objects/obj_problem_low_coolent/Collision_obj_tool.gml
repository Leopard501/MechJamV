/// @description fix

if (other.tool_type == TOOL_TYPE.PUMP &&
	other.activated &&
	global.control.c_pressure > 80) {
		
	progress++;
	
	if (progress > 99) {
		global.control.tutorial[9] = true;;	
	}
}