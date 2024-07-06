add_problem = function(_type, _disp_x, _disp_y) {
	var _problem = instance_create_layer(x + _disp_x, y + _disp_y, "problems", _type);
	_problem.mech = self;
	_problem.disp_x = _disp_x;
	_problem.disp_y = _disp_y;
}

event_user(0);