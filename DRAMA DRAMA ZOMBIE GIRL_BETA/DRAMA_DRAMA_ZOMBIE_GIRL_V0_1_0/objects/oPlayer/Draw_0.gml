draw_set_font(fnt_default_12);

draw_set_color(c_black);
///draw_sprite_ext(_maskFloor,0,x,y,1,1,0,c_white,0.5); 
draw_sprite_ext(_shadowspr,0,x,y,1,1,0,c_white,0.5);
draw_text(x,y,"current state : " + string(_CurrentStatePrint));
draw_text(x+64,y+64,"current state : " + string(PAD_MOVE));

draw_sprite_ext(sprite_index,image_index,x,y+z,image_xscale,image_yscale,0,c_white,1);
if 	_currentequipPlayer._Head!=pointer_null {
draw_sprite_ext((_currentequipPlayer._Head._equipspritefront),0,x,y,image_xscale,1,0,c_white,1);
}

if 	_currentequipPlayer._Chest!=pointer_null {
draw_sprite_ext((_currentequipPlayer._Chest._equipspritefront),0,x,y,image_xscale,1,0,c_white,1);
}


if 	_currentequipPlayer._Weapon!=pointer_null {
draw_sprite_ext((_currentequipPlayer._Weapon._equipspritefront),0,x,y,image_xscale,1,0,c_white,1);
}