audio_stop_all();

///CREATING SYSTEM TO WORK 
if !instance_exists(oPlayer) {
	
	switch(room) {
	case r_playable_1th_public: global.oplayerinstance = instance_create_layer(6054,2853,"_Entities",oPlayer);
	break;
	
	case r_playable_5th_neonoffice: global.oplayerinstance = instance_create_layer(5141,5245,"_Entities",oPlayer); 
	break;	
	
	
	case r_playable_minus1th_hideway : global.oplayerinstance = instance_create_layer(214,390,"_Entities",oPlayer);  
	break;
	}
	}
	
	
	
if !instance_exists(oCameraTarget) {
with(instance_create_layer(0,0,"SYSTEM",oCameraTarget)) {
target=noone;
}

}	
	
	
	
	
	
	
if instance_exists(oCameraTarget) {

switch (room) {
case r_playable_5th_neonoffice:



oCameraTarget.x=5141-(VIEW_WIDTH/2);
oCameraTarget.y=5245-(VIEW_HEIGHT/2);
oCameraTarget.target=oPlayer;


switch (ohistoryevents._hevents_0._isPlaying) {


case true:

if ohistoryevents._hevents_0._firstSwitch==false && ohistoryevents._hevents_0._fourthSwitch==false  {
	_useblack=true;
	
if !instance_exists(ocinematicctrlsystem) {
	show_debug_message("creada cinematica, para comprobar si se elimino")
var cinematic = instance_create_layer(x,y,"SYSTEM",ocinematicctrlsystem);
cinematic._currentCinematicState = _CinematicState._active;
cinematic._movietoplay="Office00";
}
}
break
case false:
switch( global._lastroom) {
case r_playable_5th_neonoffice: 
break;
}
break;

}
break;

case r_playable_1th_public :
if (ohistoryevents._hevents_0._isPlaying==true) {
if !instance_exists(ocinematicctrlsystem) {
	show_debug_message("creada cinematica, para comprobar si se elimino")
var cinematic = instance_create_layer(x,y,"SYSTEM",ocinematicctrlsystem);
cinematic._currentCinematicState = _CinematicState._active;
cinematic._movietoplay="PublicCorridor01";
}
}


/*

oCameraTarget.x=7392//-(VIEW_WIDTH/2)
oCameraTarget.y=7873//-(VIEW_HEIGHT/2)
oCameraTarget.target=oPlayer;
oCameraTarget._currentveltomove=0.0005;
with(oCameraTarget){alarm[1]=200;}

*/












break;



case r_playable_minus1th_hideway:
with (oCameraTarget) {
target=oPlayer;
}
break;



case r_playable_minus2th_hideway:
with (oCameraTarget) {
target=oPlayer;
}
break;

}}




















////TO PUT MUSIC

switch(room) {

case r_playable_5th_neonoffice:

///audio_play_sound(_bgm_interlude_00,1,1);

break;


case r_playable_1_5th_public_1:

////audio_play_sound(_bgm_macroblank,1,1);

break;


case r_playable_minus1th_hideway:

audio_play_sound(_bgm_macroblank,1,1);

break;

}

