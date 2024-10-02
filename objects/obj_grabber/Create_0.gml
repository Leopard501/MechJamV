grabbed = false;
grab_pulse = false;
tool = -1;
immobilized = false;
moving = false;
hovering_name = -1;
hovered = false;

acquire = function(_tool) {
	if (tool != -1) return;
	
	tool = _tool;
	if (tool.hook != -1) tool.hook.tool = -1;
	tool.hook = -1;
	tool.grabber = self;
	tool.resting = false;
}

release = function() {
	immobilized = false;
	grabbed = false;
	if (tool != -1) {
		tool.activated = false;
		tool.grabber = -1;
		tool.resting = false;
		
		tool = -1;
	}
}