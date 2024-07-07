/// @description Grab

if (other == grabber) exit;

if (other.grab_pulse) {
	if (grabber != -1) {
		grabber.release();
	}
	
	other.acquire(self);
}