/// @description fix

if (other.tool_type == TOOL_TYPE.PUMP &&
	other.activated &&
	global.control.sel_fluid == FLUID.COOLANT) {
		
	progress++;
}