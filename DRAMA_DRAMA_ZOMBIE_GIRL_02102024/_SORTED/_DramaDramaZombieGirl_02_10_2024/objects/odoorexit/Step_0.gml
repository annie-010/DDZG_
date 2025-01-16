var _disttoreact = 64;
var _disttobevisible=600;
var _actionbutton = keyboard_check_pressed(ord("Q"));

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
	if (_coldown or _colup) {
		
		if y>oPlayer.y {image_alpha=.5;} else if y<=oPlayer.y {image_alpha=1;}

	switch(_state) {
	case "closed" :
	
	solid=true;
	image_index=0;
	
	if _actionbutton  {_actionbutton=false; _actionated=true;}
	
	break;
	
	
	/*
	case "open":
	solid=false;
	image_index=1;
		if _actionbutton {_state="closed"; _actionbutton=false;}
	break;
*/

}	
} else if _colcenter {image_index=1;} 
if _distance>_disttoreact {image_alpha=1;}
if _distance>_disttobevisible {visible=0;} else if _distance<_disttobevisible {visible=1;}
}

if _actionated!=false {
if _currentalphacount>=1 {
switch (room) {

case r_playable_5th_neonoffice :
room_goto(r_playable_exitcorridor_);
with (oPlayer) {
	oPlayer.x = 576;
	oPlayer.y = 640;
}
break;


}

}}




	/*
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		visible=1;  
		if _distance<64 {
				if oPlayer.y>=y {} 
		else {image_alpha=.5;}
		} else if _distance>64 {image_alpha=1;}
		
		

		
		}
		
		
	///else if _distance>_dist {visible=0;} 
	}