/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
///snd_ScreenTentacleVoice

if _TextOnDisplay!=_showtext {
	
	switch portraittoshow {
	case sprPlayerTestPortrait:  
	if !audio_is_playing(snd_SakiVoice) {audio_play_sound(snd_SakiVoice,1,false);}
	break;
	
	
	case sprEnemyTestPortrait:
	if !audio_is_playing(snd_ScreenTentacleVoice) {audio_play_sound(snd_ScreenTentacleVoice,1,false);}
	break;
	
	}
	
	
	
_TextOnDisplay+=string_char_at(_showtext,string_length(_TextOnDisplay)+1);
alarm[0]=3;
}


///_TextOnDisplay +=string_char_at(_showtext,string_length(_TextOnDisplay));

























