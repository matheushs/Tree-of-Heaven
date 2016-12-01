if(argument0 == "ladder"){
    event_teleport(Cockpit);
}else

if(!get_switch("has_cleared_gas")){
    if(global.item_on_hand.name == "item_spacesuit_with_tear"){
        ai_says("Steve! You can't go in there using that! Didn't you see it has a hole in the side?");
        ai_says("You should probably try to get that repaired.")
    }else if(global.item_on_hand.name == "item_spacesuit_fixed"){
        if(argument0 == "blinking_light"){
            with(obj_blinking_light){
                instance_destroy();
            }
            obj_green_mist.disappear = true;
            remove_from_inventory(global.item_on_hand);
            set_switch("has_cleared_gas", true);
            
            steve_says("...")
            steve_says("And then there were two.")
            steve_says("Huh, looks like he is clutching on to something.")
        }else{
            ai_says("Steve, may I suggest that you clear the gas first?")
        }
    }else{
        steve_says("I can't do anything with all this gass around me. I need to find a way to get rid of it.")
    }
}else

if(global.item_on_hand != 0){
    switch(global.item_on_hand.name){
    default:
        default_inventory_error();
        break;
    }
}else

switch(argument0){
    case "body":
        if(get_switch("checked_last_body")){
            steve_says("There... there is nothing else to see here.")
        }else if(!get_switch("checked_engine")){
            steve_says("I should check the engine first, make sure it isn't in a critical state.")
        }else{
            set_switch("checked_last_body", true);
            
            scr_see_last_body();
        }
        break;
    case "engine":
        if(get_switch("checked_engine")){
            steve_says("There is nothing else to see here.")
        }else{
            set_switch("checked_engine", true);
            
            steve_says("Dan, in the middle of all this junk shoved in here, are these-?")
            ai_says("My missing memory cards. Give me a moment and I shall reintegrate them with my main memory. A few minutes should be enough.")
            ai_says("I'll also be able to give you a precise status on the engine possible repairs soon.")
            ai_says("You should check on the body while I do so.")
        }
        break;
    default:
        default_inventory_error();
    break
}



