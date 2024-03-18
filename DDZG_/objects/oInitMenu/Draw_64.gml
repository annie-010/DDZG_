/// @description Inserte aquí la descripción
// Puede escribir su código en este editor



draw_set_alpha(0.5);
draw_set_color(c_black);
draw_rectangle(800,0,room_width,room_height,false);


draw_set_alpha(1);
draw_set_color(c_white);

var m;
for (m = 0; m < array_length_1d(menu); m += 1)
{
     draw_text((room_width/2-64) + 400 , (room_height/2)+ (150) + (m * space)+16, string_hash_to_newline(string(menu[m])))
}

draw_sprite(sprArrowMenu, 0,room_width/2-80 + (400), (room_height/2+10) +150 + mpos * space+16);














