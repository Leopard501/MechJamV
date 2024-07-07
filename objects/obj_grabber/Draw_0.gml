if (grabbed) {
	image_index = 1;	
} else {
	image_index = 0;	
}

if (!mirrored) {
	draw_line(x, y - sprite_get_bbox_top(sprite_index), x, min_y - sprite_get_bbox_top(sprite_index));	
}

draw_self();