if (global.control.sel_grab == grab_idx) {
	image_index = 1;	
} else {
	image_index = 0;	
}

draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, 0, c_white, 1);