

if _ownedswitch!=noone {
if place_meeting(x,y,oPlayer) && oPlayer.z == z {
	oPlayerMenu.PlayerStats._hpCurrent-=1;
	oPlayer.x=_ownedswitch.x;
	oPlayer.y=_ownedswitch.y;
	
}
}



/*

PlayerStats = {

///_HP_STATS
_hpMin : 0, 
_hpMax : 12,
_hpCurrent : 12,
_staminaMin : 0,
_staminaMax : 12,
_staminaCurrent : 12,