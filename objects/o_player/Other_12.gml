/// @description Evade State
image_speed = 0.7;
invincible_ = true;

set_movement(roll_direction_, roll_speed_);
move_movement_entity(false);


if animation_hit_frame(image_number - 1) {
	invincible_ = false;
	state_ = player.move;
}
