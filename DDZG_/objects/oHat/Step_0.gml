/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if _owner!=noone && _created==false
{show_debug_message("id del _owner es =" + string(_owner));
	
	
	
	var frontShow =	 instance_create_layer(_owner.x,_owner.y,"Instances",oObjectShow);	frontShow.ClothPos=ClothState.Front_;  frontShow._owner=_owner; frontShow.image_speed=0; frontShow.sprite_index=sprWitch_Hat; frontShow.image_index=0;
	
	var backShow =	 instance_create_layer(_owner.x,_owner.y,"Instances",oObjectShow);	backShow.ClothPos=ClothState.Back_;  backShow._owner=_owner; backShow.image_speed=0; backShow.sprite_index=sprWitch_Hat; backShow.image_index=1;
	
	_created=true;
}


if _owner!=noone {x=_owner.x; y=_owner.y;}



/*  ClothPos=ClothState.INACTIVE;






//var backShow =  instance_create_layer(_owner.x,_owner.y,"Instances",oObjectShow); backShow._owner=_owner;   backShow.image_speed=0; backShow.sprite_index=sprWitch_Hatback; backShow.image_index=1; backShow.depth=_owner.depth-3;













