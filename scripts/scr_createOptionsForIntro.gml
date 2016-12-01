global.option_tree = 0;

global.option_tree[0, 0] = "Is there anything else damaged?";
global.option_tree[0, 1] = scr_introOptions;
global.option_tree_status[0] = 1;

global.option_tree[1, 0] = "General Status of Ship?";
global.option_tree[1, 1] = scr_introOptions;
global.option_tree_status[1] = 1;

global.option_tree[2, 0] = "Anything that requires immediate attention?";
global.option_tree[2, 1] = scr_introOptions;
global.option_tree_status[2] = 1;
        
global.option_tree[3, 0] = "Other crew members?";
global.option_tree[3, 1] = scr_introOptions;
global.option_tree_status[3] = 1;
        
global.option_tree[4, 0] = "Engine Repairs?";
global.option_tree[4, 1] = scr_introOptions;
global.option_tree_status[4] = 0;
        
global.option_tree[5, 0] = "Weapons?";
global.option_tree[5, 1] = scr_introOptions;
global.option_tree_status[5] = 0;
        
global.option_tree[6, 0] = "Doors to the Hall?";
global.option_tree[6, 1] = scr_introOptions;
global.option_tree_status[6] = 0;

scr_showOptionSequence();
