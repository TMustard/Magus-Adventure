/// @description Sword State
image_speed = .8;



if animation_hit_frame(1) {
	//if sign(x_speed_) > 0 {
		//}
	
	var _angle = direction_facing_*90;
	var _life = 3;
	var _damage = 1;
	var _knockback = 6;
	var _hitbox = create_hitbox(s_sword_hitbox, x, y, _angle, _life, [o_enemy, o_bush, o_grass], _damage, _knockback);
	audio_play_sound(a_swipe, 8, false);

	switch direction_facing_ {
		case dir.up: _hitbox.y -= 0; break;
		case dir.down: _hitbox.y += 0; break;
		default: _hitbox.y -= 8; break;
	}
	
//set_movement(roll_direction_, roll_speed_ - 5);
//move_movement_entity(false);
	

	if  direction_facing_ == dir.down and !place_meeting(x, y+40, collision_object_)  {
		vspeed = 4;
		}
	
	
	if  direction_facing_ == dir.left and !place_meeting(x-30, y-20, collision_object_)  {
		hspeed = -3;
		vspeed = -1;
		} else if  direction_facing_ == dir.left and place_meeting(x-30, y-20, collision_object_) and !place_meeting(x-30, y, collision_object_){
		hspeed = -3;	
		}
	if  direction_facing_ == dir.right and !place_meeting(x+30, y-20, collision_object_)  {
		hspeed = 3;
		vspeed = -1;
		}  else if  direction_facing_ == dir.right and place_meeting(x+30, y-20, collision_object_) and !place_meeting(x+30, y, collision_object_){
		hspeed = 3;	
		}
	if  direction_facing_ == dir.up and !place_meeting(x, y-40, collision_object_)  {
		vspeed = -4;
		}
}

if animation_hit_frame(image_number - 1) {
	vspeed = 0;
	hspeed = 0;
	state_ = player.move;
	}

