/// @description Grab

if (other == parent) exit;

if (other.grabbed) {
	if (parent != -1) {
		parent.release();
	}
	
	parent = other;
	parent.acquire(self);
}