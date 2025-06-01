if _effect!=noone {
show_debug_message("el ataque continiene un efecto");
show_debug_message("el efecto : " + string(_effect) );
}

var playercoll =collision_rectangle(x-16,y-16,x+16,y+16,oPlayerMask,true,true);

if playercoll    {
	var _afectedentity = (playercoll._owner.id);
	show_debug_message("afected  :" + string(object_get_name(playercoll._owner.object_index)));	
//show_debug_message("dmg golpeo");
//show_debug_message("hp player :" + string(_afectedentity._PlayerStatsManager.PlayerStats._hpCurrent));
///show_debug_message("looking for * " + string(_afectedentity._effectforAsking) + "inside the player");

//_afectedentity.//
//show_debug_message("looking for * " + string(_afectedentity._effectforAsking) + "inside the player");
///show_debug_message("looking for * " + string(_afectedentity._effectforAsking));

}


