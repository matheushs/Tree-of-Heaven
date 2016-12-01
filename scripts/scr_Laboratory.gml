if(global.item_on_hand != 0){
    if(argument0== "centrifuge"){
        switch(global.item_on_hand.name){
            case "item_vodka":
                if(!get_switch("has_put_vodka")){
                    set_switch("has_put_vodka", true);
                    steve_says("Here, have some alcool.")
                }else{
                    steve_says("There is no point putting it twice.")
                }
                global.item_on_hand = 0;
                break;
            case "item_soda":
                if(!get_switch("has_put_soda")){
                    set_switch("has_put_soda", true);
                    steve_says("Here, have some soda.")
                }else{
                    steve_says("There is no point putting it twice.")
                }
                global.item_on_hand = 0;
                break;
            case "item_syroup":
                if(!get_switch("has_put_syroup")){
                    set_switch("has_put_syroup", true);
                    steve_says("Here, have some maple syroup.")
                }else{
                    steve_says("There is no point putting it twice.")
                }
                global.item_on_hand = 0;
                break;
            case "item_sanitizer":
                if(!get_switch("has_put_sanitizer")){
                    set_switch("has_put_sanitizer", true);
                    steve_says("Here, have some hand sanitizer.")
                }else{
                    steve_says("There is no point putting it twice.")
                }
                global.item_on_hand = 0;
                break;
            case "item_plants":
            case "item_shredded_plants":
            case "item_beaker_with_plants":
                if(!get_switch("has_put_plants")){
                    set_switch("has_put_plants", true);
                    steve_says("Here, have some plants.")
                }else{
                    steve_says("There is no point putting it twice.")
                }
                global.item_on_hand = 0;
                break;
            case "item_antifotorer":
                if(!get_switch("has_put_antifotorer")){
                    set_switch("has_put_antifotorer", true);
                    steve_says("Here, have some antifotorer.")
                }else{
                    steve_says("There is no point putting it twice.")
                }
                global.item_on_hand = 0;
                break;
            default: 
                default_inventory_error();
                break;
        }
    }else
    switch(global.item_on_hand.name){
    case "item_decografter":
        if(argument0 == "log_recorder"){
            if(get_switch("decoded_laboratory_log")){
                steve_says("I've already decoded this log.");
            }else{
                steve_says("[INSERT DECODING GAME HERE]");
                show_debug_message("src_Laboratory needs a decoding game")
                set_switch("decoded_laboratory_log", true)
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
    case "plants":
        if(get_switch("got_plants")){
            steve_says("I've already got some, I don't need any more.")
            steve_says("In fact, I am not really sure why I got the first batch.")
        }else{
            set_switch("got_plants", true);
            steve_says("I don't know why, but I am going to take some of these plants with me.")
            add_to_inventory(instance_create(0, 0, obj_item_plants));
        }
        break;
    case "beaker":
        steve_says("Always useful having somewhere to store liquid.")
        add_to_inventory(instance_create(0, 0, obj_item_beaker));
        set_switch("got_beaker", true)
        with(obj_beaker){
            instance_destroy();
        }
        break;
    case "silver_tape":
        steve_says("Heh. As useful now as it was a hundred years ago.")
        add_to_inventory(instance_create(0, 0, obj_item_silver_tape));
        set_switch("got_silver_tape", true)
        with(obj_silver_tape){
            instance_destroy();
        }
        break;
    case "sanitizer":
        steve_says("With all this blood around, this hand-sanitizer might be handy.")
        add_to_inventory(instance_create(0, 0, obj_item_sanitizer));
        set_switch("got_sanitizer", true)
        with(obj_sanitizer){
            instance_destroy();
        }
        break;
    case "centrifuge":
        num_of_ingredients = 0;
        if(get_switch("has_put_vodka")) num_of_ingredients++;
        if(get_switch("has_put_soda")) num_of_ingredients++;
        if(get_switch("has_put_syroup")) num_of_ingredients++;
        if(get_switch("has_put_sanitizer")) num_of_ingredients++;
        if(get_switch("has_put_plants")) num_of_ingredients++;
        if(get_switch("has_put_antifotorer")) num_of_ingredients++;
        
        if(num_of_ingredients == 0){
            steve_says("A centrifuge, useful when you need... you know, centrifuging stuff.")
        }else{
            options[0,0] = "Turn it on!"
            options[0,1] = scr_do_centrifuge;
            options[1,0] = "Dump contents"
            options[1,1] = scr_empty_centrifuge;
            options[2,0] = "Exit"
            options[2,1] = scr_do_nothing;
            
            scr_showOptions(options, 3)
        }
        break;
    case "boiler":
        steve_says("A boiler. It's like an oven, but when you want to be really precise.")
        break;
    case "analizer":
        steve_says("A chemical analizer. Pass anything through here and it will tell you its chemical composition.")
        break;
    case "log_recorder":
        if(get_switch("decoded_laboratory_log")){
            log_says("The star's properties are... abnormal, to say the least.")
            log_says("It sends an unidentified signal, in abnormally high radiation levels which blocks all comms. Coupled with its unique visual, the data simply...")
            log_says("Well, it fails to make sense.")
            log_says("See, look at this. It pulsates, again and again.")
            log_says("Like a neutron star, dumbass, not like a heart.")
            log_says("The thing is, it is obviously not a pulsar. Too big to be one, too old to still be a star.")
            log_says("By all accounts, this thing should be a black hole.")
            log_says("Except it isn't. It looks like it is... Holding on, if it makes any sense.")
            log_says("I am afraid it will take a while for me to figure this one out.")
            log_says("...")
            log_says("Oh, and the boiler in the lab is broken. It says it boiled, but it did nothing. I need to get John to fix it.")
            log_says("I've been boiling everything in the stove in the kitchen, can you believe it?")
        }else{
            steve_says("A log recorder. Unless I have something especialized in breaking encription, there is no way I'll be able to access it.")
        }
        break;
    case "door_to_hall":
        event_teleport(Hall);
    default:
    break
}



