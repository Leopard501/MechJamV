/// @description Collect

if (other == hook || other.has_tool) exit;

if (grabber = -1) {
	resting = false;
	other.has_tool = true;
	hook = other;
	velocity = 0;
}