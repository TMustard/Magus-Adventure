event_inherited();
initialize_movement_entity(.25, .5, o_solid);

enum b_gargoyle {
	hit,
	move,
	attack,
	fireball
}

max_health_ = 15;
health_ = max_health_;
starting_state_ = gargoyle.move;
state_ = starting_state_;
alarm[1] = global.one_second*random_range(0, 1);
attack_range_ = 35;
fireball_range_ = 150;
image_index = 0;
image_xscale = choose(1, -1);
image_speed = .5;