///event_teleport_ext(target_map, fade_speed, fade_color, sound)

tlp = instance_create(0, 0, obj_teleport);
tlp.target_map = argument0;
tlp.fade_speed = argument1;
tlp.fade_color = argument2;
tlp.sound = argument3;
events_add(tlp);
