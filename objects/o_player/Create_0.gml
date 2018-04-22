initialize_movement_entity(0.5, 0, o_solid);
//friction was 0.5
initialize_hurtbox_entity();

image_speed = 0;
acceleration_ = .5;
max_speed_ = 1.5;
roll_speed_ = 2;
direction_facing_ = dir.right;
roll_direction_ = 0;

alarm[1] = global.one_second;

enum player {
	move,
	sword,
	evade,
	bomb,
	spell,
	found_item,
	hit
}

enum dir {
	right,
	up,
	left,
	down
}

starting_state_ = player.move;
state_ = starting_state_;

// Sprite move lookup table
//sprite_[player.move, dir.right] = s_player_run_right;
//sprite_[player.move, dir.up] = s_player_run_right;
//sprite_[player.move, dir.left] = s_player_run_right;
//sprite_[player.move, dir.down] = s_player_run_right;

sprite_[player.move, dir.right] = s_magus_fly_right;
sprite_[player.move, dir.up] = s_magus_float;
sprite_[player.move, dir.left] = s_magus_fly_right;
sprite_[player.move, dir.down] = s_magus_float;

sprite_[player.sword, dir.right] = s_magus_attack_right;
sprite_[player.sword, dir.up] = s_magus_attack_up1;
sprite_[player.sword, dir.left] = s_magus_attack_right;
sprite_[player.sword, dir.down] = s_magus_attack_down1;

//sprite_[player.sword, dir.right] = s_player_attack_right;
//sprite_[player.sword, dir.up] = s_player_attack_up;
//sprite_[player.sword, dir.left] = s_player_attack_right;
//sprite_[player.sword, dir.down] = s_player_attack_down;

//sprite_[player.evade, dir.right] = s_player_roll_right;
//sprite_[player.evade, dir.up] = s_player_roll_up;
//sprite_[player.evade, dir.left] = s_player_roll_right;
//sprite_[player.evade, dir.down] = s_player_roll_down;

sprite_[player.evade, dir.right] = s_magus_roll_right;
sprite_[player.evade, dir.up] = s_magus_roll_right;
sprite_[player.evade, dir.left] = s_magus_roll_right;
sprite_[player.evade, dir.down] = s_magus_roll_right;

sprite_[player.hit, dir.right] = s_magus_float;
sprite_[player.hit, dir.up] = s_magus_float;
sprite_[player.hit, dir.left] = s_magus_float;
sprite_[player.hit, dir.down] = s_magus_float;

sprite_[player.bomb, dir.right] = s_magus_float;
sprite_[player.bomb, dir.up] = s_magus_float;
sprite_[player.bomb, dir.left] = s_magus_float;
sprite_[player.bomb, dir.down] = s_magus_float;