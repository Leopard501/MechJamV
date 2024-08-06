global.weather = self;

time = 0;
light_rain = -1;
heavy_rain = -1;
thunder_delay = -1;
lightning_delay = 0;
bomb_tail = 0;
thunder = [snd_thunder_1, snd_thunder_2, snd_thunder_3];
bombs = [snd_bomb_1, snd_bomb_2, snd_bomb_3, snd_bomb_4];
planes = [snd_plane_1, snd_plane_2, snd_plane_3, snd_plane_4];

transition_color = function(_int, _count, _c1s, _c2s) {
	var _idx = clamp(floor(time / _int), 0, _count - 2);
	var _c1 = merge_color(_c1s[_idx], _c1s[_idx + 1], clamp((time - _int * _idx) / _int, 0, 1));
	var _c2 = merge_color(_c2s[_idx], _c2s[_idx + 1], clamp((time - _int * _idx) / _int, 0, 1));
	return [_c1, _c2];
}

swap = function() {
	var _m = global.control.current_mech;
	if (_m != 0) {
		global.weather.time = 0;
	}
}