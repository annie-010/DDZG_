/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

/*




if _owner!=noone {
x=_owner.x; y=_owner.y;
}
*/

var playercoll =collision_rectangle(x-16,y-16,x+16,y+16,oPlayer,true,true);
if playercoll {
	///playercoll._PlayerStatsManager.PlayerStats._hpCurrent-=1;
show_debug_message("dmg golpeo");
///playercoll._PlayerStatsManager.PlayerStats._hpCurrent-=1;
show_debug_message("hp player :" + string(playercoll._PlayerStatsManager.PlayerStats._hpCurrent));
/// if (_check_z_collision(self, playercoll)) && (_collisioned==false)
///_StateAlterer_Effects(oPlayer,"Poison",5,5,false,(oPlayer._effLevelonePoisoned));
{
/*
(_check_z_collision(self, playercoll))
*/
if playercoll._effLeveloneCutted._state==false {
////if _selected==noone {
show_debug_message("cutted");
playercoll._effLeveloneCutted._state=true;
instance_destroy();	
}
}

}




