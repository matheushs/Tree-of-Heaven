///remove_from_inventory(item)

if(instance_exists(Inventory)){
    var i = 0;
    with(instance_find(Inventory, 0)){
        if(itens[0] != 0) {
            var removed = false;
            for(; i < array_length_1d(itens); i++){
                if(itens[i] == argument0){
                    if(global.item_on_hand == argument0){
                        global.item_on_hand = 0;
                    }
                    
                    with(argument0){
                        instance_destroy();
                    }
                    removed  = true;
                    break;
                }
            }
            if(removed){
                for(; i < array_length_1d(itens) - 1; i++){
                    itens[i] = itens[i + 1];
                }
                
                itens[array_length_1d(itens)-1] = 0;
            }
        }
    }
}
