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
part_type_life(global.pt_steam, 80, 40);

// pt_fire
var global.pt_fire = part_type_create();
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
var global.pt_arcs = part_type_create();
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
var global.pt_sparks = part_type_create();
part_type_shape(global.pt_sparks, pt_shape_line);
part_type_size(global.pt_sparks, 0.1, 0.25, 0, 0);
part_type_scale(global.pt_sparks, 0.5, 0.1);
part_type_speed(global.pt_sparks, 2, 4, 0, 0);
part_type_direction(global.pt_sparks, 0, 360, 0, 0);
part_type_gravity(global.pt_sparks, 0.3, 270);
part_type_orientation(global.pt_sparks, 0, 0, 0, 0, true);
part_type_colour3(global.pt_sparks, $FFFBF4, $00FFFF, $FF1900);
part_type_alpha3(global.pt_sparks, 1, 1, 0);
part_type_blend(global.pt_sparks, false);
part_type_life(global.pt_sparks, 5, 15);