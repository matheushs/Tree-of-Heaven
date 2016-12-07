///initialize_switches()
with(GameState){
    switches = ds_map_create();
    switches[? "in_menu"] = true;
    switches[? "intro"] = false;
    switches[? "current_soldier_chapter"] = 10;
    switches[? "woke_up_ai"] = false;
    switches[? "seen_dave_body_for_the_first_time"] = false;
    switches[? "heard_about_escape_pod"] = false;
    switches[? "started_emergency_drill"] = false;
    switches[? "got_stool"] = false;
    switches[? "got_knife"] = false;
    switches[? "got_vodka"] = false;
    switches[? "stopped_alarm"] = false;
    switches[? "got_soda"] = false;
    switches[? "decoded_kitchen_log"] = false;
    switches[? "unscrewed_vent"] = false;
    switches[? "put_stool"] = false;
    switches[? "entered_crew_quarter"] = false;
    switches[? "decoded_crew_quarter_log"] = false;
    switches[? "got_syroup"] = false;
    switches[? "opened_medbay_door"] = false;
    switches[? "got_spacesuit"] = false;
    switches[? "opened_lab_door"] = false;
    switches[? "got_beaker"] = false;
    switches[? "got_silver_tape"] = false;
    switches[? "got_sanitizer"] = false;
    switches[? "got_plants"] = false;
    switches[? "decoded_laboratory_log"] = false;
    switches[? "entered_laboratory"] = false;
    switches[? "entered_medbay"] = false;
    switches[? "decoded_medbay_log"] = false;
    switches[? "realized_gone_everywhere"] = false;
    switches[? "has_put_vodka"] = false;
    switches[? "has_put_soda"] = false;
    switches[? "has_put_syroup"] = false;
    switches[? "has_put_sanitizer"] = false;
    switches[? "has_put_plants"] = false;
    switches[? "has_put_antifotorer"] = false;
    switches[? "got_antifotorer"] = false;
    switches[? "created_acid"] = false;
    switches[? "melted_hatch"] = false;
    switches[? "entered_engine_room"] = false;
    switches[? "has_cleared_gas"] = false;
    switches[? "checked_engine"] = false;
    switches[? "checked_last_body"] = false;
    switches[? "point_of_no_return"] = false;
    switches[? "is_in_bad_end_route"] = false;
    switches[? "bad_route_tried_door"] = false;
    switches[? "bad_route_opened_door"] = false;
    switches[? "is_in_good_end_route"] = false;
    
    switches[? "created_doctors_serum"] = false;
    switches[? "has_put_boiled_plants"] = false;
    switches[? "created_ginas_mixture"] = false;
    switches[? "created_ginas_mixture_fake"] = false;
    switches[? "has_put_mix_a"] = false;
    switches[? "has_put_mix_b"] = false;
    switches[? "has_put_mix_b_fake"] = false;
    
    switches[? "has_fake_cure"] = false;
    switches[? "has_real_cure"] = false;
    
    switches[? "is_in_bad_end"] = false;
    switches[? "is_in_medium_end"] = false;
    switches[? "is_in_survival_bad_end"] = false;
    switches[? "is_in_survival_good_end"] = false;
    
    switches[? "analized_soda"] = false;
    switches[? "analized_antifotorer"] = false;
    switches[? "analized_plant"] = false;
    switches[? "analized_sanitizer"] = false;
    switches[? "analized_syroup"] = false;
    switches[? "analized_vodka"] = false;
    
    switches[? "end"] = false;
}
