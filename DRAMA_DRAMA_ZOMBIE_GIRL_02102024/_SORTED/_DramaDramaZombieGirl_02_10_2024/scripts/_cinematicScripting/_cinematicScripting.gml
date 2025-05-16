///var _currentsecond = argument0;


function _cinematic_00() {


static _isplaying=false;
static _ended = false;
static _acted = false;
static _currentCinematicsecond = 0;








//if instance_exists(otext_parent) {} else if !instance_exists(otext_parent) {

//}

_currentCinematicsecond+=_deltatimeSec();




if _isplaying==false {
	
	
	with(oPlayer) {
	_CurrentPlayerState=_EnumPlayerState._dialog;
	}
	
	
	
switch(floor(_currentCinematicsecond)) {

case 0:
_useblack=true;


oCameraTarget.x=oPlayer.x;
oCameraTarget.y=oPlayer.y;




if _acted==false {
//show_debug_message("playing second : 0");

_acted=true;
}
break;



case 2:


oCameraResolution.x=oPlayer.x;
oCameraResolution.y=oPlayer.y;



///show_debug_message("playing second : 2");
if _acted==true {

var _text = instance_create_layer(x,y,"SYSTEM",otext_parent);
_text._text[0]="robot@@@@@ *Golpean la puerta*";
_text._text[1]="coordinador Senorita?";
_text._text[2]="saki@@@@@@ Eh, si!, esta ocupado";
_text._text[3]="coordinador Me parece que sus companeras estan listas";
_text._text[4]="saki@@@@@@ es usted la coordinadora?";
_text._text[5]="coordinador si";
_text._text[6]="saki@@@@@@ emm, bajo en cuanto este lista, disculpeme.";
_acted=false;
}
break;



case 3:
///show_debug_message("playing second : 2");

if _acted==false {
var _text = instance_create_layer(x,y,"SYSTEM",otext_parent);
_text._text[0]="robot@@@@@ *Click*";

} _acted=true;

break;




case 4:
if _acted==true {
_useblack=false;
var _text = instance_create_layer(x,y,"SYSTEM",otext_parent);
_text._text[0]="saki@@@@@@ Quizas prepararme resulte mas facil con la luz encendida";


/*

_AudioLayersVolume = {
	
_bg0 : 0,
_bg1 : 0,
_bg2 : 0,

_front0 : 0,
_front1 : 0,
_front2 : 0
} 
*/



audio_play_sound(_bgm_interlude_00,1,1,oCameraResolution._AudioLayersVolume._bg1);
}_acted=false; _isplaying=true; 

break;



}



///show_debug_message("Se reprodujo mensaje a pesar de cambiarse el switch.");


} else if _isplaying==true { _ended=true; 
if _ended==true {
	
	
_isplaying=false;
_ended = false;
_acted = false;
_currentCinematicsecond = 0;
ohistoryevents._hevents_0._firstSwitch=true;
	instance_destroy();///SALIDA PROGRAMADA
	
	}

}
}


function _cinematic_01() {


static _isplaying=false;
static _ended = false;
static _acted = false;
static _currentCinematicsecond = 0;



_currentCinematicsecond+=_deltatimeSec();




if _isplaying==false {
	
	
	with(oPlayer) {
	_CurrentPlayerState=_EnumPlayerState._dialog;
	}
	
	
	
switch(floor(_currentCinematicsecond)) {

case 0:
_useblack=true;

oCameraResolution.x=oPlayer.x;
oCameraResolution.y=oPlayer.y;


if _acted==false {
//show_debug_message("playing second : 0");

_acted=true;
}
break;



case 2:


oCameraResolution.x=oPlayer.x;
oCameraResolution.y=oPlayer.y;



///show_debug_message("playing second : 2");
if _acted==true {

var _text = instance_create_layer(x,y,"SYSTEM",otext_parent);
_text._text[0]="saki@@@@@@ *Alguien ha apagado la luz!*";
//_text._text[1]="saki@@@@@@ Senorita?";
//_text._text[2]="saki@@@@@@ Eh, si!, esta ocupado";
//_text._text[3]="saki@@@@@@ Me parece que sus companeras estan listas";
//_text._text[4]="saki@@@@@@ es usted la cordinadora?";
//_text._text[5]="saki@@@@@@ si";
//_text._text[6]="saki@@@@@@ emm, bajo en cuanto este lista, disculpeme.";
_acted=false;
}
break;



case 3:
///show_debug_message("playing second : 2");

if _acted==false {
var _text = instance_create_layer(x,y,"SYSTEM",otext_parent);
_text._text[0]="saki@@@@@@ *Click*";


ohistoryevents._hevents_0._firstSwitch=false;
ohistoryevents._hevents_0._secondSwitch=false;
ohistoryevents._hevents_0._thirdSwitch=false;
with(inst_2EDB245F) {_state="closed";}
with(inst_79F595DF) {instance_destroy();} 
with(inst_3E17DD10) {instance_destroy();}
with(inst_116699A) {instance_change(odoor,true); _state="closed"; }
ohistoryevents._hevents_0._fourthSwitch=true;




with(inst_2EDB245F) {
_state="_forcedclosed"; ///
}

} _acted=true;

break;




case 4:
if _acted==true {
	_useblack=false;


instance_create_layer(5142,5640,"_Entities",_en_basic_test_01_entity);
instance_create_layer(4127,5920,"_Entities",_en_basic_test_01_entity);
instance_create_layer(5342,4260,"_Entities",_en_basic_test_01_entity);

////var _text = instance_create_layer(x,y,"SYSTEM",otext_parent);
///_text._text[0]="saki@@@@@@ Quizas prepararme resulte mas facil con la luz encendida";

}_acted=false; _isplaying=true; 

break;



}



///show_debug_message("Se reprodujo mensaje a pesar de cambiarse el switch.");


} else if _isplaying==true { _ended=true; 
if _ended==true {
	
	
_isplaying=false;
_ended = false;
_acted = false;
_currentCinematicsecond = 0;
oPlayer._CurrentPlayerState = _EnumPlayerState._stand; 
////ohistoryevents._hevents_0._firstSwitch=true;
	instance_destroy();///SALIDA PROGRAMADA
	
	}

}
}

