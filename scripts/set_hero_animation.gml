///Sets the correct animation for the hero.
    
    if(argument0.moving){
        if(argument0.direction_v == global.GOING_DOWN){
            if(argument0.direction_h = global.GOING_RIGHT){
                argument0.sprite_index = argument0.sprites_walking[global.ARRAYS_DOWNRIGHT];
            }else if(argument0.direction_h = global.GOING_LEFT){
                argument0.sprite_index = argument0.sprites_walking[global.ARRAYS_DOWNLEFT];
            }else{
                show_debug_message("Error in Walking animation");
            }
        }else if(argument0.direction_v == global.GOING_UP){
            if(argument0.direction_h = global.GOING_RIGHT){
                argument0.sprite_index = argument0.sprites_walking[global.ARRAYS_UPRIGHT];
            }else if(direction_h = global.GOING_LEFT){
                argument0.sprite_index = argument0.sprites_walking[global.ARRAYS_UPLEFT];
            }else{
                show_debug_message("Error in Walking animation");
            }
        }else{
            show_debug_message("Error in Walking animation")
        }
    }else{
        if(argument0.direction_v == global.GOING_DOWN){
            if(argument0.direction_h = global.GOING_RIGHT){
                argument0.sprite_index = argument0.sprites_still[global.ARRAYS_DOWNRIGHT];
            }else if(argument0.direction_h = global.GOING_LEFT){
                argument0.sprite_index = argument0.sprites_still[global.ARRAYS_DOWNLEFT];
            }else{
                show_debug_message("Error in Still animation")
            }
        }else if(argument0.direction_v == global.GOING_UP){
            if(argument0.direction_h = global.GOING_RIGHT){
                argument0.sprite_index = argument0.sprites_still[global.ARRAYS_UPRIGHT];
            }else if(argument0.direction_h = global.GOING_LEFT){
                argument0.sprite_index = argument0.sprites_still[global.ARRAYS_UPLEFT];
            }else{
                show_debug_message("Error in Still animation")
            }
        }else{
            show_debug_message("Error in Still animation")
        }
    }
    
    /*
    if(moving){
        if(direction_v == global.GOING_DOWN){
            if(direction_h = global.GOING_RIGHT){
                sprite_index = sprites_walking[global.ARRAYS_DOWNRIGHT];
            }else if(direction_h = global.GOING_LEFT){
                sprite_index = sprites_walking[global.ARRAYS_DOWNLEFT];
            }else{
                show_debug_message("Error in Walking animation");
            }
        }else if(direction_v == global.GOING_UP){
            if(direction_h = global.GOING_RIGHT){
                sprite_index = sprites_walking[global.ARRAYS_UPRIGHT];
            }else if(direction_h = global.GOING_LEFT){
                sprite_index = sprites_walking[global.ARRAYS_UPLEFT];
            }else{
                show_debug_message("Error in Walking animation");
            }
        }else{
            show_debug_message("Error in Walking animation")
        }
    }else{
        if(direction_v == global.GOING_DOWN){
            if(direction_h = global.GOING_RIGHT){
                sprite_index = sprites_still[global.ARRAYS_DOWNRIGHT];
            }else if(direction_h = global.GOING_LEFT){
                sprite_index = sprites_still[global.ARRAYS_DOWNLEFT];
            }else{
                show_debug_message("Error in Still animation")
            }
        }else if(direction_v == global.GOING_UP){
            if(direction_h = global.GOING_RIGHT){
                sprite_index = sprites_still[global.ARRAYS_UPRIGHT];
            }else if(direction_h = global.GOING_LEFT){
                sprite_index = sprites_still[global.ARRAYS_UPLEFT];
            }else{
                show_debug_message("Error in Still animation")
            }
        }else{
            show_debug_message("Error in Still animation")
        }
    }
    */
