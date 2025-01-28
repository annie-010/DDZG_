///audio_play_sound(_ambient_bgm_music,.3,true);
audio_stop_all();
audio_play_sound(_bgm_choir,.3,true);////
_fadetype="_in";
_usefade=true;
_alphatodraw=1;
_useblack=true;


switch (room) {

case r_playable_5th_neonoffice:


if !instance_exists(oPlayer) {
	global.oplayerinstance = instance_create_layer(5141,5245,"_Entities",oPlayer);
	

	
}else if instance_exists(oPlayer) {

if ohistoryevents._hevents_0._isPlaying==true &&  ohistoryevents._hevents_0._firstSwitch==false {
	with((oPlayer)) {
x = 5141;
y = 5245;
	}}}
	



if !instance_exists(okeyctrl) {
instance_create_layer(0,0,"SYSTEM",okeyctrl)}

if !instance_exists(oCameraTarget) {
global._cameractrl = instance_create_layer(6064,2880,"SYSTEM",oCameraTarget);
global._cameractrl.target=oPlayer;
}
///global._camera.target=oPlayer;
/*



_hevents_0 = {
    _isPlaying : false,
    _firstSwitchSwitch: false,




*/


switch (ohistoryevents._hevents_0._isPlaying) {


case true:

if ohistoryevents._hevents_0. _firstSwitch==false {
	_useblack=true;
	
if !instance_exists(ocinematicctrlsystem) {
	show_debug_message("creada cinematica, para comprobar si se elimino")
var cinematic = instance_create_layer(x,y,"SYSTEM",ocinematicctrlsystem);
cinematic._currentCinematicState = _CinematicState._active;
cinematic._movietoplay="Office00";//_cinematicScripting();
	
}

}








/*









*/




break;



case false:
break;





}









break;





}
