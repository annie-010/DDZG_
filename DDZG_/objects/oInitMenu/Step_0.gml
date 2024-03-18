


var _keyDown = keyboard_check_pressed(ord("S"));
var _keyUp = keyboard_check_pressed(ord("W"));
var _KeyEnter = max(keyboard_check_pressed(ord("K")), keyboard_check_pressed(vk_enter));


switch (room) 
{
	
	case r_test_menu_00:
	
	menu [0] = "¡Comenzar!";
	menu [1] = "Configuracion";
	menu [2] = "Cerrar";
	
	break;
	
	
	
	case r_test_optionsmenu_00:
	menu [0] = "CONFIGURAR SONIDO";
	menu [1] = "CONFIGURAR BOTONES";
	menu [2] = "VOLVER";
	break;
	
}



#region  MOVERSE ENTRE LAS OPCIONES

var move = 0;
move -= _keyUp;
move += _keyDown;

if (move !=0)
{ audio_play_sound(snd_scrollSelect_0,1,0);
    mpos +=move;
    if (mpos < 0) mpos = array_length_1d(menu) - 1;
    if (mpos > array_length_1d(menu) -1) mpos = 0;
}

var push;
push = _KeyEnter;
if (push == 1) { scr_MenuInit();  audio_play_sound(snd_select0,1,false);}


#endregion





















