if(global.item_on_hand != 0){
    switch(global.item_on_hand.name){
    default:
        default_inventory_error();
        break;
    }
}else

switch(argument0){
    case "book":
        steve_says("Agatha Christie's And Then There Were None.");
        steve_says("Still one of my favorites to this day.");
        
        chapter = get_switch("current_soldier_chapter");
        
        if(chapter == 0) chapter = 10;
        
        switch(chapter){
        case 10:
            steve_says("Ten little Soldier Boys went out to dine,#One choked his little self,#And then there were nine.");
            break;
        case 9:
            steve_says("Nine little Soldier Boys sat up very late,#One overslept himself,#And then there were eight.");
            break;
        case 8:
            steve_says("Eight little Soldier Boys travelling in Devon,#One said he'd stay there,#And then there were seven.");
            break;
        case 7:
            steve_says("Seven little Soldier Boys chopping up sticks,#One chopped himself in halves,#And then there were six.");
            break;
        case 6:
            steve_says("Six little Soldier Boys playing with a hive,#A bumblebee stung one,#And then there were five.");
            break;
        case 5:
            steve_says("Five little Soldier Boys going in for law,#One got in Chancery,#And then there were four.");
            break;
        case 4:
            steve_says("Four little Soldier Boys going out to sea,#A red herring swallowed one,#And then there were three.");
            break;
        case 3:
            steve_says("Three little Soldier Boys walking in the zoo,#A big bear hugged one,#And then there were two.");
            break;
        case 2:
            steve_says("Two little Soldier Boys sitting in the sun,#One got frizzled up,#And then there was one.");
            break;
        case 1:
            steve_says("One little Soldier Boy left all alone,#He went out and hanged himself,#And then there were none.");
            chapter = 11;
            break;
        default:
            show_debug_message(chapter)
        }
        
        set_switch("current_soldier_chapter", chapter - 1);
        
        break;
    case "window":
        steve_says("The D13 star. It has been emmiting some strange signals for a while, so we were sent to investigate.");
        steve_says("Last I've heard from the crew we hadn't found anything new.");
        break;
    default:
    break
}