function _cinematic_02() {
	


static _isplaying=false;
static _ended = false;
static _acted = false;
static _currentCinematicsecond = 0;


_currentCinematicsecond+=_deltatimeSec();


if _isplaying==false {
	
	
	with(oPlayer) {
	_CurrentPlayerState=_EnumPlayerState._dialog;
	}
	
	
	
switch(floor(_currentCinematicsecond)) {

case 0:
//oCameraResolution.x=oPlayer.x;
//oCameraResolution.y=oPlayer.y;
if _acted==false {
oCameraTarget.x=oPlayer.x;
oCameraTarget.y=oPlayer.y;
_acted=true;
}
break;




case 1:

if _acted==true { 
with(oCameraTarget) {
move_towards_point(7392,7873,5);}	

_acted=false;
}
/*
oCameraTarget.x=7392;
oCameraTarget.y=7873;
*/
break;

case 2 :
if _acted==false {
_useblack=true;
}


break;



case 3:

if _acted==false { 


with(oCameraTarget) {
move_towards_point(7392,7873,37);}
///ocameraRes_x : 5920    ocameraRes_y : 3424
/*with(oCameraTarget) {
}	+(864/2);  
#macro VIEW_WIDTH 1152
#macro VIEW_HEIGHT 864 
*/

_acted=true;
}
break;


case 4:
if _acted==true {

with(oCameraTarget) {
	move_towards_point(7392,7873,0);
x=(7392); y=(7873);
}_useblack=false;
_acted=false;
}

break;



case 5:

if _acted==false {
var _text = instance_create_layer(x,y,"SYSTEM",otext_parent);
_text._text[0]="saki@@@@@@ Es mimi!, ella podría saber algo";
_acted=true;
} break;



case 6:
if _acted==true {
_useblack=true;
with(oCameraResolution){
}
	with(oCameraTarget) {
		x=(oPlayer.x); y=(oPlayer.y); }
_acted=false;
}

break;


case 7:

if _acted==false {
	_useblack=false;
_acted=true;
}
break;



case 8:
if _acted==true {
var _text = instance_create_layer(x,y,"SYSTEM",otext_parent);
_text._text[0]="saki@@@@@@ El gentio sera una molestia";

_acted=false;
}
break;

case 9:
if _acted==false {
	
	
	
	
	
	
	_isplaying=true;
	
	with(oCameraTarget) {
	target=oPlayer;}
	
	
	with (oPlayer) {
	_CurrentPlayerState=_EnumPlayerState._stand;
	}
	
	
	_acted=true;
}




break;



/*
if _acted==false {
 _acted=true;
}
*/





/*
case 18:

with(oCameraTarget) {
move_towards_point(7392,7873,0);}

if _acted==false { 
_acted=true;
}
break;
*/



}



///show_debug_message("Se reprodujo mensaje a pesar de cambiarse el switch.");


} else if _isplaying==true { _ended=true; 
if _ended==true {
	
	
_isplaying=false;
_ended = false;
_acted = false;
_currentCinematicsecond = 0;
ohistoryevents._hevents_0._firstSwitch=true;
	instance_destroy();///SALIDA PROGRAMADA
	
	}

}	
	
	
	
	
	
	
}

