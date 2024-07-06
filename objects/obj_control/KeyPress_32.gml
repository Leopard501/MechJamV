/// @description Activate (temp)

if (sel_grab == -1) exit;
if (grabbers[sel_grab].tool == -1) exit;

// there is no error here
with (grabbers[sel_grab].tool) {
	event_user(0);
}