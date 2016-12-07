///save_game(current_room)
var save_file = "save.ini";
var temp_file = "save.temp";

if(file_exists(temp_file)){
    file_delete(temp_file);
}

ini_open(temp_file);

var to_store = ds_map_find_first(GameState.switches);
while(!is_undefined(to_store)){
    var value = GameState.switches[? to_store];
    
    if(is_real(value)){
        ini_write_real("Switches", to_store, value);
    }else{
        ini_write_string("Switches", to_store, value);
    }
    
    to_store = ds_map_find_next(GameState.switches, to_store);
}

ini_write_real("Options", "LEFT_BUTTON", global.go_left_button);
ini_write_real("Options", "RIGHT_BUTTON", global.go_right_button);
ini_write_real("Options", "UP_BUTTON", global.go_up_button);
ini_write_real("Options", "DOWN_BUTTON", global.go_down_button);
ini_write_real("Options", "INTERACTION_BUTTON", global.interaction_button);
ini_write_real("Options", "SKIP_BUTTON", global.text_skip_button);


ini_write_string("MainCharacter", "room", room_get_name(argument0));

if(instance_exists(Inventory)){
    with(instance_find(Inventory, 0)){
        for(var i = 0; i < array_length_1d(itens); i++){
            if(itens[i] != 0){
                ini_write_string("Inventory", "inv" + string(i), object_get_name(itens[i].object_index));
            }
        }
    }
}

ini_close();

file_delete(save_file);
file_rename(temp_file, save_file);

