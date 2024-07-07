grabbed = false;
grab_pulse = false;
tool = -1;

acquire = function(_tool) {
	if (tool != -1) return;
	
	tool = _tool;
	if (tool.hook != -1) tool.hook.has_tool = false;
	tool.hook = -1;
	tool.grabber = self;
	tool.resting = false;
}

release = function() {
	grabbed = false;
	if (tool != -1) {
		tool.activated = false;
		tool.grabber = -1;
		tool.resting = false;
		
		tool = -1;
	}
}