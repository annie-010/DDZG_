var _iscolling = place_meeting(x,y,oPlayer);
var _keysave = keyboard_check_pressed(ord("I")); 

if _iscolling && _keysave {
oSavegame._savegame();
///show_debug_message("se guardo partida")
}
