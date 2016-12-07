switch(argument0){
    case "new_button":
        room_goto(CapQuarter);
        Inventory.visible = true;
        break;
    case "load_button":
        load_game()
        Inventory.visible = true;
        break;
    case "exit_button":
        game_end();
    default:
        default_inventory_error();
    break
}



