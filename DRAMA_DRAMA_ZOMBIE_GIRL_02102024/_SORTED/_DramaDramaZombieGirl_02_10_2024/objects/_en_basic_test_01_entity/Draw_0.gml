/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Inherit the parent event
event_inherited();
var _target = oPlayer;
var _dist=floor( point_distance(x,y,_target.x,_target.y));
//draw_sprite_ext(sprite_index,image_index,x,(y+z),1,1,0,c_white,1);
///draw_self();

///draw_sprite_ext(mask_index,0,x,y,1,1,0,c_white,1);
draw_set_font(fnt_default_16);
draw_set_color(c_blue);
draw_text(x,y,"state : " + string(_CurrentStatePrint));

draw_text(x,y+64,"dist : " + string(_dist));
//draw_text(x,y+32,"hp : " + string(_hp));


if _islookingtoplayer!=false {
	var col = make_colour_hsv(100, 145, 255);
image_blend=col;///make_colour_hsv(255, 255, random(255));
}

