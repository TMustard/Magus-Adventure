if (string_length(keyboard_string)<limit) 
    message = keyboard_string;
else
    keyboard_string = message;
	
if keyboard_check_pressed(ord("O")) {
	instance_destroy(o_textbox);	
	show_message("Score Posted!")
}