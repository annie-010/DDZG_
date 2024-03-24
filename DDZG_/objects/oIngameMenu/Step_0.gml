/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var _keyaction,_keyback

_keyaction = keyboard_check_pressed(ord("I"));
_keyback = keyboard_check_pressed(ord("U"));


if _keyback {instance_destroy();}

var _keyup,_keydown,_keyleft,_keyright;

_keyup = keyboard_check_pressed(ord("W"));
_keydown = keyboard_check_pressed(ord("S"));
_keyleft = keyboard_check_pressed(ord("A"));
_keyright = keyboard_check_pressed(ord("D"));


switch _actualoptionmenu
{
case _optionsmenu.Select_:






switch _mpos {
	
	case 0:
	if _keyup {_mpos=4;}
	if _keydown {_mpos=1;}
	
	
	break;
	
	
	case 1:
	if _keyup {_mpos=0;}
	if _keydown {_mpos=2;}	

	break;
	
	
	case 2:
	if _keyup {_mpos=1;}
	if _keydown {_mpos=3;}	
	break;
	
	
	case 3:
	if _keyup {_mpos=2;}
	if _keydown {_mpos=4;}	
	break;
	
	case 4:
	if _keyup {_mpos=3;}
	if _keydown {_mpos=0;}	
	break;
}













break;


case _optionsmenu.Equip_:
break;



case _optionsmenu.Inventory_:
break;



case _optionsmenu.Keyobj_:
break;


}
///enum _optionsmenu {Select_, Equip_,Inventory_,keyobj_ } 





















