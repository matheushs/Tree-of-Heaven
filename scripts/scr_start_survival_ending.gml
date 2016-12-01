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

event_teleport(SurvivalEnd)
