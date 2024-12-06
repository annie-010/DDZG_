if place_meeting(x,y,oPlayer) {
	if oPlayer.z<_surface {
_inuse=true;} else if oPlayer.z>_surface {_inuse=false;}
}

var _dark = instance_place(x,y,odarksectionroom) 


	if _dark!=noone {
		if _dark.visible==true { 
			visible=false;
			} else if _dark.visible==false {
			visible=true;
			}
	}
