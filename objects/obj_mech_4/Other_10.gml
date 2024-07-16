/// @description Initialize

y = 156;

add_problem(obj_problem_fire, -50, 0);
add_problem(obj_problem_fire, 40, -20);
add_problem(obj_problem_hole, -20, 10);

ds_list_add(dialog, "THE FUEL TANK BLEW! QUICK, PUT ME OUT!");
ds_list_add(dialog, "Thank you... Now just patch up the plating and we'll get back out there.");
ds_list_add(dialog, "This ol' girl gets awful grumbly when she doesn't get to do what she wants.");
ds_list_add(dialog, "Which is lighting things on fire, of course.");
ds_list_add(dialog, "Close one, huh? Ah, the pros and cons of being a giant flamethrower. See ya later.");