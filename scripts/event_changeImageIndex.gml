///event_changeImageIndex(obj, new_index);
change = instance_create(0,0, obj_changeImageIndex);
change.target_obj = argument0;
change.to_sprite = argument1;

events_add(change);
