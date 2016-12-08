switch(argument0){
    case "new_button":
        if(instance_exists(Inventory)){
            with(Inventory){
                instance_destroy();
            }
            instance_create(0, 0, Inventory);
        }
        initialize_switches();
        room_goto(CapQuarter);
        Inventory.visible = true;
        break;
    case "load_button":
        Inventory.visible = true;
        load_game()
        break;
    case "exit_button":
        game_end();
    default:
        default_inventory_error();
    break
}



