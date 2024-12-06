//

/*
if window_get_fullscreen() {
		display_set_gui_size(720,360);
}
*/



if window_get_fullscreen()
{
/////show_debug_message("Fullscreen is ON");
var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();

// Mostrar en la consola
/////show_debug_message("GUI Width: " + string(gui_width));
/////show_debug_message("GUI Height: " + string(gui_height));
   
}
else
{
/////show_debug_message("Fullscreen is OFF");
}




















_dialogSystem("_instead",_text);



/*
switch (_isdialogactive) {

case true:

break;


case false:
break;



}
