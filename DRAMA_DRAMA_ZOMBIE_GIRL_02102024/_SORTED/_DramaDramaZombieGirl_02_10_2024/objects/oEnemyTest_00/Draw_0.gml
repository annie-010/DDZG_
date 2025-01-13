/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
event_inherited();
///draw_sprite_ext(mask_index,0,x,y,1,1,0,c_white,.5);

// Inherit the parent event


// Realizar el raycast
var result = _raycast(x, y, oPlayer.x, oPlayer.y,tilemap);

// Dibujar el láser completo (hasta 125 píxeles más allá del jugador)
draw_set_color(c_red);
draw_line(x, y, result.ray_end_x, result.ray_end_y);
///draw_text(x,y+16,"image_index : " + string(image_index));
// Opcional: Dibujar el punto de impacto (si hay colisión)
if (result.hit_instance != noone) {
    draw_set_color(c_yellow);
    draw_circle(result.hit_x, result.hit_y, 3, false);
}


if _atkrecieved!=noone {

///draw_text((x-64)*image_xscale,y,_atkrecieved);

}
