


switch (room) {

case r_playable_5th_neonoffice:


if ohistoryevents._hevents_0._isPlaying==true && ohistoryevents._hevents_0._thirdSwitch==true {
inst_2EDB245F._state="_forceclosed";


if !instance_exists(ocinematicctrlsystem) {
	show_debug_message("creada la segunda cinematica");
var cinematic = instance_create_layer(x,y,"SYSTEM",ocinematicctrlsystem);
cinematic._currentCinematicState = _CinematicState._active;
cinematic._movietoplay="Office01";
	

show_debug_message("actualmente la puerta deberia estar cerrada");
}

break;


}} 