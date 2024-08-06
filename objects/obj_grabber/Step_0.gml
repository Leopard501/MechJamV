/// @description Check hovering

if (tool != -1) {
	hovering_name = tool.title;
	exit;
}

var _tool = collision_rectangle(
	(x - 7) - sprite_get_bbox_left(sprite_index),
	(y - 7) - sprite_get_bbox_top(sprite_index),
	(x - 7) + sprite_get_bbox_right(sprite_index),
	(y - 7) + sprite_get_bbox_bottom(sprite_index),
	obj_tool, false, true
);
if (instance_exists(_tool)) {
	hovering_name = _tool.title;
	exit;
}

var _patches = collision_rectangle(
	x - sprite_get_bbox_left(sprite_index),
	y - sprite_get_bbox_top(sprite_index),
	x + sprite_get_bbox_right(sprite_index),
	y + sprite_get_bbox_bottom(sprite_index),
	obj_patch_dispenser, false, true
);
if (instance_exists(_patches)) {
	hovering_name = "Patches";
	exit;
}

hovering_name = -1;