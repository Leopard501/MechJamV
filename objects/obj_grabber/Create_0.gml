grabbed = false;
grab_pulse = false;
tool = -1;
immobilized = false;
moving = false;

acquire = function(_tool) {
	if (tool != -1) return;
	
	if (!global.control.tutorial[4] && _tool.tool_type == TOOL_TYPE.SCRAPER) {
		global.control.tutorial[4] = true;	
	}
	if (!global.control.tutorial[6] && _tool.tool_type == TOOL_TYPE.PUMP) {
		global.control.tutorial[6] = true;	
	}
	
	tool = _tool;
	if (tool.hook != -1) tool.hook.has_tool = false;
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