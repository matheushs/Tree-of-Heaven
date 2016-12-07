var parity = 0;
var gridWidth = 3;
var row = 0;
var blankRow = 0;

for (var i = 0; i < 9; i++){
    if (i % gridWidth == 0){
        row++;
    }
    
    if(global.pos[i] == 0){
        blankRow = row;
        continue;
    }
    
    for(var j = i + 1; j < 9; j++){
        if(global.pos[i] > global.pos[j] && global.pos[j] != 0){
            parity++;
        }
    }
}

if (gridWidth % 2 == 0) { // even grid
    if (blankRow % 2 == 0) { // blank on odd row; counting from bottom
        if(parity % 2 == 0)
            return true;
        else
            return false;
    } else { // blank on even row; counting from bottom
        if(parity % 2 != 0)
            return true;
        else
            return false;
    }
} else { // odd grid
    if(parity % 2 == 0)
        return true;
    else
        return false;
}
