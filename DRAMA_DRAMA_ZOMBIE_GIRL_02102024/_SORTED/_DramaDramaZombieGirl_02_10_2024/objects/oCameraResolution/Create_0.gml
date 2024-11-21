#macro VIEW_WIDTH 1152
#macro VIEW_HEIGHT 864 
#macro GUI_WIDTH 1152
#macro GUI_HEIGTH 864
#macro CAMERA_TARGET oCameraTarget


_fadein=true;
_fadevalue=2;



global._gamesecondsTranscurred=0;

xto =x;
yto= y;
z=0;

_ambient_bgm_music=_bgm_Interludio;

globalvar camera, _viewx, _viewy;
camera = view_camera[0]; // Asignar la cámara activa (view 0)
_viewx = camera_get_view_x(camera);
_viewy = camera_get_view_y(camera);

_earthquake=false;




display_set_gui_size(GUI_WIDTH,GUI_HEIGTH);
///window_set_fullscreen(true);
if !instance_exists(okeyctrl) {
	instance_create_layer(0,0,"_Entities",oCameraTarget);
	instance_create_layer(0,0,"_Entities",okeyctrl)}
	
////global.surf_view = surface_create(view_wport[0], view_hport[0]);





depth=-9999999999999999999;


/*
if global.earthquake==true{

_viewx = camera_get_view_x(camera);
_viewy = camera_get_view_y(camera);

global.earthquake=false;}