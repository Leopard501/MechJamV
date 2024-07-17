// https://gamemaker.io/en/blog/dynamic-rendering-masks

// fill with alpha 0
gpu_set_blendenable(false)
gpu_set_colorwriteenable(false, false, false, true);
draw_set_alpha(0);
draw_rectangle(0, 0, room_width, room_height, false);

// draw mask
draw_set_alpha(1);
draw_sprite(global.mech.sprite_index, 0, global.mech.x, global.mech.y);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true, true, true, true);

// draw sprite
gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
gpu_set_alphatestenable(true);
draw_self();
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);