#macro VIEW_WIDTH 1024 
#macro VIEW_HEIGHT 768 
#macro GUI_WIDTH 1024 
#macro GUI_HEIGTH 768 
#macro CAMERA_TARGET oCameraTarget

xto =x;
yto= y;
z=0;

display_set_gui_size(GUI_WIDTH,GUI_HEIGTH);
///window_set_fullscreen(true);
if !instance_exists(okeyctrl) {
	instance_create_layer(0,0,"Instances",oCameraTarget);
	instance_create_layer(0,0,"Instances",okeyctrl)}