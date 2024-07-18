if (sel_fluid != FLUID.COOLANT) {
	c_pressure = clamp(c_pressure - 1, 0, 100);	
} if (sel_fluid != FLUID.OIL) {
	o_pressure = clamp(o_pressure - 1, 0, 100);	
}

if (sel_grab == -1) exit;

var _moving = false;

switch (grab_dir) {
	case DIR.RIGHT:
		with (grabbers[sel_grab]) {
			if (x < max_x && !immobilized) {
				x += x_speed * global.control.grab_speed;
				_moving = true;
			}
		}
		break;
	case DIR.LEFT:
		with (grabbers[sel_grab]) {
			if (x > min_x && !immobilized) {
				x -= x_speed * global.control.grab_speed;
				_moving = true;
			}
		}
		break;
	case DIR.UP:
		with (grabbers[sel_grab]) {
			if (y > min_y && !immobilized) {
				y -= y_speed * global.control.grab_speed;
				_moving = true;
			}
		}
		break;
	case DIR.DOWN:
		with (grabbers[sel_grab]) {
			if (y < max_y && !immobilized) {
				y += y_speed * global.control.grab_speed;	
				_moving = true;
			}
		}
		break;
}

var _tool = get_tool();

if (!audio_is_playing(grabber_sound) && _moving) {
	grabber_sound = audio_play_sound(snd_lp_grabber, 1, true);
} if (audio_is_playing(grabber_sound) && !_moving) {
	audio_stop_sound(grabber_sound);	
}

if (_tool != -1 && 
	_tool.tool_type == TOOL_TYPE.SCRAPER) {
	
	_tool.moving = _moving;
}