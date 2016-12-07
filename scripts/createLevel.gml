for (var i = 0; i < 9; i++){
        global.idList[i,0] = instance_create(0, 0, obj_block);
        global.idList[i,0].image_index = i;
        global.idList[i,1] = "block";
}

//3x3 sprite
global.idList[8,0].image_index = 15;
global.idList[8,1] = "empty";

global.list = ds_list_create();

for(var i = 0; i < 9; i++){
    ds_list_add(global.list, i);
}

randomize();
ds_list_shuffle(global.list);

for (var i = 0; i < 9; i++){
    global.pos[i] = global.idList[ds_list_find_value(global.list,i),0]
    show_debug_message(string(global.pos[i]) + " OTRO " + string(ds_list_find_value(global.list,i)+1));
}

for(var j = 0; j < 3; j++){
    for (var i = 0; i < 3; i++){
        posX = (64*i)+544;
        posY = (64*j)+264;
        
        if(!position_meeting(posX, posY, obj_block)){
            global.idList[ds_list_find_value(global.list,0),0].x = posX;
            global.idList[ds_list_find_value(global.list,0),0].y = posY;
            ds_list_delete(global.list,0);
            //ds_list_shuffle(global.list);
        }
    }
}

ds_list_destroy(global.list);
