switch (argument[0]){
    case 1:
		global.idList[argument[0] - 1] = instance_create(500, 500, obj_one);
        break;
    case 2:
		global.idList[argument[0] - 1] = instance_create(500, 500, obj_two);
        break;
    case 3:
		global.idList[argument[0] - 1] = instance_create(500, 500, obj_three);
        break;
    case 4:
		global.idList[argument[0] - 1] = instance_create(500, 500, obj_four);
        break;
    case 5:
		global.idList[argument[0] - 1] = instance_create(500, 500, obj_five);
        break;
    case 6:
		global.idList[argument[0] - 1] = instance_create(500, 500, obj_six);
        break;
    case 7:
		global.idList[argument[0] - 1] = instance_create(500, 500, obj_seven);
        break;
    case 8:
		global.idList[argument[0] - 1] = instance_create(500, 500, obj_eight);
        break;
    case 9:
		global.idList[argument[0] - 1] = instance_create(500, 500, obj_nine);
        break;
    case 10:
		global.idList[argument[0] - 1] = instance_create(500, 500, obj_ten);
        break;
    case 11:
		global.idList[argument[0] - 1] = instance_create(500, 500, obj_eleven);
        break;
    case 12:
		global.idList[argument[0] - 1] = instance_create(500, 500, obj_twelve);
        break;
    case 13:
		global.idList[argument[0] - 1] = instance_create(500, 500, obj_thirteen);
        break;
    case 14:
		global.idList[argument[0] - 1] = instance_create(500, 500, obj_fourteen);
        break;
    case 15:
		global.idList[argument[0] - 1] = instance_create(500, 500, obj_fifteen);
        break;
    default:
		global.idList[argument[0] - 1] = instance_create(500, 500, obj_empty);
        break;
}
