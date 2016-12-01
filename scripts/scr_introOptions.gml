
switch(global.last_selected_option){
    case "Is there anything else damaged?":
    steve_says("Now, what can you tell me? Is there anything else damaged?")
    ai_says("The ship's engine is impaired, though the reserves will still last for months, if all we do is keep the life-support systems running.")
    ai_says("However, the hole in the hull is forcing us to waste our precious energy on a forcefield to keep the air inside, which will reduce our remaining time to weeks, if it is not repaired.")
    steve_says("That is plenty of time.")
    
    global.option_tree_status[0] = 2;
    break;
    
    case "General Status of Ship?":
    ai_says("While I have access to the camera feeds of your bedroom, the main hall and this room, the rest of the ship has been cut from me.")
    steve_says("That is a bit more worrying. Go on.")
    ai_says("Since we have no way to move, our orbit around the D13 star will eventually decay.")
    steve_says("Which will plunge us into a fiery death. How long until that happens?")
    ai_says("Thirty two days.")
    steve_says("Jesus, don't scare me like that. I thought that we were falling right now.")
    
    global.option_tree_status[1] = 2;
    break;
    
    case "Anything that requires immediate attention?":
    steve_says("Is there anything that requires immediate attention?")
    ai_says("I would suggest on planning on how to capture or stop the invader.")
    steve_says("...")
    steve_says("Dan?")
    ai_says("Yes, Steve?")
    steve_says("What invader are you talking about and, more importantly, is he behind me getting ready to kill me?")
    ai_says("Not that I can see, no.") 
    ai_says("I just thought that, given the fact that both you, Dave, John, Gina and Thomas are trusted, the most likely scenario includes a fourth person or being coming onto the ship.")
    steve_says("Phrasing, man! Damn it! Stop trying to scare me!")
    ai_says("Steve, there is a dead body in the corridor behind you. Being scared is the appropriate course of action.")
    steve_says("Well, I am not. I'm just pissed someone killed him." )

    global.option_tree_status[2] = 2;
    global.option_tree_status[4] = 1;
    global.option_tree_status[5] = 1;
    break;
    case "Other crew members?":
    steve_says("Steve is dead, but what about the others? Gina, Thomas, John?");
    ai_says("I do not know their locations. They must be locked in one of the rooms I cannot access.")

    global.option_tree_status[3] = 2;
    break;
    case "Engine Repairs?":
    steve_says("Do we have the appropriate materials to repair the hull, or the engine, for that matter?")
    ai_says("It depends on the scale of the damage. Unless the intruder has gotten rid of them.")
    
    global.option_tree_status[4] = 2;
    break;
    case "Weapons?":
    steve_says("Do we have any weapons anywhere?")
    ai_says("Probably scalpels, in the Laboratory, and knives, in the kitchen. Both of which are locked.")
    steve_says("Fantastic. I'll see if I can get in any of those.")
    
    global.option_tree_status[5] = 2;
    global.option_tree_status[6] = 1;
    break;
    case "Doors to the Hall?":
    steve_says("Dan, can you open the doors to the hall?")
    ai_says("Boop. Done.")
    steve_says("Did you just say boop?")
    ai_says("No. However, this door is the only one I have access to. The other ones have been locally locked, I cannot force them open under normal circumstances.")
    
    global.option_tree_status[6] = 2;
    set_switch("woke_up_ai", true);
    break;
    default:
    break;
}

event_callScript(scr_showOptionSequence)
