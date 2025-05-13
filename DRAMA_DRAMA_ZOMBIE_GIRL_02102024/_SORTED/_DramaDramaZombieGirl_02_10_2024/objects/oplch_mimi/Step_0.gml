




dist = distance_to_point(oPlayer.x,oPlayer.y);
var _closetmargin = 128;
var _key = KEY_I_PRESSED;

//show_debug_message("current distance to player : "+ string(dist));

if _key {

}


if _event==0 {

if dist<_closetmargin && _key {
var _text = instance_create_layer(x,y,"SYSTEM",otext_parent);
_text._text[0]="saki@@@@@@ Al fin encuentro a una de ustedes!, se encuentran todas bien?";
_text._text[1]="mimi@@@@@@ Todo bien conmigo, creo que las otras fueron al baño o a comer";
_text._text[2]="saki@@@@@@ La coordinadora dijo que ya iba a empezar todo y que casi estaba retrasada";
_text._text[3]="mimi@@@@@@ Lo mismo nosotras, tengo el maquillaje a medio camino, por que la preocupacion?";
_text._text[4]="saki@@@@@@ Los asistentes del evento no te han atacado de alguna forma?";
_text._text[5]="mimi@@@@@@ Además de intentar bajar los precios, estos otakus no han intentado otra cosa mas que ligarme";
_text._text[6]="mimi@@@@@@ En tus sueños quiza, sucio.";
_text._text[7]="saki@@@@@@ Un par de tipos me atacaron en el vestidor";
_text._text[8]="mimi@@@@@@ Como atacaron?";
_text._text[9]="saki@@@@@@ Intentaron agregirme fisicamente";
_text._text[10]="mimi@@@@@@ De momento ni las otras ni la coordinadora están, que tal si vas a caminar un rato?";
_text._text[11]="saki@@@@@@ No me siento comoda quedandome sola";
_text._text[12]="mimi@@@@@@ No intentarán nada en publico, te lo aseguro";
_text._text[13]="saki@@@@@@ mmmm, de acuerdo.";

_event=1;
}




}

var _wait = 20;
if _event==1 {

show_debug_message("Evento 1 : ");
if dist>=1500  && _waittoevent<_wait {
_waittoevent+=_deltatimeSec();
///show_debug_message("wait to event : " + string(_waittoevent))0;
}}

if _waittoevent<_wait {} else if (floor(_waittoevent)==_wait) && _event==1 {
var _text = instance_create_layer(x,y,"SYSTEM",otext_parent);
_text._text[0]="robot@@@@@ *La alerta de un anuncio sono por los altoparlantes del recinto*";
_text._text[1]="robot@@@@@ *Quizas sea la distancia con el objeto, el ruido de la gente, pero no logras comprender lo que estan anunciando*";
_text._text[2]="saki@@@@@@ Quizas deberia volver...";
_event=2;}


if (floor(dist)>=510 && floor(dist)<=530) && _event==2 {
	show_debug_message("se deberia ejecutar texto eent 2 ");
var _text = instance_create_layer(x,y,"SYSTEM",otext_parent);
_text._text[0]="saki@@@@@@ De todos modos, que estabamos pensando en separarnos, desde un principio es mala idea";
visible=false;
_event=3;
}

if (floor(dist)>=230 && floor(dist)<=270) && _event==3 {
var _text = instance_create_layer(x,y,"SYSTEM",otext_parent);
_text._text[0]="saki@@@@@@ Que es esto, que sucede?";

if !instance_exists(ocinematicctrlsystem) {
	show_debug_message("creada cinematica, para comprobar si se elimino")
var cinematic = instance_create_layer(x,y,"SYSTEM",ocinematicctrlsystem);
cinematic._currentCinematicState = _CinematicState._active;
cinematic._movietoplay="PublicCorridor02";
}
_event=4;
}


if _event==5 {

with(inst_76937AF4) {
sprite_index=spr_enemey_test_002;
image_speed=0;

x=7360; y=4994;
}


with(inst_7A2A69AD) {
	
sprite_index=spr_enemey_test_002;
x=7490; y=4994;
}


with(inst_1AF34B47) {
	_state="_forceclosed";
}


_event=6;
}


///show_debug_message("_event : " + string(_event));