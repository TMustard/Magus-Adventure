/// @description Hit State
image_index = 0;
vspeed = 0;
hspeed = 0;
move_movement_entity(false);
apply_friction_to_movement_entity();

if speed_ == 0 {
	state_ = starting_state_;
}