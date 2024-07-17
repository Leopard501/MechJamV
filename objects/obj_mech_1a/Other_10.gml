/// @description Initialize

y = 141;

add_problem(obj_problem_low_coolent, -5, 0);
add_problem(obj_problem_low_oil, -40, 5);
add_problem(obj_problem_corrosion, -60, -25);

ds_list_add(dialog, "I just need a quick tune-up before I get to the battlefield.");
ds_list_add(dialog, "My mech just needs a bit of coolant, oil on the joints, and some rust scraped off.");
ds_list_add(dialog, "Alright, I'm off. See you later... but hopefully not too soon.");