/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

draw_set_color(c_white);
draw_set_alpha(1);
draw_sprite(sprPlayerShadowFront,image_index,x,y-zfloor);



///if zfloor!=0 {draw_sprite_ext(sprite_index,image_index,x,y-z+3,image_xscale,1,0,c_white,1);} else {
///	draw_sprite_ext(sprite_index,image_index,x,y-z+3-zfloor,image_xscale,1,0,c_white,1);
///}

draw_set_alpha(1);
///draw_text(x,y-25,"Z_ACTUAL = " + string(z));
//draw_text(x,y-0,"Z_FLOOR = " + string(zfloor));
///draw_text(x-25,y-50,depth);

draw_sprite_ext(sprite_index,image_index,x,(y-(zfloor+(z*2))),1,1,0,c_white,1);
///draw_text(x,y-200,"zTotal" + string(zfloor+z));
//draw_text(x-25,y-50,"Floor + z =" + string(zfloor + z));
