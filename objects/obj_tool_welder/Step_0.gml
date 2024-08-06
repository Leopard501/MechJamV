event_inherited();

var _patch = collision_rectangle(
	(x - 7) - sprite_get_bbox_left(sprite_index),
	(y - 4) - sprite_get_bbox_top(sprite_index),
	(x - 7) + sprite_get_bbox_right(sprite_index),
	(y - 4) + sprite_get_bbox_bottom(sprite_index),
	obj_tool_patch, false, true
);
patched = _patch > 0;