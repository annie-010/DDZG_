if _effect!=noone {
//show_debug_message("el ataque continiene un efecto");
//show_debug_message("el efecto : " + string(_effect) );
}

var playercoll =collision_rectangle(x-16,y-16,x+16,y+16,oPlayerMask,true,true);

if playercoll    {
	var _afectedentity = (playercoll._owner.id);


}


if _owner!=noone {depth=_owner.depth;} 