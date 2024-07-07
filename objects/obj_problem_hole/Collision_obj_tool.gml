/// @description fix

if (other.tool_type == TOOL_TYPE.PATCH) {
	covered = true;
	patch = other;
}

if (other.tool_type == TOOL_TYPE.WELDER && 
	covered && 
	other.activated) {
		
	progress++;
}