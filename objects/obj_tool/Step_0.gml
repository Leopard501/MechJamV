if (grabber != -1) {
	x = grabber.x;
	y = grabber.y;
	
	if (!grabber.grabbed) {
		grabber = -1;	
	}
} else if (hook != -1) {
	x = hook.x;
	y = hook.y;
}