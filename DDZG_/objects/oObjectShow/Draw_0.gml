/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_set_color(c_red);

if sprite_index!=noone {draw_self();}


if ClothPos==ClothState.Front_ {draw_text(x,y+32,"EQUIP depth" + string(depth));}
if ClothPos==ClothState.Back_ {draw_text(x,y,"EQUIP depth" + string(depth));}






















