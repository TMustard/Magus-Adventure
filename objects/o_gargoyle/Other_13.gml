/// @description Fireball State

if not instance_exists(o_player) {
	state_ = gargoyle.move;
	exit;
}

apply_friction_to_movement_entity();
move_movement_entity(true);



if speed_ == 0 {
	sprite_index = s_gargoyle_attack_2;
	//alarm[2] = global.one_second / 2 * random_range(2, 4);
	//alarm[3] = 50;
	alarm[2] = global.one_second / 10;
	var _direction = point_direction(x, y, o_player.x, o_player.y) + random_range(-7, 7);
	var _stinger = instance_create_layer(x, y, "Instances", o_fireball);
	_stinger.direction = _direction;
	_stinger.image_angle = _direction;
	_stinger.speed = 1;
	//audio_play_sound(a_stinger, 1, false);
	//if alarm[3] <= 0 {
	//state_ = gargoyle.move;
	//}
	if animation_hit_frame(image_number - 1)  {
		state_ = gargoyle.move;	
		alarm[2] = global.one_second / 2 * random_range(2, 4);
	}
}

