
draw_sprite_ext(sprite_index,image_index,x,(y+z)+zfloor,image_xscale,image_yscale,0,c_white,1);


draw_set_font(fnt_default_12);
draw_text(x,y+32,"z = " + string(z));
draw_text(x,y+48,"zfloor = " + string(zfloor));
draw_text(x,y+64,"zfloor_last = " + string(zfloor_last));
draw_text(x,y+98,"climb_cap = " + string(_currentclimbcapacity));




// Inherit the parent event
///event_inherited();

