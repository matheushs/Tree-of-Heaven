///scr_text("Text",speed, font, sound, color)

var width_of_box = 580;
var height_of_box = 152;

return scr_text_ext(argument0, 
             argument1, 
             argument2, 
             argument3,
             (view_wview[0] - width_of_box)/2,
             (view_hview[0] - height_of_box - 20),
             width_of_box,
             height_of_box,
             16,
             28,
             6,
             argument4);
