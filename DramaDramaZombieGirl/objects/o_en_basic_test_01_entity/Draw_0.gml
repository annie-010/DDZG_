/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Inherit the parent event
event_inherited();
var _target = oPlayer;
var _dist=floor( point_distance(x,y,_target.x,_target.y));
//draw_sprite_ext(sprite_index,image_index,x,(y+z),1,1,0,c_white,1);
///draw_self();
/*
///draw_sprite_ext(mask_index,0,x,y,1,1,0,c_white,1);
draw_set_font(fnt_default_16);
draw_set_color(c_blue);
draw_text(x,y,"state : " + string(_CurrentStatePrint));

draw_text(x,y+64,"dist : " + string(_dist));
//draw_text(x,y+32,"hp : " + string(_hp));

*/
if _islookingtoplayer!=false {
	var col = make_colour_hsv(100, 145, 255);
image_blend=col;///make_colour_hsv(255, 255, random(255));
}



if _grid!=noone {

draw_set_alpha(0.3);
mp_grid_draw(_grid);
draw_set_alpha(1);
}




var bar_width = 80; // Ancho visual fijo de la barra de vida
var bar_height = 8;
var bar_x = x + 16;
var bar_y = y + z - 16;

// Dibujar fondo (barra roja)
draw_line_width_color(bar_x, bar_y, bar_x + bar_width, bar_y, bar_height, c_red, c_red);

// Calcular vida proporcional para barra verde
var life_ratio = _hp / _maxhp;
var life_width = bar_width * life_ratio;

// Dibujar barra verde proporcional
draw_line_width_color(bar_x, bar_y, bar_x + life_width, bar_y, bar_height, c_green, c_green);