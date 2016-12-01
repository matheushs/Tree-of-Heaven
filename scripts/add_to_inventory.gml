/// add_to_inventory(item)

if(instance_exists(Inventory)){
    with(instance_find(Inventory, 0)){
        for(var i = 0; i < array_length_1d(itens); i++){
            if(itens[i] == 0){
                break;
            }
        }
        itens[i] = argument0;
    }
}
