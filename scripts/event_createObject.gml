///event_createObject(obj, x, y, visible)

obj = instance_create(0,0, obj_createObject);
obj.obj = argument0;
obj.obj_x = argument1;
obj.obj_y = argument2;
obj.obj_visible = argument3;
events_add(obj);
