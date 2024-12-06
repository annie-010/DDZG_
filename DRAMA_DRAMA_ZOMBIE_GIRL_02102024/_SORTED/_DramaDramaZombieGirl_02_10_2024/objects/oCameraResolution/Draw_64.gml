
draw_sprite_ext(spr_crt_filter,0,_viewx,_viewy,1,1,0,c_white,0.2);
draw_set_color(c_black);
draw_set_font(fnt_default_16);
draw_text(15,15,"_currentSecondTime : " + string(floor(global._gamesecondsTranscurred)));






/*

if _fadein { draw_sprite_ext(spr_blackfade_filter,0,0,0,1,1,0,c_white,1); 
	} else if _fadein==false {
		
 draw_sprite_ext(spr_blackfade_filter,0,0,0,1,1,0,c_white,_fadevalue);	
}

///true;



///_detaltimeSec

