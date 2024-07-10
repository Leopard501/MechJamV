/// @description Mirror

if (grabber != -1 && grabber.mirrored) {
	sprite_index = mirror_sprite;
} else {
	sprite_index = main_sprite;
}

if (activated) {
	event_user(0);	
}

draw_self();