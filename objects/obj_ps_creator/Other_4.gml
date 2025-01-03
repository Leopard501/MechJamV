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
part_type_shape(global.pt_rust, pt_shape_square);
part_type_size(global.pt_rust, 0.02, 0.025, 0, 0);
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

// pt_blood
global.pt_blood = part_type_create();
part_type_shape(global.pt_blood, pt_shape_pixel);
part_type_size(global.pt_blood, 1, 1, 0, 0);
part_type_scale(global.pt_blood, 1, 1);
part_type_speed(global.pt_blood, 0, 0, 0, 0);
part_type_direction(global.pt_blood, 80, 100, 0, 5);
part_type_gravity(global.pt_blood, 0.05, 270);
part_type_orientation(global.pt_blood, 0, 0, 0, 0, false);
part_type_colour3(global.pt_blood, #FF0000, #980000, #5A000F);
part_type_alpha3(global.pt_blood, 1, 1, 0);
part_type_blend(global.pt_blood, false);
part_type_life(global.pt_blood, 40, 80);

// pt_coolant_splash
global.pt_coolant_splash = part_type_create();
part_type_shape(global.pt_coolant_splash, pt_shape_square);
part_type_size(global.pt_coolant_splash, 0.02, 0.025, 0, 0);
part_type_scale(global.pt_coolant_splash, 1, 1);
part_type_speed(global.pt_coolant_splash, 1.5, 1.5, 0.005, 0);
part_type_direction(global.pt_coolant_splash, 0, 360, 0, 0);
part_type_gravity(global.pt_coolant_splash, 0.1, 270);
part_type_orientation(global.pt_coolant_splash, 0, 0, 0, 1, false);
part_type_colour3(global.pt_coolant_splash, $FFE196, $CC9D28, $CC9D28);
part_type_alpha3(global.pt_coolant_splash, 1, 0.788, 0);
part_type_blend(global.pt_coolant_splash, false);
part_type_life(global.pt_coolant_splash, 10, 30);

// pt_oil_splash
global.pt_oil_splash = part_type_create();
part_type_shape(global.pt_oil_splash, pt_shape_square);
part_type_size(global.pt_oil_splash, 0.02, 0.025, 0, 0);
part_type_scale(global.pt_oil_splash, 1, 1);
part_type_speed(global.pt_oil_splash, 1.5, 1.5, 0.005, 0);
part_type_direction(global.pt_oil_splash, 0, 360, 0, 0);
part_type_gravity(global.pt_oil_splash, 0.1, 270);
part_type_orientation(global.pt_oil_splash, 0, 0, 0, 1, false);
part_type_colour3(global.pt_oil_splash, $000000, $001C2B, $001C2B);
part_type_alpha3(global.pt_oil_splash, 1, 0.788, 0);
part_type_blend(global.pt_oil_splash, false);
part_type_life(global.pt_oil_splash, 10, 30);

// pt_water
global.pt_water = part_type_create();
part_type_shape(global.pt_water, pt_shape_pixel);
part_type_size(global.pt_water, 1, 1, 0, 0);
part_type_scale(global.pt_water, 1, 1);
part_type_speed(global.pt_water, 0, 0, 0, 0);
part_type_direction(global.pt_water, 80, 100, 0, 5);
part_type_gravity(global.pt_water, 0.05, 270);
part_type_orientation(global.pt_water, 0, 0, 0, 0, false);
part_type_colour3(global.pt_water, #6a83ab, #6a83ab, #6a83ab);
part_type_alpha3(global.pt_water, 0.7, 0.7, 0);
part_type_blend(global.pt_water, false);
part_type_life(global.pt_water, 60, 120);

// pt_dustcloud
global.pt_dustcloud = part_type_create();
part_type_shape(global.pt_dustcloud, pt_shape_explosion);
part_type_size(global.pt_dustcloud, 0.1, 0.2, 0, 0);
part_type_scale(global.pt_dustcloud, 1, 1);
part_type_speed(global.pt_dustcloud, 0, 0, 0, 0);
part_type_direction(global.pt_dustcloud, 80, 100, 0, 0);
part_type_gravity(global.pt_dustcloud, 0.005, 270);
part_type_orientation(global.pt_dustcloud, 0, 360, 1, 1, false);
part_type_colour3(global.pt_dustcloud, $4C657F, $32597F, $3D6B99);
part_type_alpha3(global.pt_dustcloud, 1, 0.561, 0);
part_type_blend(global.pt_dustcloud, false);
part_type_life(global.pt_dustcloud, 120, 150);

// pt_dustbit
global.pt_dustbit = part_type_create();
part_type_shape(global.pt_dustbit, pt_shape_square);
part_type_size(global.pt_dustbit, 0.02, 0.025, 0, 0);
part_type_scale(global.pt_dustbit, 1, 1);
part_type_speed(global.pt_dustbit, 0, 0, 0, 0);
part_type_direction(global.pt_dustbit, 0, 360, 0, 0);
part_type_gravity(global.pt_dustbit, 0.1, 270);
part_type_orientation(global.pt_dustbit, 0, 0, 0, 1, false);
part_type_colour3(global.pt_dustbit, $4C657F, $32597F, $3D6B99);
part_type_alpha3(global.pt_dustbit, 1, 0.788, 0);
part_type_blend(global.pt_dustbit, false);
part_type_life(global.pt_dustbit, 10, 30);