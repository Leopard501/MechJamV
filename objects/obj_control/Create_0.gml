enum DIR {
	NONE,
	UP,
	DOWN,
	LEFT,
	RIGHT,
}

enum FLUID {
	FUEL,
	COOLANT,
	OIL,
}

global.control = self;

grabbers = [
	inst_g1,
	inst_g2,
	inst_g3,
]

sel_grab = -1;
grab_speed = 1;
grab_dir = DIR.NONE
do_scrape = false
do_pump = false
do_weld = false
active_fluid = FLUID.FUEL