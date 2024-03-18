var _odarkcount = instance_number(oDark); 

var cam_act_x = camera_get_view_x(view_camera[0]);
var cam_act_y = camera_get_view_y(view_camera[0]);

Effect_grid = mp_grid_create(cam_act_x, cam_act_y, room_width / 32, room_height / 32, 32, 32);

var x_space = 0;
var y_space = 0;

if (_odarkcount < 999999) {
    repeat (room_height / 32) {
        repeat (room_width / 32) {
            if place_free(cam_act_x + x_space, cam_act_y + y_space) {
                instance_create_layer(cam_act_x + x_space, cam_act_y + y_space, "FRONT_EFFECTS", oDark);
            }
            x_space += 32;
        }
        x_space = 0; // Reiniciar para la siguiente fila
        y_space += 32;
    }
}

show_debug_message("Existen " + string(_odarkcount) + " Objetos de oscuridad ahora mismo");





















