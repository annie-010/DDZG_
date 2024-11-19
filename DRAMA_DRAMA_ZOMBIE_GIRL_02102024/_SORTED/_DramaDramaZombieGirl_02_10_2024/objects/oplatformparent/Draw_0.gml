



draw_sprite_ext(sprite_index,image_index,x,(y+z),image_xscale,image_yscale,0,c_white,1);
draw_set_font(fnt_default_08);



// Obtener la cadena del id de la instancia
var text = string(id);

// Posición inicial de dibujo
var start_x = x - 32;
var start_y = y + 32;

// Configuración de límite de caracteres por línea
var max_chars_per_line = 10;

// Obtener la longitud de la cadena
var text_length = string_length(text);

// Bucle para dibujar el texto en líneas
for (var i = 0; i < text_length; i += max_chars_per_line) {
    // Extraer una porción de la cadena con el límite de caracteres
    var text_segment = string_copy(text, i + 1, max_chars_per_line);
    
    // Dibujar esa porción en la posición correspondiente
    draw_text(start_x, start_y + (i div max_chars_per_line) * 16, text_segment);
}









///draw_text(x - 32, y + 32, custom_id);
/*
if !instance_place(x,y,oPlayer) {
} else if instance_place(x,y,oPlayer) {

}


*/


if _surface != noone {
    // Ajuste del alpha de la sombra en función del valor total de _surface
    var max_surface = -448;  // Altura máxima de _surface
    var shadow_alpha = clamp(1 - (abs(_surface) / abs(max_surface)), 0.1,.5); // Ajusta el alpha según _surface

    // Dibuja la sombra de la superficie con alpha variable
    draw_sprite_ext(_surface_spr, 0, x, bbox_top + _surface, image_xscale, image_yscale, 0, c_white, shadow_alpha);
}










///draw_sprite(mask_index,0,x,y+z);
if z!=0 {

draw_sprite_ext(_shadow_spr,0,x,y,1,1,0,c_white,1);}
draw_set_color(c_black);
draw_set_font(fnt_default_08);
draw_text(x-32, y+64,"_surface : " + string(_surface));
draw_set_font(fnt_default_12);
/*
draw_set_color(c_purple);
draw_text(x,y,"depth : "+ string(depth));

draw_set_color(c_white);

