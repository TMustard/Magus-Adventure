event_inherited();

enum tower {
	idle,
	hit,
	attack,
}

starting_state_ = tower.attack;
state_ = starting_state_;


alarm[0] = global.one_second * random_range(6, 8);

//image_index = 0;
//image_speed = 1;
//image_xscale = choose(-1, 1);
range_ = 150;