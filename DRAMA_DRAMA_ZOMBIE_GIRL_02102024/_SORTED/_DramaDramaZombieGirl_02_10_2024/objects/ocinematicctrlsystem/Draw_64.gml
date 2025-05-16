if _useblack==true {
show_debug_message("use black == true");
with(oCameraResolution) {
draw_sprite_ext(spr_blackfade_filter,0,_viewx,_viewy,1,1,0,c_white,1);
}
} else {
	show_debug_message("use black == false");
}