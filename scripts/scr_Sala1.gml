switch(argument0){
    case "interactable da sala 1":
        if(global.item_on_hand == 0){
            add_to_inventory(instance_create(0, 0, obj_Item));
        }else{
            show_debug_message(object_get_name(global.item_on_hand.object_index));
        }
        break;
    
    default:
    break
}



