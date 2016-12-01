GameState.switches[? "deactivated_intro_alarm"] = true;
audio_stop_sound(snd_YourShip_Alarm);


messages[0] = '"Thank God that noise is over.#What was that all about?"'
messages[1] = "---DISTRESS CALL RECEIVED---#ONLY SHIP IN HELPING DISTANCE#RECOMMENDED COURSE OF ACTION:#PERFORM RESCUE!"
messages[2] = "Huh."
messages[3] = "It looks like a ship is stranded in the middle of space and you are the only one who can help it in time."
messages[4] = "You knew your habit of running away from debt collectors by launching yourself in the depths of space would pay off eventually."
messages[5] = "Well, whatever is wrong with their ship, you are sure they can wait until you have breakfast."
messages[6] = "Or you could go now. You are not really THAT hungry."

for(var i = 0; i < array_length_1d(messages); i++){
    message_add(messages[i], 1.0, default_font);
}
