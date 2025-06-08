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

_crtfilterOn=false;
	

tile_count=1600;
tile_size=8;
_shaderdraw=false;
	
_adjustvel= 0.01;



global._AudioLayersVolume = {



_bg0default : 5,
_bg1default : 5,
_bg2default : 5,
_front0default: 5,
_front1default: 5,
_front2default:5,
	
	

_bg0 : 1,
_bg1 : 1,
_bg2 : 1,

_front0 : 1,
_front1 : 1,
_front2 : 1
} 
	



	

global._lastroom="noone";

global.game_restarted=false;
global._gamesecondsTranscurred=0;

xto=x;
yto= y;
z=0;

_ambient_bgm_music=_bgm_Interludio;

globalvar camera, _viewx, _viewy, _cameractrl, cam;
camera = view_camera[0]; // Asignar la cámara activa (view 0)
cam = camera_create_view(0, 0, VIEW_WIDTH, VIEW_HEIGHT);
view_set_camera(0, cam);
_viewx = camera_get_view_x(cam);
_viewy = camera_get_view_y(cam);

/*

#macro VIEW_WIDTH 1152
#macro VIEW_HEIGHT 864 
#macro GUI_WIDTH 1152
#macro GUI_HEIGTH 864
#macro CAMERA_TARGET oCameraTarget


*/


_cameractrl=noone;
_adjustvel= 0.04;




_earthquake=false;



display_set_gui_size(GUI_WIDTH,GUI_HEIGTH);
///window_set_fullscreen(true);



switch(room) {

case r_menu_00:
break;


case r_playable_5th_neonoffice:
break;


case r_playable_exitcorridor_5th:
break;

case r_playable_1th_public:

///camera_set_view_pos(camera,6062,2836);




break;


}



	






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

*/


