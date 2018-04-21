/// @description Attack State

if not instance_exists(o_player) {
	state_ = tower.idle;
	exit;
}




	alarm[0] = global.one_second / 2 * random_range(2, 4);
	var _direction = point_direction(x, y, o_player.x, o_player.y) + random_range(-30, 30);
	var _stinger = instance_create_layer(x, y, "Instances", o_stinger);
	_stinger.direction = _direction;
	_stinger.image_angle = _direction;
	_stinger.speed = 2;
	state_ = tower.idle;
	audio_play_sound(a_stinger, 1, false);


