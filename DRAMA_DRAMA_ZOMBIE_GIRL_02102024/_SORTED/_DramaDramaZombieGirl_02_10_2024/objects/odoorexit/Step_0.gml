
var _disttoreact = 64;
var _disttobevisible=600;
var _actionbutton = KEY_I_PRESSED; ////keyboard_check_pressed(ord("Q"));

/////EASY ACCESS TO COORDENATES
///((x-(sprite_width/2)),(y+1),(x+(sprite_width/2)),(y+32),oPlayer,true,true);
///
///
//
//


var _coldown,_colup,_colcenter;

_coldown = collision_rectangle((x - (sprite_width / 2)), (y + 32), (x + (sprite_width / 2)), (y + 48), oPlayer, true, true);
_colup = collision_rectangle((x - (sprite_width / 2)), (y - 61), (x + (sprite_width / 2)), (y - 77), oPlayer, true, true);
_colcenter = collision_rectangle((x-(sprite_width/2)),y,(x+(sprite_width/2)),y-29,oPlayer,true,true);

if instance_exists(oPlayer) {
	var _distance=distance_to_point(oPlayer.x,oPlayer.y);
	if (_coldown or _colup) {
		
		if y>oPlayer.y {image_alpha=.5;} else if y<=oPlayer.y {image_alpha=1;}

	switch(_state) {
	case "closed" :
	
	solid=true;
	image_index=0;
	
	if _actionbutton  {_actionbutton=false; _actionated=true;}
	
	break;
	
	
	/*
	case "open":
	solid=false;
	image_index=1;
		if _actionbutton {_state="closed"; _actionbutton=false;}
	break;
*/

}	
} else if _colcenter {image_index=1;} 
if _distance>_disttoreact {image_alpha=1;}
if _distance>_disttobevisible {visible=0;} else if _distance<_disttobevisible {visible=1;}
}

