var _disttoreact = 128;
var _disttobevisible=700;
var _actionbutton = keyboard_check_pressed(ord("I"));

/////EASY ACCESS TO COORDENATES
///((x-(sprite_width/2)),(y+1),(x+(sprite_width/2)),(y+32),oPlayer,true,true);
///
///
//
//


var _coldown,_colup,_colcenter;

_coldown = collision_rectangle((x - (sprite_width / 2)), (y + 32), (x + (sprite_width / 2)), (y + 48), oPlayer, true, true);
_colup = collision_rectangle((x - (sprite_width / 2)), (y - 61), (x + (sprite_width / 2)), (y - 77), oPlayer, true, true);
_colcenter = collision_rectangle((x-(sprite_width/2)),y,(x+(sprite_width/2)),y-29,oPlayer,true,true);


if instance_exists(oPlayer) {

	var _distance=distance_to_point(oPlayer.x,oPlayer.y);
	///var _distancetoenemy=distance_to_point()
	
	switch(_state) {
		case "closed" :	
		if (global._currentgrid!=noone) {
mp_grid_add_rectangle(global._currentgrid, x-(5*32), y-8, x+(5*32), y+8);
}if _darktolight!=noone {_darktolight.visible=true;}






break;
		
		case "_forceclosed":
		if _darktolight!=noone {_darktolight.visible=true;}
		if (global._currentgrid!=noone) {
mp_grid_add_rectangle(global._currentgrid, x-(5*32), y-8, x+(5*32), y+8);
}
		
		
		break;
		
		
		case "open":
		if _darktolight!=noone {_darktolight.visible=false;}
		mp_grid_clear_rectangle(global._currentgrid, x-(5*32), y-8, x+(5*32), y+8);
		break;
		
	}
	
	
	
	if (_coldown or _colup) {
		
		
		
	if y>oPlayer.y {	image_alpha=.5;} else if y<=oPlayer.y {image_alpha=1;}
		
		
	switch(_state) {
	case "closed" :
	image_blend=c_white;
	solid=true;




	
	if _actionbutton  {image_speed=0.3; sprite_index=spr_storedoor_animated;   _actionbutton=false; }
	
	break;
	
	case "open":
	sprite_index=spr_storedoor_animated;
	image_blend=c_white;
	solid=false;
	image_speed=0;
	image_index=5;

		if _actionbutton {_state="closed"; _actionbutton=false;}
	break;
	
	
	case "_forceclosed":
	///image_blend=c_red;
	image_blend=c_white;
	solid=true;
	image_index=0;
	if _actionbutton {_actionbutton=false;} //
	break;
	
}	

		
		} //else if _colcenter {image_index=1;} 

		
		if _distance>_disttoreact {image_alpha=1;}
	
	
	if _distance>_disttobevisible {visible=0;} else if _distance<_disttobevisible {visible=1;}
	

}






	/*
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		visible=1;  
		if _distance<64 {
				if oPlayer.y>=y {} 
		else {image_alpha=.5;}
		} else if _distance>64 {image_alpha=1;}
		
		

		
		}
		
		
	///else if _distance>_dist {visible=0;} 
	}