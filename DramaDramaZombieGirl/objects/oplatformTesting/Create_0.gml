z=0;
_height=-16;
_colheight=64;
_shadow_spr=spr_square64shadow;
_surface=noone;
_surface_spr=spr_square64surfaceshadow;
_inuse=false;
alarm_set(0,1);
// En el evento Create de la plataforma
custom_id = string(id);
tileset_zid=false;

image_speed=0;


if (image_index >= 0 && image_index <= 11) {
    _height = -16 * (image_index + 1);
    
	//show_debug_message("image_index: " + string(image_index) + " → _height: " + string(_height));
} else {
    ///show_debug_message("image_index fuera de rango: " + string(image_index));
}