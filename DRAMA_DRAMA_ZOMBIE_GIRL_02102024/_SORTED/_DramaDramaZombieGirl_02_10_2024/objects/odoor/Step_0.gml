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

	var _distance=distance_to_point(oEntityParent.x,oEntityParent.y);
	///var _distancetoenemy=distance_to_point()
	
	
	if (_coldown or _colup) {
		
		
		
	if y>oPlayer.y {	image_alpha=.5;} else if y<=oPlayer.y {image_alpha=1;}
		
		
	switch(_state) {
	case "closed" :
	image_blend=c_white;
	solid=true;
	image_index=0;
	
	if _actionbutton  {_state="open"; _actionbutton=false;}
	
	break;
	
	case "open":
	image_blend=c_white;
	solid=false;
	image_index=1;
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
		
		
		
		
		
		
		
		} else if _colcenter {image_index=1;} 
		
		
		
		
		
		
		
		
		
		
		if _distance>_disttoreact {image_alpha=1;}
	
	
	if _distance>_disttobevisible {visible=0;} else if _distance<_disttobevisible {visible=1;}
	
		
	switch(_state) {
	
	
	case "open":
	image_blend=c_white;
	break;	
	
	case "closed":
	image_blend=c_white;
	break;
	
	
	
	case "_forceclosed":
	image_blend=c_white;
	solid=true;
	image_index=0;
	break;	
	
	
	
	
	}
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