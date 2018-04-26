draw_set_halign(fa_center);
draw_set_valign(fa_middle);
depth = y - 1;
//draw_set_font(s_font);
//draw_set_color(c_white);
draw_text(view_wview[0] / 2,room_height / 2, "Game Over");
draw_text(view_wview[0] / 2, room_height / 2 + 65, "Press P to Post Score");
draw_text(view_wview[0] / 2, room_height / 2 + 50, "Press H to go to High Scores");
draw_text(view_wview[0] / 2, room_height / 2 + 35, "Press R to Restart");

