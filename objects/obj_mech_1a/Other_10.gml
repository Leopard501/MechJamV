/// @description Initialize

y = 141;

add_problem(obj_problem_low_oil, -50, 5);
add_problem(obj_problem_corrosion, 60, -5);

ds_list_add(dialog, "SUPERVISOR: Welcome, new recruit! I know this isn't the most exciting job, but every little bit helps the war effort.");
ds_list_add(dialog, "SUPERVISOR: Before you do any repairing, let me show you the basic facility controls.");
ds_list_add(dialog, "SUPERVISOR: First, select one of the cranes using the big colored buttons near the top of the panel.");