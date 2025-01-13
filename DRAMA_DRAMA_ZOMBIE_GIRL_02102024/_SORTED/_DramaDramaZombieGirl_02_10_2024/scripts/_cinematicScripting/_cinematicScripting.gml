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







switch(floor(_currentCinematicsecond)) {

case 0:
_useblack=true;
if _acted==false {
show_debug_message("playing second : 0");
oCameraResolution.x=oPlayer.x;
oCameraResolution.y=oPlayer.y;
_acted=true;
}
break;



case 2:
show_debug_message("playing second : 2");
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
break;



case 3:
show_debug_message("playing second : 2");

if _acted==false {
var _text = instance_create_layer(x,y,"SYSTEM",otext_parent);
_text._text[0]="saki@@@@@@ *Click*";

} _acted=true;

break;




case 4:
if _acted==true {
	_useblack=false;
var _text = instance_create_layer(x,y,"SYSTEM",otext_parent);
_text._text[0]="saki@@@@@@ Quizas prepararme resulte mas facil con la luz encendida";

}_acted=false;

break;



}



///show_debug_message("Se reprodujo mensaje a pesar de cambiarse el switch.");


} else if _isplaying==true {
if _ended==true {  ///SALIDA PROGRAMADA
	
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



