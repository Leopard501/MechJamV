var _x = global.control.x;
var _y = global.control.y;
var _width = 100;
var _y_top = 35;
var _y_bottom = 10;

hovered = global.mech.dialog_forced &&
	mouse_x > _x - _width && mouse_x < _x + _width &&
	mouse_y > _y - _y_top && mouse_y < _y + _y_bottom;