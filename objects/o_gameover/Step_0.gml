if keyboard_check_pressed(ord("R")) game_restart();
if keyboard_check_pressed(ord("P")) instance_create_layer(40, 40, "Effects", o_textbox);
if keyboard_check_pressed(ord("H"))  {
	instance_destroy(o_game);
	room_goto(r_scores);
	
}


