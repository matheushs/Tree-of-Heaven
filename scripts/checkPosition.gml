var myX = global.idList[argument[0],0].x;
var myY = global.idList[argument[0],0].y;

for (var j = argument[0]+1; j<9; j++){
    var posX = global.idList[argument[0]+j,0].x;
    var posY = global.idList[argument[0]+j,0].y;
    
    if(posX <= myX || posY <= myY)
        return false;
}

return true;
