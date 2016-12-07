switch(argument0){
    case "save_button":
        save_game_ext(global.last_room);
        steve_says("Game Saved!")
        break;
    case "load_button":
        load_game();
        break;
    case "exit_button":
        game_end();
    default:
        default_inventory_error();
    break
}



