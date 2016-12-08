switch(argument0){
    case "save_button":
        save_game_ext(global.last_room);
        steve_says("Game Saved!")
        break;
    case "load_button":
        options[0,0] = "Load! All unsaved progress will be lost!"
        options[0,1] = load_game;
        options[1,0] = "Cancel!"
        options[1,1] = scr_do_nothing;
        
        scr_showOptions(options, 2);
        break;
    case "exit_button":
        options[0,0] = "Exit! All unsaved progress will be lost!"
        options[0,1] = scr_go_to_menu;
        options[1,0] = "Cancel!"
        options[1,1] = scr_do_nothing;
        
        scr_showOptions(options, 2);
        break;
    default:
        default_inventory_error();
    break
}



