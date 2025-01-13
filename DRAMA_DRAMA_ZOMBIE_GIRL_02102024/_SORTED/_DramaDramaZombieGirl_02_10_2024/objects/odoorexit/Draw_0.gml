draw_self();
if (mask_index != -1) {
    draw_sprite_ext(mask_index, 0, x, y, 1, 1, 0, c_white, 0.5);
}

/*
draw_set_alpha(0.7); 
draw_set_color(c_red); draw_rectangle((x - (sprite_width / 2)), (y + 32), (x + (sprite_width / 2)), (y + 48), false); 
draw_set_color(c_blue); draw_rectangle((x - (sprite_width / 2)), (y - 61), (x + (sprite_width / 2)), (y - 77), false); 
draw_set_color(c_green); draw_rectangle((x - (sprite_width / 2)), y, (x + (sprite_width / 2)), (y - 29), false); 
draw_set_alpha(1); draw_set_color(c_white);



// Restaurar configuración de dibujo
draw_set_alpha(1); // Restablecer alpha a 1
draw_set_color(c_white); // Restablecer color a blanco



