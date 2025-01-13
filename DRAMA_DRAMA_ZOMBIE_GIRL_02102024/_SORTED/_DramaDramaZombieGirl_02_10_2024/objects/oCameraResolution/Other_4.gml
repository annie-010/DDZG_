///audio_play_sound(_ambient_bgm_music,.3,true);
audio_stop_all();
audio_play_sound(_bgm_choir,.3,true);////
_fadetype="_in";
_usefade=true;
_alphatodraw=1;



switch (room) {

case r_playable_5th_neonoffice:

if !instance_exists(ocinematicctrlsystem) {
var cinematic = instance_create_layer(x,y,"SYSTEM",ocinematicctrlsystem);
cinematic._currentCinematicState = _CinematicState._active;
cinematic._movietoplay="Office00";//_cinematicScripting();
}

break;





}
