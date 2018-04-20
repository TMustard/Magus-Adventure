depth = -y;
event_user(state_);
sprite_index = sprite_[state_, direction_facing_];

if global.player_health <= 0 {
	instance_destroy();
	instance_create_layer(x, y, "Instances", o_player_dead);
	instance_create_layer(0, 0, "Instances", o_gameover)
}