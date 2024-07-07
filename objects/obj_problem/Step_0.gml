x = mech.x + disp_x;
y = mech.y + disp_y;

event_user(0);

if (progress == 100) {
	instance_destroy();	
}