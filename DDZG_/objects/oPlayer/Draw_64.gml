#region DIBUJAR MENU


switch(_menuOpened) {

case true:

var cam = view_get_camera(0);
var cw = camera_get_view_width(cam);
var ch = camera_get_view_height(cam);
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);


//camera_set_view_pos(cam, mouse_x - (cw / 2), mouse_y - (ch / 2));

draw_sprite(sprItemMenuwhiteblack,0,630,124);
break;


case false:



break;

}



#endregion 