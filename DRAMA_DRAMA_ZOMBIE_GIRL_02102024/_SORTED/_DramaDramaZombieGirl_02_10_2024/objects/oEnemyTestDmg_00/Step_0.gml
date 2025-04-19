/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

/*




if _owner!=noone {
x=_owner.x; y=_owner.y;
}
*/


var playercoll =collision_rectangle(x-16,y-16,x+16,y+16,oPlayer,true,true);

if playercoll!=noone {
	playercoll._PlayerStatsManager.PlayerStats._hpCurrent-=1;
//////show_debug_message("aca");

/// if (_check_z_collision(self, playercoll)) && (_collisioned==false)
///_StateAlterer_Effects(oPlayer,"Poison",5,5,false,(oPlayer._effLevelonePoisoned));
{
/*


(_check_z_collision(self, playercoll))




*/





if playercoll._effLeveloneCutted._state!=true {



if _selected==noone {
	_selected=choose(0,1,0,1);///
	///show_debug_message("selected : " + string(_selected));
} if _selected!=noone {

switch(_selected) {
	
	
case 1: playercoll._effLeveloneCutted._state=true;
///show_debug_message("effect on");
//var _texteffect=(instance_create_layer(x,y,"_Entities",otext_parent));
//_texteffect.typeDialog="_instead";
//_texteffect._text[0]="saki@@@@@@ Ha sido cortada! (-1 Pdv c/3 segundos!)";		


//instance_destroy();
break;


case 0:

///show_debug_message("not effect this time");
//instance_destroy();


break;}}



}






}
///playercoll._PlayerStatsManager.PlayerStats._hpCurrent-=1;
//////show_debug_message("hp player :" + string(playercoll._PlayerStatsManager.PlayerStats._hpCurrent));
}









/*


// Inherit the parent event
event_inherited();

