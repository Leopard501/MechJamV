grabbed = false;
tool = -1;

acquire = function(_tool) {
	if (tool != -1) return;
	
	tool = _tool;
	tool.parent = self;
}

release = function() {
	grabbed = false;
	if (tool != -1) {
		tool.parent = -1;
		tool = -1;
	}
}