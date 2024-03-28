pause=false;
_ActualHeadInventory = ds_list_create();

bg=noone;

global.earthquake=false;
global.Pause_Game=false;

#macro RES_W 1024   ////384
#macro RES_H 768  ///240 
#macro RES_SCALE 1 ///6
#macro CAM_SMOOTH 0.5 ////0.3

#macro GUI_W 1024  ///768
#macro GUI_H 768  ///480

view_enabled = true;
view_visible[0] = true;


player_xpause=0;
player_ypause=0;


///////////VARIABLES QUE LUEGO SE MOVERÁN A QUIEN CONTROLE ESTADOS DEL SISTEMA

boss_count_act=0;  
boss_count_time=0
Enemy_life=false;
Actual_BOSS=noone;


enum SYSTEMSTATES {
Initgame_System,
RestartRoom_System,
EndGame_System,
}

ACTUALSYSTEMSTATE=SYSTEMSTATES.Initgame_System;


alphaTrans = 0;

if instance_exists(oCameraFollow){
target_x = oCameraFollow;
target_y  =oCameraFollow;}

hp=0;




globalvar camera, vx, vy;
camera = camera_create_view(0, 0, RES_W, RES_H);
vx = camera_get_view_x(camera);
vy = camera_get_view_y(camera);

view_set_camera(0, camera);

window_set_fullscreen(false); ////TRUE
window_set_size((RES_W * RES_SCALE), (RES_H * RES_SCALE));
surface_resize(application_surface, (RES_W * RES_SCALE), (RES_H * RES_SCALE));

display_set_gui_size(GUI_W, GUI_H);
display_reset(0, true);

var display_width = display_get_width();
var display_height = display_get_height();

var window_width = RES_W * RES_SCALE;
var window_height = RES_H * RES_SCALE;

////window_set_position((display_width / 2 - window_width / 2), (display_height / 2 - window_height / 2));

display_reset(0, true);
