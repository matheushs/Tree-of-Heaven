///event_wait(time)

wait = instance_create(0, 0, obj_wait);
wait.time = argument0;
events_add(wait);
