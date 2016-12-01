if(global.item_on_hand != 0){
    switch(global.item_on_hand.name){
    case "item_decografter":
        if(argument0 == "log_recorder"){
            if(get_switch("decoded_medbay_log")){
                steve_says("I've already decoded this log.");
            }else{
                steve_says("[INSERT DECODING GAME HERE]");
                show_debug_message("src_MedBay needs a decoding game")
                set_switch("decoded_medbay_log", true)
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
        if(get_switch("decoded_medbay_log")){
            log_says("So, it looks like the star is having some effect on the rats that have been exposed to it.")
            log_says("Small loss of hair, increased aggressiveness, among other side-effects, nothing too serious.")
            log_says("Still, I've made a serum that seemed to halt the progress of these effects.")
            log_says("Sugar in just the right concentration, in a two-parts-per-one mixture with Antifotorer.")
            log_says("As simple as that. If it wasn't for the fact that I forgot to bring my own.")
            log_says("Fortunately, I know someone in this ship who has just what I need to make it right.")
            log_says("Lucky, eh?")
            log_says("...")
            log_says("Hey, you should probably leave the suit on the airlock.")
        }else{
            steve_says("A log recorder. Unless I have something especialized in breaking encription, there is no way I'll be able to access it.")
        }
        break;
    case "body":
        steve_says("Dead. But it looks like he put up a fight.")
        break;
    case "spacesuit":
        steve_says("Empty. There is a tear in the left arm, so it won't be very useful like this.")
        steve_says("I'll take it anyway.")
        add_to_inventory(instance_create(0, 0, obj_item_spacesuit_with_tear));
        with(obj_spacesuit){
            instance_destroy();
        }
        set_switch("got_spacesuit", true);
        break;
    case "recipe":
        steve_says("There is a recipe for a very strong acid in these notes.")
        steve_says("There should be a puzzle here where you'd have to find out what combination of things to put in the centrifuge.")
        steve_says("I didn't have the time to make it, so the answer is Soda, Sanitizer and Antifotorer.")

        break;
    case "antifotorer":
        steve_says("This is Antifotorer, a very powerful and dangerous chemical, not to be trifled with.");
        steve_says("I'll take it with me.");
        add_to_inventory(instance_create(0, 0, obj_item_antifotorer));
        with(obj_antifotorer){
            instance_destroy();
        }
        set_switch("got_antifotorer", true);
        break;
    case "door_to_hall":
        event_teleport(Hall);
        break;
    default:
    break
}



