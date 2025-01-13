if _actionated!=false {
if _currentalphacount<1 {
_currentalphacount+=0.01;}
draw_sprite_ext(spr_blackfade_filter,0,_viewx,_viewy,1,1,0,c_white,_currentalphacount);
oPlayer._CurrentPlayerState =_EnumPlayerState._dialog; 
}


/*

_viewx = camera_get_view_x(camera);
_viewy = camera_get_view_y(camera);