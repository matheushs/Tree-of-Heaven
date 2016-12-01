/// teleport_sound_ext(room, fade_speed, fade_color, sound)

if(EventController.last_block_done && !EventController.block_new_events){
    obj = instance_create(0,0, obj_Fade);
    obj.destination = argument0;
    obj.fading_speed = argument1;
    obj.fade_color = argument2;
    obj.sound = argument3;
}
