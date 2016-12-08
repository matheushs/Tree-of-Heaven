if(global.item_on_hand != 0){
    switch(global.item_on_hand.name){
    case "item_acid":
        if(argument0 == "hatch"){
            set_switch("melted_hatch", true);
            with(obj_CockpitHatch){
                sprite_index = spr_CockpitHatchOpen;
            }
            remove_from_inventory(global.item_on_hand);
            steve_says("Ah, there we go! Onto the last locked room on this damned ship!")
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
    case "computer":
        if(get_switch("is_in_good_end_route")){
            //scr_start_medium_end();
        
            options[0,0] = "Stay with Dan."
            options[0,1] = scr_start_medium_end;
            options[1,0] = "Don't choose yet."
            options[1,1] = scr_do_nothing;
            
            scr_showOptions(options, 2);
        }else if(get_switch("bad_route_opened_door")){
            steve_says("I am done here.")
        }else if(get_switch("bad_route_tried_door")){
            options[0,0] = "Start Emergency Drill"
            options[0,1] = scr_start_emergency_drill_bad_end;
            scr_showOptions(options, 1);
        }else if(get_switch("is_in_bad_end_route")){
            steve_says("I am leaving, now.")
        }else if(get_switch("checked_last_body")){
            steve_says("Do I talk to Dan now? Whatever it is he has to say, it seems very important.")
            steve_says("If I have anything I want to do, I should do before talking to him.")
            
            global.option_tree = 0;
            global.option_tree_status = 0;
            
            global.option_tree[0, 0] = "Talk to Dan?";
            global.option_tree[0, 1] = scr_talkToDanOptions;
            global.option_tree_status[0] = 1;
            
            global.option_tree[1, 0] = "Not right now.";
            global.option_tree[1, 1] = scr_do_nothing;
            global.option_tree_status[1] = 1;
            
            event_callScript(scr_showOptionSequence);
            
        }else if(get_switch("stopped_alarm")){
            steve_says("There is not much else I can do here, now.")
        }else if(get_switch("started_emergency_drill")){
            steve_says("I've already started the drill.#Not much else I can do here, now.")
        }else if(get_switch("heard_about_escape_pod")){
            options = 0;
            options[0, 0] = "Start Emergency Drill";
            options[0, 1] = scr_emergencyDrillOptions;
            options[1, 0] = "Exit";
            options[1, 1] = scr_do_nothing;
            scr_showOptions(options, 2);
        }else if(get_switch("woke_up_ai")){
            steve_says("Not much I can do here right now.");
            steve_says("Check on the ship's status, start emergency drills, see if the engines are running smoothly.");
            steve_says("Nothing that will be of much use right now.");
        }else if(!get_switch("woke_up_ai")){
            ai_says("... Initializing ...")
            ai_says("...")
            ai_says("...")
            ai_says("Hello, Steve. What seems to be the...")
            ai_says("Steve?")
            steve_says("Yes, Dan?")
            ai_says("Why is Dave dead?")
            steve_says("I... I'm sorry? What?")
            ai_says("Dave is lying on the floor just outside, a very large cut on his back. #I cannot detect any life signals on him.")
            steve_says("Dave is... What!?") 
            steve_says("What the fuck happened? Last thing I remember we were perfectly fine, and there was certainly not a dead crew member on the hall!")
            ai_says("I am sorry, Steve. I do not know. It seems my camera feeds have been… erased, along with my memories of the incident.") 
            ai_says("I do not even have memory of ever being shut down.")
            steve_says("Erased? Who the hell erased them?")
            ai_says("I do not know.")
            ai_says("Steve, it is possible that whatever deleted the video files has also compromised my systems. May I suggest a system check up?")
            steve_says("... Sure, go ahead.")
            ai_says("Thank you, Steve. It will only take a moment.")
            ai_says("...")
            ai_says("...")
            ai_says("Steve, while I am performing my check up, may I point out something you may not have noticed?")
            steve_says("Point it.")
            ai_says("We have a hole in our hull.")
            steve_says("...")
            steve_says("Yes, Dan. I noticed it.")
            ai_says("It is just that you hadn't mentioned it and -SYSTEM VERIFICATION COMPLETED-")
            steve_says("So? Are you alright?")
            ai_says("Either whatever it was that corrupted me has also corrupted my encrypted core image in a way never before thought possible or...")
            steve_says("Or?")
            ai_says("Or I am perfectly fine.")
            steve_says("A 'I am fine' would have been enough.")
            ai_says("I am sorry, Steve, but there is always the possibility that-")
            steve_says("No one broke your quantum encryption. You are fine.") 
            set_switch("woke_up_ai", true);    
            event_callScript(scr_createOptionsForIntro);
        }
        
        break;
    case "DoorToHall":
        if(get_switch("bad_route_opened_door")){
            event_teleport(Hall);
        }else if(get_switch("bad_route_tried_door")){
            steve_says("Dan, open this door right now!")
            ai_says("...");
        }else if(get_switch("is_in_bad_end_route")){
            set_switch("bad_route_tried_door", true);
        
            steve_says("Dan, open this door immediately.")
            ai_says("I am sorry, Steve. I cannot allow you to leave. You have been influenced by the star too much.")
            ai_says("If you leave, you will just kill again. I cannot allow that.")
            steve_says("Dan, I shut you down once and I can do it again, open this door right now!")
            ai_says("You can shut me down, but you will never be able to save yourself from the sun.")
            ai_says("Diverting course towards the star.")
            steve_says("Dan, don't you dare do it!")
            steve_says("DAN!")
        }else if(get_switch("woke_up_ai")){
            event_teleport(Hall);
        }else{
            steve_says("Damn it, it's locked.");
            steve_says("I should check the mainframe.#If I reboot Dan he should be able to help me.");
        }
        break;
    case "hatch":
        if(get_switch("melted_hatch")){
            event_teleport(EngineRoom);
        }else{
            steve_says("Locked. And no way to force it open.")
            steve_says("Maybe if I found a blowtorch, or something to melt it away, I could get through.")
        }
        break;
    case "door_to_quarter":
        event_teleport(CapQuarter);
        break;
    case "hole":
        steve_says("There is a hole in the hull. Fortunately, the defense systems are generating a forcefield around it.")
        steve_says("It is the only reason I haven't been spaced the moment I entered here.")
        break;
    default:
    break
}



