/// @description Inserte aquí la descripción
// Puede escribir su código en este editor



///if !place_meeting(x,y+1,oPlatformx32) {depth=-floor(y/32)+1; }


if _owner!=noone 
{	_owner.depth=depth;
	
	
	if _owner.ActualPlayerState!=PlayerStates.Stairs  {
	
		if place_meeting(x+3,y,oBlock) {x-=4;  _owner.x-=4;}
	if place_meeting(x-3,y,oBlock) {x+=4;	_owner.x+=4;}
	if place_meeting(x,y+3,oBlock) {y-=4;	_owner.y-=4;}
	if place_meeting(x,y-3,oBlock) {y+=4;	_owner.y+=4;}
	
	
	}
	


#region  STAIRS DETECT




var _StairsColl = noone;

if _owner._Grounded && _owner.ActualPlayerState!=PlayerStates.Stairs {


if place_meeting(x + 16,y,oBlockStair) 
{
	_StairsColl=instance_place(x+16,y,oBlockStair);    
}


if place_meeting(x - 16,y,oBlockStair) 
{
	_StairsColl=instance_place(x-16,y,oBlockStair);    
}



if _StairsColl!=noone {

 if (place_meeting(x+16,y,_StairsColl) && keyboard_check(ord("D")) ) { _owner.x=_StairsColl.bbox_left; _owner.y=_StairsColl.init_y;	  _owner.stair_init_y=_StairsColl.init_y;	  _owner.stair_end_y=_StairsColl.end_y;  _owner.ActualPlayerState=PlayerStates.Stairs;} 
 if (place_meeting(x-16,y,_StairsColl) && keyboard_check(ord("A")) ) { _owner.x=_StairsColl.bbox_right; _owner.y=_StairsColl.end_y;	   _owner.stair_init_y=_StairsColl.init_y;	  _owner.stair_end_y=_StairsColl.end_y;	 _owner.ActualPlayerState=PlayerStates.Stairs;}
}
}
#endregion







}




 






/*


init_y=0;
end_y=0;








