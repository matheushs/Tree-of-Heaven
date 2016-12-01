if(get_switch("has_put_antifotorer") == true &&
    get_switch("has_put_sanitizer")   == true &&
    get_switch("has_put_soda")        == true &&
    get_switch("has_put_vodka")       == false &&
    get_switch("has_put_syroup")      == false &&
    get_switch("has_put_plants")      == false){
    if(get_switch("created_acid")){
        steve_says("I have no use for more acid.")
        steve_says("I'll just flush is away.")
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

set_switch("has_put_vodka", false)
set_switch("has_put_soda", false)
set_switch("has_put_syroup", false)
set_switch("has_put_sanitizer", false)
set_switch("has_put_plants", false)
set_switch("has_put_antifotorer", false)
