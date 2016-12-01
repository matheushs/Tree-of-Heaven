///event_callScript(script)

scr = instance_create(0, 0, obj_callScript);
scr.script = argument0;
events_add(scr);
