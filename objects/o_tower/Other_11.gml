/// @description Idle State

if distance_to_object(o_player) < range_ {
	state_ = tower.attack;	
}