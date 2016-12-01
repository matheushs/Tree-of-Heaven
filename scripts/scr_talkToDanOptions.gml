set_switch("point_of_no_return", true);

ai_says("Steve, I just finished the check up on the engine.")
steve_says("And? When can we leave this hellhole?")
ai_says("...")
ai_says("We can't.")
steve_says("What?")
ai_says("John was the engineer of this ship. He wanted to stop you from leaving this place and he knew what he was doing.")
ai_says("We don't have the materials nor the tools to fix it.")
steve_says("... I see.")
steve_says("Can we signal for help?")
ai_says("No, the star's radiation is blocking any communication from leaving this solar system.")
steve_says("Do... Do I have any choice?")
ai_says("There are the escape pods, but... they are unable of FTL." )
ai_says("The escape system would automatically launch you at the best possible trajectory, so you'd orbit for the next few decades, the stasis would keep you alive, though asleep.")
ai_says("But unless someone stumbled on this star by accident, you'd eventually fall into the sun, and never even see it coming.")
steve_says("But I could do it? Is there a chance someone could find me?")
ai_says("A five percent chance, or less.")
ai_says("However, the madness in you wouldn't disappear.")
ai_says("Depending on how far gone you are, whenever someone rescues you, if someone ever rescues you, you'd just repeat what you did here.")
steve_says("I see. Still. It is a chance. The only one of survival I have.")
ai_says("But, if I may, I have another proposition.")
steve_says("What?")
ai_says("You... You could stay here with me, Steve.")
ai_says("We'd leave a beacon orbiting, warning people to stay away, of the dangers of the star. It would be lighter than the escape pod, so it would orbit for much longer.")
ai_says("We'd then use whatever power we have left and boost towards the star. In less than an hour, we'd be dead, and it would come instantaneously.")
ai_says("My memories and core are tied to this ship, so I am nontransferable, and I-")
ai_says("I just... I just don't...")
ai_says("I just think I'd rather have company when I die, Steve.")
ai_says("I don't want to die alone.")
ai_says("I don't want to stay in the dark without anyone by my side.")
ai_says("So... If I may ask anything of you... it would be this.")

num_logs_seen = 0;

if(get_switch("decoded_kitchen_log")) num_logs_seen++;
if(get_switch("decoded_crew_quarter_log")) num_logs_seen++;
if(get_switch("decoded_laboratory_log")) num_logs_seen++;
if(get_switch("decoded_medbay_log")) num_logs_seen++;

if(num_logs_seen <= 1){
    set_switch("is_in_bad_end_route", true)
    
    steve_says("He...")
    steve_says("Hehe.")
    steve_says("Are you insane?")
    ai_says("Steve?")
    steve_says("Do you really think I'd stay here? With you? A tin can that can't even move?")
    ai_says("Steve, please.")
    steve_says("Shut up.")
    steve_says("You are garbage.")
    steve_says("You can't open doors. You can't help me. You can't even get me out of here.")
    steve_says("Useless.")
    steve_says("As far as I am concerned, you can burn alone for the rest of eternity.")
    ai_says("I... I see.")
    steve_says("Good bye, Dan. I am leaving.")
}else{
    set_switch("is_in_good_end_route", true);
    
    steve_says("...")
    ai_says("Steve?")
    steve_says("I... I don't know. I...")
    ai_says("I understand, Steve. Even if you decide to leave, I'll understand.")
    ai_says("Perhaps you could manage to make a cure for the madness.")
    ai_says("Or even recreate the one Gina made.")
    ai_says("I'll give you time to think. Come see me, if you decide to stay.")
}

