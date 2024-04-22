/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

///draw_self();
draw_set_color(c_blue);





///draw_sprite(_sprmovefloorshadow,0,x,y);//+16);

draw_sprite(sprite_index,0,x,y-(z-16));
draw_set_alpha(0.3);
//var platformtop=(y-(z+16));
//draw_rectangle(x-32,_platformtop,x+32,_platformtop+64,false);
draw_text(x-25,y+25,"depth  : " + string(depth));
draw_text(x-25,y+50,"z : " + string(z));
draw_set_alpha(1);
draw_set_color(c_white);

///draw_sprite(mask_index,0,x,y)


 var _player_depth = oPlayer.depth;

    // Forzar la capa de dibujo de la sombra a un depth mayor que el del jugador
   /// layer_force_draw_depth(layer_get_id("INSTANCES"), _player_depth + 1);
//layer_force_draw_depth(true,_player_depth-20);
    // Dibujar la sombra
    draw_sprite(_sprmovefloorshadow, 0, x, y);






















