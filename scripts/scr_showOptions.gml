///scr_showOptions(options_array, length_array)
length = argument1;//array_length_1d(argument0);
var width_of_box = 580;
var height_of_box = 54;

for(i = 0; i < length; i++){
    option = instance_create((view_wview[0]-width_of_box)/2, (i + 1)*100, obj_option);
    option.text = argument0[i, 0];
    option.script = argument0[i, 1];
    
    
    
    with (option)
    {
        h_padding = 16;
        v_padding = 16;
        line_space = 6;
        
        maxlength = width_of_box - h_padding*2;
        font = default_font;
        color = c_white;
        
        text_length = string_length(text);
        font_size = font_get_size(font);
        
        draw_set_font(font);
        draw_set_colour(color);
        
        text_width = string_width_ext(text, font_get_size(font) + line_space, maxlength);
        text_height = string_height_ext(text, font_get_size(font) + line_space, maxlength);
        
        boxwidth = width_of_box;//text_width + (padding*2);
        boxheight = height_of_box;//text_height + (padding*2);
        
    }
    
    EventController.block_new_events = true;
}
