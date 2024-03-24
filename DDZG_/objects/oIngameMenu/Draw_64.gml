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
draw_set_color(c_black);
draw_set_font(fnt_GUI_Title);
draw_text(664,100,"Menu");

draw_set_font(fnt_GUI_Text);

var startX = 664; // Posición inicial X para dibujar el texto
var startY = 192; // Posición inicial Y para dibujar el texto
var spacing = 64; // Espaciado entre cada opción de menú



switch _actualoptionmenu
{
case _optionsmenu.Select_:

for (var i = 0; i < array_length(_optionsmenuArray); i++) {
    draw_text(startX, startY + (i * spacing), _optionsmenuArray[i]);
}
draw_sprite(_arrow,0,(startX-32), (startY+16) + spacing * _mpos);



break;
}



break;


case false:



break;

}



#endregion 





