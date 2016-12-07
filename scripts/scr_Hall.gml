if(global.item_on_hand != 0){
    if(argument0 == "air_vent" and global.item_on_hand.name != "item_kitchenStool" and !get_switch("put_stool")){
        steve_says("I can't reach it. It is too far away for me do do anything with it.")
    }else

    switch(global.item_on_hand.name){
    case "item_knife":
        if(argument0 == "air_vent"){
            if(get_switch("unscrewed_vent")){
                steve_says("I've already unscrewed the vent.")
            }else if(get_switch("put_stool")){
                set_switch("unscrewed_vent", true);
                steve_says("It will be tight, but i think I can crawl through to the crew's quarters.")
                with(obj_HallHatch){
                    sprite_index = spr_HallHatchOpen;
                }
                global.item_on_hand = 0;
            }
        }else{
            default_inventory_error();
        }
        break;
    case "item_kitchenStool":
        if(argument0 == "air_vent"){
            set_switch("put_stool", true);
            remove_from_inventory(global.item_on_hand);
            steve_says("Great, now I can at least reach it.")
            steve_says("It is still tightly screwed together, though.")
            
            instance_create(624, 487, obj_hall_stool)
        }else{
            default_inventory_error();
        }
        break;
    case "item_decografter":
        if(argument0 == "door_to_medbay"){
            if(get_switch("opened_medbay_door")){
                steve_says("I've already opened this door.");
            }else{
                //steve_says("[INSERT DECODING GAME HERE]");
                //show_debug_message("src_hall needs a decoding game")
                //set_switch("opened_medbay_door", true)
                start_decogame(room, "opened_medbay_door");
            }
            global.item_on_hand = 0;
        }else if(argument0 == "door_to_laboratory"){
            if(get_switch("opened_lab_door")){
                steve_says("I've already opened this door.");
            }else{
                //steve_says("[INSERT DECODING GAME HERE]");
                //show_debug_message("src_hall needs a decoding game")
                //set_switch("opened_lab_door", true)
                start_decogame(room, "opened_lab_door");
            }
            global.item_on_hand = 0;
        }else{
            default_inventory_error();
        }
        break;
    default:
        default_inventory_error();
        break;
    }
}else

switch(argument0){
    case "door_to_cockpit":
        if(get_switch("bad_route_opened_door")){
            steve_says("I am not going back.");
        }else{
            event_teleport(Cockpit);
        }
        break;
    case "door_to_kitchen":
        //event_teleport(Kitchen);
        if(get_switch("started_emergency_drill")){
            event_teleport(Kitchen);
        }else if(!get_switch("started_emergency_drill")){
            steve_says("Locked.")
            ai_says("Yes. All other doors appear to be so, including the one that leads to the Kitchen, which then leads to the emergency escape pod.")
            ai_says("It would be unwise to cause an emergency right now.")
            
            set_switch("heard_about_escape_pod", true);
        }
        break;
    case "door_to_medbay":
        if(get_switch("bad_route_opened_door")){
            steve_says("There is no reason for me to go there.");
        }else if(get_switch("opened_medbay_door")){
            event_teleport(MedBay);
        }else if(get_switch("started_emergency_drill")){
            steve_says("Damn, still locked.")
            steve_says("Either the automatic systems haven't detected anyone in there, or it was re-locked.")
            steve_says("This means I'll either have to find another way inside or use a Decografter on it.")
        }else if(!get_switch("started_emergency_drill")){
            steve_says("Locked.")
            ai_says("Yes. All other doors appear to be so, including the one that leads to the Kitchen, which then leads to the emergency escape pod.")
            ai_says("It would be unwise to cause an emergency right now.")
            set_switch("heard_about_escape_pod", true);
        }
        break;
    case "door_to_crew_quarter":
        //event_teleport(CrewQuarter);
        if(get_switch("bad_route_opened_door")){
            steve_says("There is no reason for me to go there.");
        }else if(get_switch("entered_crew_quarter")){
            event_teleport(CrewQuarter);
        }else if(get_switch("started_emergency_drill")){
            steve_says("Damn, still locked.")
            steve_says("Either the automatic systems haven't detected anyone in there, or it was re-locked.")
            steve_says("This means I'll either have to find another way inside or use a Decografter on it.")
        }else if(!get_switch("started_emergency_drill")){
            steve_says("Locked.")
            ai_says("Yes. All other doors appear to be so, including the one that leads to the Kitchen, which then leads to the emergency escape pod.")
            ai_says("It would be unwise to cause an emergency right now.")
            set_switch("heard_about_escape_pod", true);
        }
        break;
    case "door_to_laboratory":
        if(get_switch("bad_route_opened_door")){
            steve_says("There is no reason for me to go there.");
        }else if(get_switch("opened_lab_door")){
            event_teleport(Laboratory);
        }else if(get_switch("started_emergency_drill")){
            steve_says("Damn, still locked.")
            steve_says("Either the automatic systems haven't detected anyone in there, or it was re-locked.")
            steve_says("This means I'll either have to find another way inside or use a Decografter on it.")
        }else if(!get_switch("started_emergency_drill")){
            steve_says("Locked.")
            ai_says("Yes. All other doors appear to be so, including the one that leads to the Kitchen, which then leads to the emergency escape pod.")
            ai_says("It would be unwise to cause an emergency right now.")
            set_switch("heard_about_escape_pod", true);
        }
        break;
    case "body_of_dave":
        if(get_switch("bad_route_opened_door")){
            steve_says("...");
        }else{
            steve_says("Stabbed to death...")
            steve_says("I'm sorry, Dave.")
        }
        break;
    case "air_vent":
        if(get_switch("bad_route_opened_door")){
            steve_says("There is no reason for me to go there.");
        }else if(get_switch("unscrewed_vent")){
            event_teleport(CrewQuarter);
        }else if(get_switch("put_stool")){
            steve_says("Great, now I can at least reach it.")
            steve_says("It is still tightly screwed together, though.")
        }else{
            steve_says("I can't reach it, it's too high.")
        }
        break;
    case "stool":
        steve_says("A simple kitchen stool.")
        break
    default:
    break
}



