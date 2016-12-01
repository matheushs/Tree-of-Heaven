
switch(global.last_selected_option){
    case "Start Emergency Drill":
        steve_says("Alright, this should force open the way to the kitchen and the emergency escape pod.")
        ai_says("Steve, please follow the red lights towards the exit. This is not a drill.")
        steve_says("Dan, I literally just started the drill. You don't need to lie to me.")
        ai_says("Do not be absurd, Steve. I am unable to lie.")
        
        set_switch("started_emergency_drill", true)
        break;
    case "Exit":
        break;
    default:
    break;
}
