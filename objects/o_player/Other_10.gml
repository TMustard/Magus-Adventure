/// @description Move State
image_speed = 0;
var _x_input = o_input.right_ - o_input.left_;
var _y_input = o_input.down_ - o_input.up_;
var _input_direction = point_direction(0, 0, _x_input, _y_input);
roll_direction_ = direction_facing_*90;
var _y_speed = lengthdir_y(speed_, direction_);
x_speed_ = lengthdir_x(speed_, direction_);
y_speed_ = lengthdir_y(speed_, direction_);

if _x_input == 0 and _y_input == 0 and !place_meeting(x, y+_y_speed, collision_object_){
	//image_index = 0;
	image_speed = 0.6;
	apply_friction_to_movement_entity();
	y += 0.35; 
	
} else {
	image_speed = 0.6;
	if _x_input != 0 {
		image_xscale = _x_input;
	}
	get_direction_facing(_input_direction);
	add_movement_maxspeed(_input_direction, acceleration_, max_speed_);
	roll_direction_ = _input_direction;
}

inventory_use_item(o_input.action_one_pressed_, global.item[0]);
inventory_use_item(o_input.action_two_pressed_, global.item[1]);
inventory_use_item(o_input.action_three_pressed_, global.item[2]);

move_movement_entity(false);
