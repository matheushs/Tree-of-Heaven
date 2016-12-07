if(!get_switch("has_real_cure")){
    ai_says("I... I see.")
    ai_says("Are you sure?")
    steve_says("Yes, Dan... I am.")
    steve_says("If there is even a chance... I have to try.")
    
    if(get_switch("has_fake_cure")){
        steve_says("I have the cure with me. If someone finds me, I'll be alright.")
        ai_says("Are you sure it is correct?")
        steve_says("No, but I have to try.")
        steve_says("...")
    }
    
    steve_says("I wish I could take you with me.")
    ai_says("I know, Steve. I know.")
    ai_says("It was an honor, you know? Working with you. With all of you.")
    steve_says("The honor was mine.")
    steve_says("Goodbye, Dan.")
    ai_says("Goodbye, Steve.")
    
    event_teleport_ext(SurvivalEnd, 0.01, c_black, -1)
}else{
    ai_says("I... I see.")
    ai_says("Are you sure?")
    steve_says("Yes, Dan... I am.")
    steve_says("If there is even a chance... I have to try.")
    ai_says("I know. You have the cure and the hope to be saved, even if it is small.")
    ai_says("I... I hope that you make it, Steve.")
    ai_says("I hope that you are happy.")
    steve_says("I wish I could take you with me.")
    ai_says("I know, Steve. I know.")
    ai_says("It was an honor, you know? Working with you. With all of you.")
    steve_says("The honor was mine. I won't forget you.")
    steve_says("Goodbye, Dan.")
    ai_says("Goodbye, Steve.")
    
    event_teleport_ext(SurvivalEnd, 0.01, c_black, -1)
}
