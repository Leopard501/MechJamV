/// @description Grab

if (other == grabber) exit;

if (other.grabbed) {
	if (grabber != -1) {
		grabber.release();
	}
	
	other.acquire(self);
}