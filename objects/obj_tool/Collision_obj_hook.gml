/// @description Collect

if (other == hook || other.has_tool) exit;

if (grabber = -1) {
	resting = false;
	other.tool = self;
	hook = other;
	velocity = 0;
}