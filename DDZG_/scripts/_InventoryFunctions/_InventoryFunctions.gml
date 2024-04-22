function _InventoryNormalItemsFunction(_ds_list,_actual_NameVal){

var _ActualDsList = _ds_list;
var _ActualPos_dslist = _actual_NameVal;





switch (_ActualPos_dslist) {
	
	case "Chocko cookies": show_debug_message(string("ELEGIDO CHOCKOLATE")); 
	global.hp_player=1;
	break;


	case "Apple": show_debug_message(string("ELEGIDO MANZANA"));
	global.hp_player=5;
	break;


	case "Gummy Fingers": show_debug_message(string("GUMMY FINGERS"));
	global.hp_player=3;
	break; 


	case "Doridoripicantes": show_debug_message(string("DORI DORI PICANTES"));
	global.hp_player=7;
	break;
}



show_debug_message(string(_ActualPos_dslist));


}