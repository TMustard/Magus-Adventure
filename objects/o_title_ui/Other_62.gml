//var str = ds_map_find_value(async_load, "result")

var json = async_load[? "result"];
//show_debug_message(json)
//show_message(json);	
var _map = json_decode(json);
var list = ds_map_find_value(_map, "scores");
var newlist = ds_map_find_value(list, "default")
show_debug_message(newlist);
var newmap = ds_list_find_value(newlist, 0);
show_debug_message(newmap);
//var _list = ds_map_find_value(_map, "scores");
//var _myList = ds_map_create();
//ds_map_add(_myList, "key", _list)
//show_debug_message(_myList);


//if _map == -1 {
//show_message("Invalid response");	
//exit;
//}
//var _list = ds_map_find_value(_map, "default")
//show_message(_list)
//show_message(_map)
//if(ds_map_exists(_map, "scores")) {
//	var _name = _map[? "scores"]
	//show_debug_message("yo");
//	show_message(_name);	
	//show_message(_name)
//}


