/// testing item interaction
if(global.item_on_hand != 0){
    switch(global.item_on_hand.name){
    case "item_decografter":
        if(argument0 == "log_recorder"){
            if(get_switch("decoded_crew_quarter_log")){
                steve_says("I've already decoded this log.");
            }else{
                steve_says("[INSERT DECODING GAME HERE]");
                show_debug_message("src_CrewQuarter needs a decoding game")
                set_switch("decoded_crew_quarter_log", true)
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
    case "log_recorder":
        if(get_switch("decoded_crew_quarter_log")){
            log_says("Ah... Shit.")
            log_says("I think I am going to die.")
            log_says("Heh. I did manage to figure it out. I told them I would. Sure, Thomas helped in the beginning, but...")
            log_says("For anyone listening who wants to know, the secret was in the plants. Incredible things, they are. They not only managed to absorb the radiation harmlessly, but trap it and use it to create... not an antidote, but close enough.")
            log_says("I cut them, boiled them, and put it through the centrifuge, and from that i obtained something that could be diluted in alcohol." )
            log_says("I mixed the alcohol solution with the doctor's serum and it was done.")
            log_says("A simple oral administration and a few hours should be enough.")
            log_says("Shame I took too long to see it. Maybe I wouldn't die, otherwise.")
            log_says("I think Dave died too. He stayed behind, to try to protect me.")
            log_says("Damn it. Damn it all.")
        }else{
            steve_says("A log recorder. Unless I have something especialized in breaking encription, there is no way I'll be able to access it.")
        }
        break;
    case "body":
        steve_says("So long, Gina.")
        break;
    case "pillow":
        if(!get_switch("got_syroup")){
            steve_says("Hey, what is this?")
            steve_says("Who the hell brought maple syroup into a speceship? I didn't even know they still made the thing.")
            steve_says("Might as well take it with me.")
            add_to_inventory(instance_create(0, 0, obj_item_syroup));
            set_switch("got_syroup", true);
        }else{
            steve_says("There is nothing else here now.")
        }
        break;
    case "window":
        steve_says("You can barely see the star from here, because of the way the ship is positioned.")
        steve_says("In my cabin the view is much better.")
        break;
    case "air_vent":
        steve_says("I came in through there, but now I can unlock the door and leave normally.")
        break;
    default:
    break
}



