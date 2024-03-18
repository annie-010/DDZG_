/// @description Inserte aquí la descripción
// Puede escribir su código en este editor   
depth=-floor(bbox_bottom/32);

if _owner!=noone && _alreadyDrawing==false  {alarm[0]=3; _alreadyDrawing=true;}

var keyboard_NextText = keyboard_check_pressed(vk_enter);
if distance_to_object(oPlayer)<=_canspeak_range { _canspeak=true;} else {_canspeak=false;}
if distance_to_object(oPlayer)<=_canbesee_range {_canbesee=true; } else {_canbesee=false;}


if msj==noone && _canspeak==true &&  keyboard_NextText
{global.Pause_Game=true; _owner=oPlayer; keyboard_NextText=false;	msj=0; show_debug_message("_owner es" + string(_owner.id)); _owner.ActualPlayerState=PlayerStates.INACTIVE;	y+=0; x+=0; _owner.sprite_index=sprPlayerStand; 
}

if keyboard_NextText && msj==_maxtext {show_debug_message("SE TERMINO LA FILA");  keyboard_NextText=false;  msj=noone; _canspeak=false; _TextOnDisplay=content_text[0]; portraittoshow=noone;  _owner.ActualPlayerState=PlayerStates.Stand;  global.Pause_Game=false; }
if keyboard_NextText {if (msj>=0 && msj<_maxtext) { _TextOnDisplay="";   alarm[0]=30; alarm[1]=28; }	keyboard_NextText=false;}



///show_debug_message("WEON SE TERMINO EL TEXTO!");


switch msj
{
	case 0: _showtext=content_text[0];  keyboard_NextText=false; portraittoshow=sprPlayerTestPortrait;
	
	
	break;
	
	
	case 1: _showtext=content_text[1]; keyboard_NextText=false; portraittoshow=sprEnemyTestPortrait;
	
	
	break;
	
	
	case 2: _showtext=content_text[2]; keyboard_NextText=false; portraittoshow=sprPlayerTestPortrait;
	break;
	
	case 3: _showtext=content_text[3]; keyboard_NextText=false; portraittoshow=sprEnemyTestPortrait; 
	break;
	
	case 4: _showtext=content_text[4]; keyboard_NextText=false; 
	break;	
	
}


if portraittoshow!=noone {
switch portraittoshow 
{
	case withoutportrait:
	posportrait_x=0;
	break;
	
	case  sprPlayerTestPortrait:
	posportrait_x=64;
	break;
	
	case  sprEnemyTestPortrait:
	posportrait_x=896;
	break;
}
}
















