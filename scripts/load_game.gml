///load_game()
var save_file = "save.ini";
var temp_file = "save.temp";

if(file_exists(temp_file)){
    show_message("Error in loading. Reloading from last avaliable save.");
    return false;
}

if(!file_exists(save_file)){
    return false;
}

ini_open(save_file);

global.go_left_button     = ini_read_real("Options", "LEFT_BUTTON", vk_left);
global.go_right_button    = ini_read_real("Options", "RIGHT_BUTTON", vk_right);
global.go_up_button       = ini_read_real("Options", "UP_BUTTON", vk_up);
global.go_down_button     = ini_read_real("Options", "DOWN_BUTTON", vk_down);
global.interaction_button = ini_read_real("Options", "INTERACTION_BUTTON", ord('Z'));
global.text_skip_button   = ini_read_real("Options", "SKIP_BUTTON", ord('X'));


var to_read = ds_map_find_first(GameState.switches);
while(!is_undefined(to_read)){
    var value = GameState.switches[? to_read];
    
    if(is_real(value)){
        GameState.switches[? to_read] = ini_read_real("Switches", to_read, 0);
    }else{
        GameState.switches[? to_read] = ini_read_string("Switches", to_read, "");
    }

    to_read = ds_map_find_next(GameState.switches, to_read);
}

var name_of_room = ini_read_string("MainCharacter", "room", "YourShip_Bedroom");
var room_to_load = asset_get_index(name_of_room);

var inv = 0;
if(instance_exists(Inventory)){
    inv = instance_find(Inventory, 0);
}else{
    inv = instance_create(0, 0, Inventory);
}

for(var i = 0; i < inv.max_itens; i++){
    var item = ini_read_string("Inventory", "inv" + string(i), "");
    show_debug_message(item);
    
    inv.itens[i] = 0;
    if(item != "" && asset_get_index(item) != -1){
        inv.itens[i] = instance_create(0, 0, asset_get_index(item));
    }
}

inv.visible = true;

if(room_to_load > -1){
    room_goto(room_to_load);
}else{
    room_goto(Sala1);
}

ini_close();
return true;


