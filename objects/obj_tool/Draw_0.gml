/// @description Mirror

if (grabber != -1 && grabber.mirrored) {
	sprite_index = mirror_sprite;
} else {
	sprite_index = main_sprite;
}

draw_self();