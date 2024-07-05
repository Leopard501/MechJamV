/// @description Grab

if (other == parent) exit;

if (other.grabbed) {
	if (parent != -1) {
		parent.grabbed = false;	
	}
	
	parent = other;
}