x = mech.x + disp_x;
y = mech.y + disp_y;

if (progress == 100) {
	instance_destroy(patch);
	instance_destroy();	
}