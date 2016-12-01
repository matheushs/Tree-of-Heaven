/// showOptionSequence()

tam_current_options = 0;
length = array_length_1d(global.option_tree_status);

for(i = 0; i < length; i++){
    if(global.option_tree_status[i] = 1){
        options[tam_current_options, 0] = global.option_tree[i, 0];
        options[tam_current_options, 1] = global.option_tree[i, 1];
        tam_current_options++;
    }
}

if(tam_current_options != 0){
    scr_showOptions(options, tam_current_options);
}
