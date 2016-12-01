///scr_text_ext("Text",speed, font, sound, x, y, width, height, h_padding, v_padding, line_space, font_color)

var width_of_box = argument6;
var height_of_box = argument7;

txt = instance_create(argument4,
                      argument5,
                      obj_text);
with (txt)
{
    h_padding = argument8;
    v_padding = argument9;
    line_space = argument10;
    
    maxlength = width_of_box - h_padding*2;
    text = argument0;
    spd = argument1;
    font = argument2;
    color = argument11;
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    draw_set_font(font);
    draw_set_colour(color);
    
    text_width = string_width_ext(text, font_get_size(font) + line_space, maxlength);
    text_height = string_height_ext(text, font_get_size(font) + line_space, maxlength);
    
    boxwidth = width_of_box;//text_width + (padding*2);
    boxheight = height_of_box;//text_height + (padding*2);
    
    sound = argument3;
        
    if(text_height > boxheight - 2*v_padding) show_debug_message("The message '" + text + "' is too long!");
    
    visible=false;
}

return txt;
