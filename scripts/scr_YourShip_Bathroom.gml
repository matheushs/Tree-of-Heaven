var messages;
switch(argument0){
    case "sink":
        messages[0] = "It is a sink.";
        message_add_array(messages);
        break;
    
    case "toilet":
        messages[0] = "It is a toilet.#You don't really feel like using it right now.";
        message_add_array(messages);
        break;
    
    case "paper":
        messages[0] = "It is a roll of toilet paper."
        messages[1] = "What?            #Not everything has changed in the distant future."
        message_add_array(messages);
        break;
    
    default:
    break
}