if _actionated {


switch (room) {

case r_playable_5th_neonoffice:



if ohistoryevents._hevents_0._isPlaying==true && ohistoryevents._hevents_0._fourthSwitch==true {

if (instance_exists(_textfromtutorial)) {
	show_debug_message("destruyendo texto tutorial");
with(_textfromtutorial) {instance_destroy();}
}

}










if ohistoryevents._hevents_0._isPlaying==true && ohistoryevents._hevents_0._secondSwitch==false {


if !instance_exists(ohistoryeventscommonsensor) {
show_debug_message("se ejecuta la creacion del sensor dentro de la habitacion.");


var _commonobjects_0 = instance_create_layer(5569,5278,"_SOLID",otext_keytest);
with(_commonobjects_0) {
	visible=true;
	sprite_index=spr_disorderobjects;
	image_speed=0;
	image_index=5;
	_type = "_gifter";
	_uniquetype = "_secondtothirdSwitch";
	_gifttype = "_hand";
	_gift = oPlayerMenu._handEquipArray[6];
	_msg = "saki@@@@@@	Has recogido 'Paraguas'";
	_msg0 = "saki@@@@@@	Firme acero de imitacion";	
	_msg1= "saki@@@@@@  Se ha guardado en Menu > Equipamiento > Arma  ";
	_msg2= "saki@@@@@@  Recuerda equiparlo para usarlo  ";	
	}
	
	//5999 , 5281


var _commonobjects_1_text = instance_create_layer(5583,5331,"_SOLID",otext_keytest);
with(_commonobjects_1_text) {
	_type = "_constant";
	visible=true;
	sprite_index=spr_disorderobjects;
	image_speed=0;
	image_index=0;
	_msg ="saki@@@@@@	Jessica trajo un abrigo, tiene sentido,";
	_msg0 ="saki@@@@@@	está nublado";
}
	




var _commonobjects_2_text = instance_create_layer(5570,5230,"_SOLID",otext_keytest);
with(_commonobjects_2_text) {
	_type = "_constant";
	visible=true;
	sprite_index=spr_disorderobjects;
	image_speed=0;
	image_index=1;
	_msg ="saki@@@@@@	Las pertenencias de Mimi";
}



var _commonobjects_3_text = instance_create_layer(5583,5362,"_SOLID",otext_keytest);
with(_commonobjects_3_text) {
	_type = "_constant";
	visible=true;
	sprite_index=spr_disorderobjects;
	image_speed=0;
	image_index=2;
	_msg ="saki@@@@@@	Lapiz";
	_msg0 ="saki@@@@@@	util, pero no ahora mismo";
}
	




var _commonobjects_4_text = instance_create_layer(5506,5264,"_SOLID",otext_keytest);
with(_commonobjects_4_text) {
	_type = "_constant";
	visible=true;
	sprite_index=spr_disorderobjects;
	image_speed=0;
	image_index=3;
	_msg ="saki@@@@@@	Esto no es mio, no deberia rebuscar aqui";
}






var _commonobjects_5_text = instance_create_layer(5632,5332,"_SOLID",otext_keytest);
with(_commonobjects_5_text) {
	_type = "_constant";
	visible=true;
	sprite_index=spr_disorderobjects;
	image_speed=0;
	image_index=4;
	_msg ="saki@@@@@@	Elastico para el cabello";
	_msg0 ="saki@@@@@@	suave y lindo, pero no mio";
}
	




var _commonobjects_6_text = instance_create_layer(5474,5264,"_SOLID",otext_keytest);
with(_commonobjects_6_text) {
	_type = "_constant";
	visible=true;
	sprite_index=spr_disorderobjects;
	image_speed=0;
	image_index=6;
	_msg ="saki@@@@@@	Esto no es mio, no deberia rebuscar aqui";
}
with(instance_create_layer(5362,5325,"Platform",ohistoryeventscommonsensor)) {
ohistoryevents._hevents_0._secondSwitch=true;
}
}
} 




else if  (ohistoryevents._hevents_0._isPlaying==true && ohistoryevents._hevents_0._secondSwitch==true)  {
	//&& ohistoryevents._hevents_0._thirdSwitch==false 

if oPlayer._currentequipPlayer._Weapon!=pointer_null {

show_message("carajho!")

}








/*
_currentequipPlayer = {
_Head : pointer_null,
_Chest : pointer_null,
_Weapon : pointer_null,
}


*/



}





if ((ohistoryevents._hevents_0._isPlaying==true && ohistoryevents._hevents_0._fourthSwitch==true) {
	show_debug_message("cuarto switch activo");
}



if ((ohistoryevents._hevents_0._isPlaying==true && ohistoryevents._hevents_0._fourthSwitch==true) && _coldown) &&  _actionbutton {
show_debug_message("using exit from :" + string(room_get_name(r_playable_5th_neonoffice) + "  to :" + string(room_get_name(r_playable_exitcorridor_))));
with(oPlayer) {
_CurrentPlayerState=_EnumPlayerState._dialog;
x = 575;
y = 622;
alarm_set(0,60);
_CurrentPlayerState=_EnumPlayerState._dialog;
}
global._lastroom=r_playable_5th_neonoffice;
room_goto(r_playable_exitcorridor_);
_actionated=false; 
}






/*

} else if  ohistoryevents._hevents_0._isPlaying==true && ohistoryevents._hevents_0._secondSwitch==true {





show_debug_message("Esta funcionando mal");


///


}



*/








/*



_hevents_0 = {
    _isPlaying: false,
    _firstSwitch: false,



*/


/*
case r_playable_exitcorridor_:
show_debug_message("using exit from :" + string(room_get_name(r_playable_exitcorridor_) + "  to :" + string(room_get_name(r_playable_5th_neonoffice))));
with(oPlayer) {
	
x = 6064;
y = 2880;
alarm_set(0,60);
_CurrentPlayerState=_EnumPlayerState._dialog;
}
global._lastroom=r_playable_5th_neonoffice;
room_goto(r_playable_5th_neonoffice);
_actionated=false;

break;

*/


}










	
	/*
if _currentalphacount>=1 {







}

*/
} 



 




	/*
	
	
	
	
	
	
	
	
	
	switch (room) {

case r_playable_5th_neonoffice:


if ohistoryevents._hevents_0._isPlaying==true && ohistoryevents._hevents_0._secondSwitch==false {
show_debug_message("Aun no está listo");

} else if  ohistoryevents._hevents_0._isPlaying==true && ohistoryevents._hevents_0._secondSwitch==true {





show_debug_message("Esta funcionando mal");


///show_debug_message("using exit from :" + string(room_get_name(r_playable_5th_neonoffice) + "  to :" + string(room_get_name(r_playable_exitcorridor_))));
with(oPlayer) {
	_CurrentPlayerState=_EnumPlayerState._dialog;
x = 575;
y = 622;
alarm_set(0,60);
_CurrentPlayerState=_EnumPlayerState._dialog;
}
global._lastroom=r_playable_5th_neonoffice;


room_goto(r_playable_exitcorridor_);
_actionated=false; 
break;


}

/*



_hevents_0 = {
    _isPlaying: false,
    _firstSwitch: false,



*/


/*
case r_playable_exitcorridor_:
show_debug_message("using exit from :" + string(room_get_name(r_playable_exitcorridor_) + "  to :" + string(room_get_name(r_playable_5th_neonoffice))));
with(oPlayer) {
	
x = 6064;
y = 2880;
alarm_set(0,60);
_CurrentPlayerState=_EnumPlayerState._dialog;
}
global._lastroom=r_playable_5th_neonoffice;
room_goto(r_playable_5th_neonoffice);
_actionated=false;

break;




}

	
	
	
	
	
	
	
		visible=1;  
		if _distance<64 {
				if oPlayer.y>=y {} 
		else {image_alpha=.5;}
		} else if _distance>64 {image_alpha=1;}
		
		

		
		}
		
		
	///else if _distance>_dist {visible=0;} 
	}