
draw_sprite_ext(sprite_index,image_index,x,(y+z)+zfloor,image_xscale,image_yscale,0,c_white,1);


draw_set_font(fnt_default_12);
draw_text(x,y+32,"z = " + string(z));
draw_text(x,y+48,"zfloor = " + string(zfloor));
draw_text(x,y+64,"zfloor_last = " + string(zfloor_last));
draw_text(x,y+98,"climb_cap = " + string(_currentclimbcapacity));

/*
draw_sprite(mask_index,0,x,y);

if (path_navigation != noone && path_exists(path_navigation)) {
    draw_set_color(c_red);
    draw_set_alpha(0.6);
    draw_path(path_navigation, x, y, false);
    draw_set_alpha(1);
	
	
	
	
	if mp_navigation!=noone {
	
	draw_set_alpha(0.3)
mp_grid_draw( mp_navigation.grid);
draw_set_alpha(1);
	} 
	
	
	
}


// Inherit the parent event
///event_inherited();

