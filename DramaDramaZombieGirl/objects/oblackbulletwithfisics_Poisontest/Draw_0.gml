if sprite_index!=noone {draw_sprite_ext(sprite_index,image_index,x,y+z,1,1,0,c_white,1);}
if z!=0 {draw_sprite_ext(spr_ch_saki_shadow,0,x,y+floorZ,1,1,0,c_white,.5);
	draw_text(x,y+z,"z : " + string(z));}










// Calcula los límites en el eje y en base a z y _colheight
var _top = y + z - _colheight; // Límite superior en el eje z
var _bottom = y + z;           // Límite inferior en el eje z

// Dibuja el rectángulo representando el rango en z
draw_set_color(c_red); // Puedes cambiar el color si prefieres
draw_rectangle(x - 16, _top, x + 16, _bottom, false); // `false` para no rellenar