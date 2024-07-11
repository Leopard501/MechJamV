global.ps_mechs = part_system_create_layer("ps_mechs", true);
global.ps_tools = part_system_create_layer("ps_tools", true)

// pt_steam
global.pt_steam = part_type_create();
part_type_shape(global.pt_steam, pt_shape_sphere);
part_type_size(global.pt_steam, 0.1, 0.2, 0, 0);
part_type_scale(global.pt_steam, 1, 1);
part_type_speed(global.pt_steam, 0.5, 1, 0, 0);
part_type_direction(global.pt_steam, 80, 100, 0, 0);
part_type_gravity(global.pt_steam, 0, 270);
part_type_orientation(global.pt_steam, 0, 0, 0, 0, false);
part_type_colour3(global.pt_steam, $FFFFFF, $FFFFFF, $FFFFFF);
part_type_alpha3(global.pt_steam, 1, 1, 1);
part_type_blend(global.pt_steam, false);
part_type_life(global.pt_steam, 40, 20);

// pt_fire
global.pt_fire = part_type_create();
part_type_sprite(global.pt_fire, GM_Fire_spr_Fire, false, true, false)
part_type_size(global.pt_fire, 0.1, 0.2, 0.0025, 0.025);
part_type_scale(global.pt_fire, 1, 1);
part_type_speed(global.pt_fire, 0.5, 0.75, 0.005, 0);
part_type_direction(global.pt_fire, 80, 100, 0, 0);
part_type_gravity(global.pt_fire, 0, 270);
part_type_orientation(global.pt_fire, 0, 0, 0, 1, false);
part_type_colour3(global.pt_fire, $00FAFF, $0077FF, $000091);
part_type_alpha3(global.pt_fire, 1, 0.788, 0);
part_type_blend(global.pt_fire, false);
part_type_life(global.pt_fire, 10, 60);

// pt_arcs
global.pt_arcs = part_type_create();
part_type_sprite(global.pt_arcs, GM_Electricity_spr_Electricity1, false, true, false)
part_type_size(global.pt_arcs, 0.1, 0.25, 0, 0);
part_type_scale(global.pt_arcs, 1, 1);
part_type_speed(global.pt_arcs, 0, 0, 0, 0);
part_type_direction(global.pt_arcs, 0, 360, 0.1, 0);
part_type_gravity(global.pt_arcs, 0, 270);
part_type_orientation(global.pt_arcs, 0, 360, 0, 0, false);
part_type_colour3(global.pt_arcs, $FFC119, $FF6100, $FF0800);
part_type_alpha3(global.pt_arcs, 1, 0.439, 0);
part_type_blend(global.pt_arcs, true);
part_type_life(global.pt_arcs, 50, 80);

// pt_sparks
global.pt_sparks = part_type_create();
part_type_shape(global.pt_sparks, pt_shape_square);
part_type_size(global.pt_sparks, 0.2, 0.2, 0, 0);
part_type_scale(global.pt_sparks, 0.5, 0.1);
part_type_speed(global.pt_sparks, 2, 4, 0, 0);
part_type_direction(global.pt_sparks, 0, 360, 0, 0);
part_type_gravity(global.pt_sparks, 0.3, 270);
part_type_orientation(global.pt_sparks, 0, 0, 0, 0, true);
part_type_colour3(global.pt_sparks, $FFFBF4, $00FFFF, $0000FF);
part_type_alpha3(global.pt_sparks, 1, 1, 0);
part_type_blend(global.pt_sparks, false);
part_type_life(global.pt_sparks, 3, 8);

// pt_rust
global.pt_rust = part_type_create();
part_type_shape(global.pt_rust, pt_shape_pixel);
part_type_size(global.pt_rust, 0.4, 0.5, 0.02, 0.1);
part_type_scale(global.pt_rust, 1, 1);
part_type_speed(global.pt_rust, 1.5, 1.5, 0.005, 0);
part_type_direction(global.pt_rust, 0, 360, 0, 0);
part_type_gravity(global.pt_rust, 0.1, 270);
part_type_orientation(global.pt_rust, 0, 0, 0, 1, false);
part_type_colour3(global.pt_rust, $008CFF, $0077FF, $000091);
part_type_alpha3(global.pt_rust, 1, 0.788, 0);
part_type_blend(global.pt_rust, false);
part_type_life(global.pt_rust, 10, 30);

// pt_coolent
global.pt_coolent = part_type_create();
part_type_shape(global.pt_coolent, pt_shape_pixel);
part_type_size(global.pt_coolent, 1, 1, 0, 0);
part_type_scale(global.pt_coolent, 1, 1);
part_type_speed(global.pt_coolent, 0, 0, 0, 0);
part_type_direction(global.pt_coolent, 80, 100, 0, 5);
part_type_gravity(global.pt_coolent, 0.05, 270);
part_type_orientation(global.pt_coolent, 0, 0, 0, 0, false);
part_type_colour3(global.pt_coolent, $FFE196, $CC9D28, $CC9D28);
part_type_alpha3(global.pt_coolent, 1, 1, 0);
part_type_blend(global.pt_coolent, false);
part_type_life(global.pt_coolent, 40, 80);

// pt_oil
global.pt_oil = part_type_create();
part_type_shape(global.pt_oil, pt_shape_pixel);
part_type_size(global.pt_oil, 1, 1, 0, 0);
part_type_scale(global.pt_oil, 1, 1);
part_type_speed(global.pt_oil, 0, 0, 0, 0);
part_type_direction(global.pt_oil, 80, 100, 0, 5);
part_type_gravity(global.pt_oil, 0.05, 270);
part_type_orientation(global.pt_oil, 0, 0, 0, 0, false);
part_type_colour3(global.pt_oil, $000000, $001C2B, $001C2B);
part_type_alpha3(global.pt_oil, 1, 1, 0);
part_type_blend(global.pt_oil, false);
part_type_life(global.pt_oil, 40, 80);