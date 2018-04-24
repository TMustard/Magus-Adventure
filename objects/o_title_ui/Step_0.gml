var _last_index = index_;
if o_input.up_pressed_ {
	index_ = max(--index_, 0);
}

if o_input.down_pressed_ {
	index_ = min(++index_, option_length_-1);
}

if _last_index != index_ {
	audio_play_sound(a_menu_move, 1, false);	
}

if o_input.action_one_pressed_ {
	switch (index_) {
		case options.continue_game:
			audio_play_sound(a_menu_select, 3, false);
			ini_load("save_data.ini");
			break;
		
		case options.new_game:
			audio_play_sound(a_menu_select, 3, false);
			room_goto(r_world);
			break;
		
		case options.high_scores:
			//http_get("http://api.uinames.com");
			http_get("https://dbfz.herokuapp.com/guides/1");
			//draw_text(x, y+5, "Loading...");
			break;
		
		case options.quit:
			audio_play_sound(a_menu_select, 3, false);
			game_end();
			break;
	}
}