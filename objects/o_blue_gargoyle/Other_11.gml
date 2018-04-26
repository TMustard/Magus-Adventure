/// @description Move state
set_sprite_facing();
//var _x_speed = lengthdir_x(speed_, direction_);
add_movement_maxspeed(direction_, 0.03, .1);
move_movement_entity(false);

sprite_index = s_blue_gargoyle;
if alarm[1] <= 0 {
	alarm[1] = global.one_second * random_range(1, 3);
	direction_ = random(360);
}

//if instance_exists(o_player) and distance_to_object(o_player) <= attack_range_ {
	//state_ = gargoyle.attack;	
//}

if alarm[2] <= 0 and distance_to_object(o_player) < fireball_range_ and distance_to_object(o_player) > attack_range_ {
	state_ = gargoyle.fireball;	
}