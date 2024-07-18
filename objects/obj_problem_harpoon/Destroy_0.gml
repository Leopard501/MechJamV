global.mech.problem_count--;
global.mech.image_index++;

with (global.control.grabbers[global.control.sel_grab]) {
	immobilized = false;	
}

instance_create_layer(x, y, "tools", obj_tool_harpoon);