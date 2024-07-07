/// @description Collect

if (other == hook || other.has_tool) exit;

if (grabber = -1) {
	other.has_tool = true;
	hook = other;
}