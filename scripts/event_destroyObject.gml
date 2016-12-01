///event_destroyObject(obj)

obj = instance_create(0,0, obj_destroyObject);
obj.obj = argument0;
events_add(obj);
