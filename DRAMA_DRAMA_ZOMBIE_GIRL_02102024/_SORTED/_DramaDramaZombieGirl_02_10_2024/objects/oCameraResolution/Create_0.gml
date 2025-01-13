#macro VIEW_WIDTH 1152
#macro VIEW_HEIGHT 864 
#macro GUI_WIDTH 1152
#macro GUI_HEIGTH 864
#macro CAMERA_TARGET oCameraTarget

_usefade=false;
_fadetype=noone;
_usedfade=false;
_fadetime=0;
_fadevalue=2;
_alphatodraw=1;
_useblack=false;
    


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
	






depth=-9999999999999999999;














































/*
function _fadescreen(_type,_time,_initialalpha){
	
	static _duration = _time;
	static _alphatodraw = _initialalpha;
	
	
	show_debug_message("time : " + string(_time));
	show_debug_message("initial alpha :" + string(_initialalpha))	
	switch(_type) 
	{
		case 0 :
		
			_alphatodraw-=.1;
			show_debug_message("type fade : In");
		
		break;
		
		
		case 1:
		_alphatodraw+=.1;
					show_debug_message("type fade : Out");
		break;
	}


draw_sprite_ext(spr_blackfade_filter,0,0,0,1,1,0,c_black,_alphatodraw);
}
