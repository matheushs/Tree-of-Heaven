/*LEGACY CODE
**********************************************************************************************
 _____ _   _   ___   _   _  _   __ _____  ______ _____ _____   ___  ______ _     _____ _____ 
|_   _| | | | / _ \ | \ | || | / //  ___| | ___ \_   _/  __ \ / _ \ | ___ \ |   |  _  /  ___|
  | | | |_| |/ /_\ \|  \| || |/ / \ `--.  | |_/ / | | | /  \// /_\ \| |_/ / |   | | | \ `--. 
  | | |  _  ||  _  || . ` ||    \  `--. \ | ___ \ | | | |    |  _  ||    /| |   | | | |`--. \
  | | | | | || | | || |\  || |\  \/\__/ / | |_/ /_| |_| \__/\| | | || |\ \| |___\ \_/ /\__/ /
  \_/ \_| |_/\_| |_/\_| \_/\_| \_/\____/  \____/ \___/ \____/\_| |_/\_| \_\_____/\___/\____/ 
                                                                                             
**********************************************************************************************
idCollision = instance_position(mouse_x, mouse_y, all);
didCollide = position_meeting(mouse_x, mouse_y, all);

if(mouse_check_button_pressed(mb_left)){
    if(!global.selected && didCollide && idCollision != global.idList[8,0]){
        show_debug_message("SELECTING " + string(idCollision));
        global.selected = true;
        global.myId = idCollision;
        global.myId.image_index += 17;
    } else if (global.selected && didCollide && idCollision == global.myId){
        global.selected = false;
        global.myId.image_index -= 17;
        global.myId = -1;
        show_debug_message("DESELECTING" + string(idCollision));
    }
}

if (didCollide && global.selected && global.idList[8,0] == idCollision){
        var myX = global.myId.x;
        var myY = global.myId.y;
        
        var otherX = idCollision.x;
        var otherY = idCollision.y;
        
        if(abs(myX - otherX) <= 64 && abs(myY - otherY) <= 64 && (myX == otherX || myY == otherY)){
            idCollision.x = myX;
            idCollision.y = myY;
            
            global.myId.x = otherX;
            global.myId.y = otherY;
            
            var myIndex = 0;
            var otherIndex = 0;
            
            for(var i = 0; i < 9; i++){
                if(global.pos[i] == global.myId)
                    myIndex = i;
                else if(global.pos[i] == idCollision)
                    otherIndex = i;
            }
            
            var temp = global.pos[myIndex];
            
            global.pos[myIndex] = global.pos[otherIndex];
            global.pos[otherIndex] = temp;
            
            show_debug_message("MERDAS");
            for(var i=0; i<9;i++){
                show_debug_message("PORRA [" + string(i) + "] = " + string(global.pos[i]));
            }
                        
            global.myId.image_index -= 17;
            global.myId = -1;
            global.selected = false;
        }
}*/

if(mouse_check_button_pressed(mb_left)){
    idCollision = instance_position(mouse_x, mouse_y, obj_block);
    didCollide = position_meeting(mouse_x, mouse_y, obj_block);
    
    if (didCollide && global.idList[8,0] != idCollision){
        var myX = idCollision.x;
        var myY = idCollision.y;
        
        var otherX = global.idList[8,0].x;
        var otherY = global.idList[8,0].y;
        
        if(abs(myX - otherX) <= 64 && abs(myY - otherY) <= 64 && (myX == otherX || myY == otherY)){
            global.idList[8,0].x = myX;
            global.idList[8,0].y = myY;
            
            idCollision.x = otherX;
            idCollision.y = otherY;
            
            var myIndex = 0;
            var otherIndex = 0;
                
            for(var i = 0; i < 9; i++){
                if(global.pos[i] == idCollision)
                    myIndex = i;
                else if(global.pos[i] == global.idList[8,0])
                    otherIndex = i;
            }
            
            var temp = global.pos[myIndex];    
            global.pos[myIndex] = global.pos[otherIndex];
            global.pos[otherIndex] = temp;
        }
    }
}
