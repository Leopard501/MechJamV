if (held) {
	var _new_angle = point_direction(x, y, mouse_x, mouse_y);
	//show_debug_message(_new_angle);
	//show_debug_message(old_angle);
	if (old_angle < _new_angle) {
		rotation = (rotation + 20) % 360;
	} else if (old_angle > _new_angle) {
		rotation = (rotation - 20) % 360;
	}
	old_angle = _new_angle;
	//rotation = _new_angle;
	//image_angle = rotation;
}
