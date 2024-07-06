/// @description Grab

if (other == parent) exit;

if (other.grabbed) {
	if (parent != -1) {
		parent.release();
	}
	
	other.acquire(self);
}