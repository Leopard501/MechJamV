/// @description fix

if (other.tool_type = TOOL_TYPE.PUMP) {
	global.control.tutorial[7] = true;	
}

if (other.tool_type == TOOL_TYPE.PUMP &&
	other.activated &&
	global.control.o_pressure > 80) {
		
	progress++;
}