var hbar = (room_width - 256);
draw_sprite_ext(srectanglemenugui, 0, hbar, 0, 1, 1, 0, c_white, 0.5);
draw_set_color(c_white);
draw_set_font(fnt_default_16);
var str = string_hash_to_newline("Drama drama #Zombie Girl");
draw_text((hbar + 16), room_height / 2, str);
draw_set_font(fnt_default_08);
draw_text((hbar+16),(room_height/2)+64,"Comp. # 0.0.0.03");
draw_set_font(fnt_default_12);

for (var _i = 0; _i < array_length(_menu); _i++) {
    draw_text((hbar + 32), ((room_height / 2) + 178) + (32 * _i), _menu[_i]);
    ///show_debug_message("_i : " + string(_i));
}


draw_sprite_ext(_sprarrow,0,hbar,((room_height / 2)+170)+(32*_arrowpos),1,1,0,c_white,1);