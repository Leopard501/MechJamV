if (parent != -1) {
	x = parent.x;
	y = parent.y;
	
	if (!parent.grabbed) {
		parent = -1;	
	}
}