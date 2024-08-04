event_inherited();

var _delta_x = cos(wander_direction) * wander_speed;
var _delta_y = sin(wander_direction) * wander_speed;

wander_direction += random_range(-0.25, 0.25);
wander_traveled += wander_speed;
disp_x += _delta_x;
disp_y += _delta_y;

if (random(9000) < 1) {
	mech.add_problem(obj_problem_low_coolent, disp_x, disp_y);
}
if (random(9000) < 1) {
	mech.add_problem(obj_problem_corrosion, disp_x, disp_y);
}
if (random(9000) < 1) {
	mech.add_problem(obj_problem_low_oil, disp_x, disp_y);
}

// gone too far
if (wander_traveled > wander_dist || 
	sqrt(sqr(disp_x - wander_center_x) + sqr(disp_y - wander_center_y)) > wander_max_range) {
	wander_traveled = 0;
	wander_direction = 360 - point_direction(wander_center_x, wander_center_y, disp_x, disp_y);
}