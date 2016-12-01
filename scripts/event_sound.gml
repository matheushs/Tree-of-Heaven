///event_sound(sound, loops)
snd = instance_create(0, 0, obj_sound);
snd.sound = argument0;
snd.loop = argument1;
events_add(snd);

return snd;
