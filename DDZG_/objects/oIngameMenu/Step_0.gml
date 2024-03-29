/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var _keyaction,_keyback



if instance_exists(oPlayer) {
	
	
_keyaction = keyboard_check_pressed(ord("I"));
_keyback = keyboard_check_pressed(ord("U"));



if _owner._menuOpened==false {
	
	show_debug_message("El menú está cerrado!");
	visible=0;
	
////instance_destroy();
} else if  _owner._menuOpened!=false {

visible=1;



///if _keyback {
//_owner._menuOpened=false;
//_menuOpened=false;
//
//}

var _keyup,_keydown,_keyleft,_keyright;

_keyup = keyboard_check_pressed(ord("W"));
_keydown = keyboard_check_pressed(ord("S"));
_keyleft = keyboard_check_pressed(ord("A"));
_keyright = keyboard_check_pressed(ord("D"));


switch _actualoptionmenu
{
case _optionsmenu.Select_:

if _keyback {

_menuOpened=false;
_menuOpened=false;
_mpos=0;
_owner._menuOpened=false;


}


switch _mpos {
	
	case 0:
	if _keyup {_mpos=4;}
	if _keydown {_mpos=1;}
	if _keyaction {  _actualoptionmenu=_optionsmenu.Equip_;}
	
	break;
	
	
	case 1:
	if _keyup {_mpos=0;}
	if _keydown {_mpos=2;}	
	if _keyaction {}

	break;
	
	
	case 2:
	if _keyup {_mpos=1;}
	if _keydown {_mpos=3;}	
		if _keyaction {}
	
	break;
	
	
	case 3:
	if _keyup {_mpos=2;}
	if _keydown {_mpos=4;}	
		if _keyaction {}
	break;
	
	case 4:
	if _keyup {_mpos=3;}
	if _keydown {_mpos=0;}
		if _keyaction {}
	break;
}


break;


case _optionsmenu.Equip_:


if _keyback {
	
	_actualoptionmenu=_optionsmenu.Select_;
	_mpos=0;
}






switch _mpos {
	
	case 0:
	if _keyup {_mpos=4;}
	if _keydown {_mpos=1;}
	if _keyaction {  _actualoptionmenu=_optionsmenu.Equip_head;}
	
	break;
	
	
	case 1:
	if _keyup {_mpos=0;}
	if _keydown {_mpos=2;}	
	if _keyaction {}

	break;
	
	
	case 2:
	if _keyup {_mpos=1;}
	if _keydown {_mpos=3;}	
		if _keyaction {}
	
	break;
	
	
	case 3:
	if _keyup {_mpos=2;}
	if _keydown {_mpos=4;}	
		if _keyaction {}
	break;
	
	case 4:
	if _keyup {_mpos=3;}
	if _keydown {_mpos=0;}
		if _keyaction {}
	break;
}



break;


case _optionsmenu.Equip_head:

if _keyback {
	
	_actualoptionmenu=_optionsmenu.Equip_;
	_mpos=0;
}

switch _mpos {
	
	case 0:
	if _keyup {_mpos=4;}
	if _keydown {_mpos=1;}
	if _keyaction { show_message("TE PUSISTE EL GORRITO WE."); /////_actualoptionmenu=_optionsmenu.Equip_head;
		}
	
	break;
	
	
	case 1:
	if _keyup {_mpos=0;}
	if _keydown {_mpos=2;}	
	if _keyaction {}

	break;
	
	
	case 2:
	if _keyup {_mpos=1;}
	if _keydown {_mpos=3;}	
		if _keyaction {}
	
	break;
	
	
	case 3:
	if _keyup {_mpos=2;}
	if _keydown {_mpos=4;}	
		if _keyaction {}
	break;
	
	case 4:
	if _keyup {_mpos=3;}
	if _keydown {_mpos=0;}
		if _keyaction {}
	break;
}







break;


case _optionsmenu.Inventory_:
break;



case _optionsmenu.Keyobj_:
break;


}


	
}}


///enum _optionsmenu {Select_, Equip_,Inventory_,keyobj_ } 































