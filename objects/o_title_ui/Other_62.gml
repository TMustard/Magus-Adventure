var json = async_load[? "result"];
//show_debug_message(json)

var _map = json_decode(json);
if _map == -1 {
show_message("Invalid response");	
exit;
}
//var _list = ds_map_find_value(_map, "default")
//show_message(_list)
//show_message(_map)


if(ds_map_exists(_map, "name")) {
	var _name = _map[? "name"]
	show_debug_message("yo");
	show_message("Top Score: " + _name + ", 35 Gems");	
	//show_message(_name)
}

//if (ds_map_find_value(async_load, "guides") == get) {
//show_message("found")	
//}
