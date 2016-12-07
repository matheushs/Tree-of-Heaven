if(!get_switch("is_in_good_end_route")){
    if(get_switch("has_put_antifotorer") == true &&
        get_switch("has_put_sanitizer")   == true &&
        get_switch("has_put_soda")        == true &&
        get_switch("has_put_vodka")       == false &&
        get_switch("has_put_syroup")      == false &&
        get_switch("has_put_plants")      == false){
        if(get_switch("created_acid")){
            steve_says("I have no use for more acid.")
            steve_says("I'll just flush it away.")
        }else{
            set_switch("created_acid", true);
            steve_says("Ah, there we go. This should melt anything in this ship.")
            add_to_inventory(instance_create(0, 0, obj_item_acid));
        }
    }else{
        steve_says("Damn, it is just useless goo. I'll just flush it away.")
        ai_says("It would seem another combination of elements is necessary.")
        steve_says("Yeah, no shit.")
    }
}else{
    if(get_switch("has_put_mix_a")   == true ||
        get_switch("has_put_mix_b")   == true ||
        get_switch("has_put_mix_b_fake")   == true){
        if(get_switch("has_put_antifotorer") == true ||
            get_switch("has_put_sanitizer")   == true ||
            get_switch("has_put_soda")        == true ||
            get_switch("has_put_vodka")       == true ||
            get_switch("has_put_syroup")      == true ||
            get_switch("has_put_plants")      == true ||
            get_switch("has_put_boiled_plants") == true){
            steve_says("No, no. I need to mix just Gina's mixture and the doctor's serum.")
        }else if(get_switch("has_put_mix_a")   == true &&
                 get_switch("has_put_mix_b_fake")   == true){
            if(get_switch("has_fake_cure")){
                steve_says("I don't need any more of it.");
            }else{
                steve_says("I... I think that's it.");
                steve_says("I think I've made the cure.");
                steve_says("I think I can leave this ship.");
                
                set_switch("has_fake_cure", true);
                add_to_inventory(instance_create(0, 0, obj_item_cure_fake));
            }
        }else if(get_switch("has_put_mix_a")   == true &&
                 get_switch("has_put_mix_b")   == true){
            if(get_switch("has_real_cure")){
                steve_says("I don't need any more of it.");
            }else{
                steve_says("I... I think that's it. I've made it.");
                steve_says("I made the cure.");
                steve_says("I have everything I need to leave this ship.");
                
                set_switch("has_real_cure", true);
                add_to_inventory(instance_create(0, 0, obj_item_cure));
                if(get_switch("has_fake_cure")){
                    steve_says("I'll throw this other one away.")
                    remove_from_inventory(instance_find(obj_item_cure_fake,0))
                }
            }
        }
    }else
    //fake mixture b
    if(get_switch("has_put_antifotorer") == false &&
        get_switch("has_put_sanitizer")   == false &&
        get_switch("has_put_soda")        == false &&
        get_switch("has_put_vodka")       == true &&
        get_switch("has_put_syroup")      == false &&
        get_switch("has_put_plants")      == true &&
        get_switch("has_put_boiled_plants") == false){
        if(!get_switch("decoded_kitchen_log")){
            steve_says("I have no idea what this is.")
            steve_says("I'll just flush it away.")
        }else if(get_switch("created_ginas_mixture_fake")){
            steve_says("I have no use for more of this.")
            steve_says("I'll just flush it away.")
        }else{
            set_switch("created_ginas_mixture_fake", true);
            steve_says("This... looks correct. Some of Gina's mixture, as she said in her log.")
            add_to_inventory(instance_create(0, 0, obj_item_mixture_b_fake));
        }
    //Real mixture b
    }else if(get_switch("has_put_antifotorer") == false &&
        get_switch("has_put_sanitizer")   == false &&
        get_switch("has_put_soda")        == false &&
        get_switch("has_put_vodka")       == true &&
        get_switch("has_put_syroup")      == false &&
        get_switch("has_put_plants")      == true &&
        get_switch("has_put_boiled_plants") == true){
        if(!get_switch("decoded_kitchen_log")){
            steve_says("I have no idea what this is.")
            steve_says("I'll just flush it away.")
        }else if(get_switch("created_ginas_mixture")){
            steve_says("I have no use for more of the Gina's mixture.")
            steve_says("I'll just flush it away.")
        }else{
            set_switch("created_ginas_mixture", true);
            
            if(get_switch("created_ginas_mixture_fake")){
                steve_says("Aha! This one looks more like it. Good thing I realized that the Lab's boiler was broken.")
                steve_says("I'll just toss the old one away.")
                
                remove_from_inventory(instance_find(obj_item_mixture_b_fake,0))
            }else{
                steve_says("Ah, there we go. Some of Gina's mixture, as she said in her log.")
            }
            remove_from_inventory(instance_find(obj_item_vodka,0))
            remove_from_inventory(instance_find(obj_item_beaker_with_plants_boiled,0))
            add_to_inventory(instance_create(0, 0, obj_item_mixture_b));
        }
    //mixture a
    }else if(get_switch("has_put_antifotorer") == true &&
        get_switch("has_put_sanitizer")     == false &&
        get_switch("has_put_soda")          == false &&
        get_switch("has_put_vodka")         == false &&
        get_switch("has_put_syroup")        == true  &&
        get_switch("has_put_plants")        == false &&
        get_switch("has_put_boiled_plants") == false){
        if(get_switch("decoded_medbay_log") && !get_switch("decoded_kitchen_log")){
            steve_says("Who would ever think Maple Syroup and Antifotorer would make a good combination?")
            steve_says("I'll just flush it away.")
        }else if(!get_switch("decoded_medbay_log") && get_switch("decoded_kitchen_log")){
            steve_says("This may be the doctor's serum, but I am not sure.")
            steve_says("If I am going to make this cure, I can't risk not knowing if I am right.")
            steve_says("I'll just flush it away.")
        }else if(!get_switch("decoded_medbay_log") && !get_switch("decoded_kitchen_log")){
            steve_says("I have no idea what this is.")
            steve_says("I'll just flush it away.")
        }else if(get_switch("created_doctors_serum")){
            steve_says("I have no use for more of the doctor's serum.")
            steve_says("I'll just flush it away.")
        }else{
            set_switch("created_doctors_serum", true);
            
            remove_from_inventory(instance_find(obj_item_antifotorer, 0));
            remove_from_inventory(instance_find(obj_item_syroup, 0));
            
            steve_says("Ah, there we go. Some of the doctor's serum, as he said in his log.")
            add_to_inventory(instance_create(0, 0, obj_item_mixture_a));
        }
    }else{
        steve_says("Damn, it is just useless goo. I'll just flush it away.")
        ai_says("It would seem another combination of elements is necessary.")
        steve_says("Yeah, no shit.")
    }
}
set_switch("has_put_vodka", false)
set_switch("has_put_soda", false)
set_switch("has_put_syroup", false)
set_switch("has_put_sanitizer", false)
set_switch("has_put_plants", false)
set_switch("has_put_antifotorer", false)
set_switch("has_put_boiled_plants", false)

set_switch("has_put_mix_a", false)
set_switch("has_put_mix_b", false)
set_switch("has_put_mix_b_fake", false)
