///event_sound_stop(sound)

snd = instance_create(0, 0, obj_sound_stop);
snd.sound = argument0;
events_add(snd);
