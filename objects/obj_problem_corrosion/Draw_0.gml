event_inherited();

//https://gamemaker.io/en/blog/dynamic-rendering-masks

// fill with alpha 0
gpu_set_blendenable(false)
gpu_set_colorwriteenable(false, false, false, true);
draw_set_alpha(0);
draw_rectangle(0, 0, room_width, room_height, false);

// draw mask
draw_set_alpha(1);
gpu_set_alphatestenable(true);
draw_sprite(global.mech.sprite_index, 0, global.mech.x, global.mech.y);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true, true, true, true);

// draw sprite
//gpu_set_blendmode_ext(bm_dest_color, bm_zero);
//gpu_set_blendequation_sepalpha(bm_eq_add, bm_eq_min);
//gpu_set_blendequation(bm_eq_min);
//gpu_set_blendmode_ext_sepalpha(bm_src_color, bm_inv_src_color, bm_dest_alpha, bm_inv_dest_alpha);
gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
draw_set_alpha(0.5);
draw_sprite(sprite_index, 0, x, y);
gpu_set_alphatestenable(false);
draw_set_alpha(1);
gpu_set_blendmode(bm_normal);