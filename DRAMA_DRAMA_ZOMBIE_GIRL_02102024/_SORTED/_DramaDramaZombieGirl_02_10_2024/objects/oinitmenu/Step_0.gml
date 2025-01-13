var  _keyup,_keydown,_keyk;
_keyup=keyboard_check_pressed(ord("W"));
_keydown=keyboard_check_pressed(ord("S"));
_keyk=keyboard_check_pressed(ord("K"));

if _keyup  {///array_length(_menu)
	
if _arrowpos>0 {
_arrowpos-=1; 
} else if _arrowpos<=0 {
_arrowpos=array_length(_menu)-1;}
_keyup=false;
}

if _keydown {
	if _arrowpos<array_length(_menu)-1 {
	_arrowpos+=1;
	} else if _arrowpos>=array_length(_menu)-1 {_arrowpos=0;}
	
	_keydown=false;

}


if _keyk {

switch (_arrowpos) {

case 0:
room_goto(_initRoom);

break;


case 1:
break;

case 2:
break;

case 3:
break;

case 4:
break;

case 5:
game_end();
break;



}

_keyk=false;

}





/*
_menu[0] = "Iniciar";
_menu[1] = "Configuraciones";
_menu[2] = "Continuar";
_menu[3] = "Extras";
_menu[4] = "Salir";

*/
