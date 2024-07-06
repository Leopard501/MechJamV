/// @description Deactivate (temp)

if (sel_grab == -1) exit;
if (grabbers[sel_grab].tool == -1) exit;

with (grabbers[sel_grab].tool) {
	activated = false;	
}