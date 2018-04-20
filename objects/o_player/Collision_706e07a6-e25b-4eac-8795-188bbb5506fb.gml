/// @description Hit logic
if hurtbox_entity_can_be_hit_by(other) {
	vspeed = 0;
	invincible_ = true;
	alarm[0] = global.one_second * 1.5;
	global.player_health -= other.damage_;
	//var _direction = point_direction(other.x, other.y, x, y);
	//set_movement(_direction, other.knockback_);
	state_ = player.hit;
	audio_play_sound(a_hurt, 6, false);
}