function _cinematic_03() {
	


static _isplaying=false;
static _ended = false;
static _acted = false;
static _currentCinematicsecond = 0;


_currentCinematicsecond+=_deltatimeSec();


if _isplaying==false {
	
	
	with(oPlayer) {
	_CurrentPlayerState=_EnumPlayerState._dialog;
	}
	
	
	
switch(floor(_currentCinematicsecond)) {

case 0:
if _acted==false {
oplch_mimi.x=8790;
oplch_mimi.y=6013;
	
	
	
///move_towards_point()
	

with(oplch_mimi) {
oplch_mimi.x=8790;
oplch_mimi.y=6013;
visible=true;
_ischargedbyenemies=true;
z=-144;
}



with(oCameraTarget) {
target=noone;///=oplch_mimi;
x=oplch_mimi.x; y=oplch_mimi.y-256;
}



///move_towards_point(oplch_mimi.x,oplch_mimi.y,10);
_acted=true;
}
break;




case 1:

if _acted==true {
var _text = instance_create_layer(x,y,"SYSTEM",otext_parent);
_text._text[0]="mimi@@@@@@ Quitenme Las manos de encima!";
_text._text[1]="robot@@@@@ La gente al rededor pareciera pensar que es parte del espectaculo";
_text._text[2]="mimi@@@@@@ Saki, Ayudame!";

with(oplch_mimi) {move_towards_point(8704,5039,4);}

_acted=false;
}

break;


case 3:
_useblack=true;
with (oCameraTarget) {
	x=oPlayer.x;
	y=oPlayer.y;
target=oPlayer;
}

break;



case 4:

with (oCameraTarget) {
target=oPlayer;
}
_useblack=false;

break;

case 5:
if _acted==false {
var _text = instance_create_layer(x,y,"SYSTEM",otext_parent);
with(oplch_mimi) {move_towards_point(8704,5039,0);}
_text._text[0]="saki@@@@@@ Debo ir a por ella!";
_acted=true;

}


break;




case 10:




if _acted==true {
	

	
	
	
	
	_isplaying=true;
	
	with(oCameraTarget) {
	target=oPlayer;}
	
	
	with (oPlayer) {
	_CurrentPlayerState=_EnumPlayerState._stand;
	}
	with(oplch_mimi) {visible=false;}
	
	_acted=false;
}




break;



}





///show_debug_message("Se reprodujo mensaje a pesar de cambiarse el switch.");


} else if _isplaying==true { _ended=true; 
if _ended==true {
	
	
_isplaying=false;
_ended = false;
_acted = false;
_currentCinematicsecond = 0;
ohistoryevents._hevents_0._firstSwitch=true;
	instance_destroy();///SALIDA PROGRAMADA
	
	}

}	
	
	
	
	
	
	
}






































































/*






show_debug_message("_current scriptsecond : " + string(floor(_currentCinematicsecond)));

switch(floor(_currentCinematicsecond)) {

case 0:
_useblack=true;
if _acted==false {
show_debug_message("plating second : 0");
oCameraResolution.x=oPlayer.x;
oCameraResolution.y=oPlayer.y;
_acted=true;
}


break;


case 2:
show_debug_message("plating second : 2");
if _acted==true {
var _text = instance_create_layer(x,y,"SYSTEM",otext_parent);
_text._text[0]="saki@@@@@@ *Golpean la puerta*";
_text._text[1]="saki@@@@@@ Senorita?";
_text._text[2]="saki@@@@@@ Eh, si!, esta ocupado";
_text._text[3]="saki@@@@@@ Me parece que sus companeras estan listas";
_text._text[4]="saki@@@@@@ es usted la cordinadora?";
_text._text[5]="saki@@@@@@ si";
_text._text[6]="saki@@@@@@ emm, bajo en cuanto este lista, disculpeme.";
_acted=false;
}




case 5:
show_debug_message("plating second : 5");


break;
/*

		var _texteffect=(instance_create_layer(x,y,"_Entities",otext_parent,{
		///typeDialog : "_instead"
		}));
_texteffect.typeDialog="_instead";
			_texteffect._text[0]="saki@@@@@@ Ha sido envenenada!";		
		_collisioned=true;

/*

/*
switch(_CurrentPlayerState) {
	
	case _EnumPlayerState._inactive:
	_CurrentStatePrint="Inactive";
	break; 
	
	
	
	
	
	case _EnumPlayerState._cinematic:





break;




case 1222:
break;



case 1111:
break;



case 11111:
break;




case 1104:
break;



case 103:
break;




case 102:
break;




case 101:
break;




case 100:
break;







	
	
	}

}



