/// @description Fix

if (global.control.sel_fluid != FLUID.COOLANT) exit;

var _others = ds_list_create();
var _num = collision_rectangle_list(
	x - sprite_get_bbox_left(sprite_index),
	0,
	x + sprite_get_bbox_right(sprite_index),
	y + sprite_get_bbox_bottom(sprite_index),
	obj_tool_pump, false, true, _others, false
);

if (_num > 0) {
	for (var _i = 0; _i < _num; _i++) {
		if (_others[| _i].activated) {
			progress++;	
		}
	}
}

ds_list_destroy(_others);