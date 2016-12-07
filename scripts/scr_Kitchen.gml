if(get_switch("bad_route_opened_door")){
    if(argument0 == "escape_pod"){
        ai_says("Please stay.")
        steve_says("...")
        steve_says("Burn in hell.")
        event_callScript(scr_do_teleport_badend)
    }else{
        steve_says("I need to leave.#Nothing else matters.")
    }
}else 

if(global.item_on_hand != 0){
    switch(global.item_on_hand.name){
    case "item_decografter":
        if(argument0 == "log_recorder"){
            if(get_switch("decoded_kitchen_log")){
                steve_says("I've already decoded this log.");
            }else{
                steve_says("[INSERT DECODING GAME HERE]");
                show_debug_message("src_kitchen needs a decoding game")
                set_switch("decoded_kitchen_log", true)
            }
            global.item_on_hand = 0;
        }else{
            default_inventory_error();
        }
        break;
    case "item_beaker_with_plants":
        if(argument0 == "stove"){
            if(get_switch("decoded_crew_quarter_log")){
                steve_says("Just a bit of fire, and... There, boiled.")
                remove_from_inventory(instance_find(obj_item_beaker_with_plants, 0));
                add_to_inventory(instance_create(0, 0, obj_item_beaker_with_plants_boiled));
            }else{
                steve_says("I should probably use the boiler on the Laboratory. It is much more precise.")
            }
            
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
    case "door":
        event_teleport(Hall);
        break;
    case "knife":
        steve_says("Well, at least now we know what they used to kill Dave.")
        ai_says("And you've got a weapon. That is also good for when he or she eventually comes for you.")
        steve_says("Thank you, Dan. I just feel so much safer now that you said that.")
        
        set_switch("got_knife", true);
        with (obj_knife){
            instance_destroy();
        }
        add_to_inventory(instance_create(0, 0, obj_item_knife));
        break;
    case "vodka":
        steve_says("Who hid this from me? They know I don't like people drinking at work.")
        steve_says("Though I suppose, on a mission this long, it was inevitable.")
        
        set_switch("got_vodka", true);
        with (obj_vodka){
            instance_destroy();
        }
        add_to_inventory(instance_create(0, 0, obj_item_vodka));
        break;
    case "stool":
        steve_says("I'll take it. Might be useful.");
        
        set_switch("got_stool", true);
        with (obj_stool){
            instance_destroy();
        }
        add_to_inventory(instance_create(0, 0, obj_item_kitchenStool));
        break;
    case "soda_machine":
        if(get_switch("got_soda")){
            steve_says("I've already got one.");
        }else{
            steve_says("This is a soda machine.");
            steve_says("Might aswell get one. Never know when I might get thirsty.");
            set_switch("got_soda", true);
            add_to_inventory(instance_create(0, 0, obj_item_soda));
        }
        break;  
    case "sink":
        steve_says("I don't need to wash my hands right now.");
        break;
    case "escape_pod":
        if(get_switch("is_in_good_end_route")){
            options[0,0] = "Leave Dan to his death."
            options[0,1] = scr_start_survival_ending;
            options[1,0] = "Don't choose yet."
            options[1,1] = scr_do_nothing;
            
            scr_showOptions(options, 2);
        }else{
            steve_says("The escape pod.");
            steve_says("I can't leave yet. There is no way I can let anyone in here.");
            steve_says("Or, if there is none of my crew left, I at least have to figure out what happened.");
        }
        break;
    case "stove":
        steve_says("It is a stove. Useful when you need to set something on fire or heat it up.");
        steve_says("Though we have much more precise instruments in the lab.")
        break;
    case "log_recorder":
        if(get_switch("decoded_kitchen_log")){
            log_says("I cut my finger and, as it is the norm whenever you are a dumbass and cut your finger near foreign material, I went to the medbay.")
            log_says("That was when I saw him. The space suit, bent over the doctor, a bloodied scalpel in his hand. Well, obviously, someone in the spacesuit, not the spacesuit by itself. I ran away and he just stood there, staring at me.")
            log_says("And... you know... I thought, before, that... that I had seen someone.  Someone, always in the corner of my eye, always gone whenever I looked at him. I thought it were my eyes playing tricks on me.")
            log_says("I thought I'd heard the airlock open and close during the night, but Dan said there was nothing on his records, that no one had touched the airlock, and i thought... I thought I simply had a nightmare.")
            log_says("I wish I hadn't thought those things. Maybe the doctor would still be alive.")
            log_says("Maybe he would have returned my damned maple syrup.")
            log_says("Forty years not setting a foot in Canada, but I still miss the damn thing.")
            log_says("...")
            log_says("I hear Gina calling me, outside the kitchen. I locked it so the man in the spacesuit wouldn't follow me. I don't want to open the door, I don't want to let him in.")
            log_says("But I can't leave her out there with him either.")
            log_says("I think we have a big knife, somewhere in here. I'll see if I can find it.")
        }else{
            steve_says("A log recorder. Unless I have something especialized in breaking encription, there is no way I'll be able to access it.")
        }
        break;
    default:
    break
}

