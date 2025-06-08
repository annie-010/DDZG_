if room==r_playable_5th_neonoffice {

if (ohistoryevents._hevents_0._isPlaying==true && ohistoryevents._hevents_0._thirdSwitch==true) {

}
with(inst_2EDB245F) {//WHITE LITTLE DOOR

_state="closed"; ///
}


if audio_is_playing(_bgm_fear){audio_stop_sound(_bgm_fear);
	
	audio_play_sound(_bgm_interlude_00,1,1,1);
	
	}




with(ohistoryevents) {

_hevents_0._firstSwitch=false;
_hevents_0._secondSwitch=false;

_hevents_0._thirdSwitch=false;
_hevents_0._fourthSwitch=true;
}
///ohistoryevents._hevents_0._isPlaying==true && ohistoryevents._hevents_0._thirdSwitch==true




with(inst_4B569DBA){ ///RED BIG DOOR
/////_state="_closed";
}
}