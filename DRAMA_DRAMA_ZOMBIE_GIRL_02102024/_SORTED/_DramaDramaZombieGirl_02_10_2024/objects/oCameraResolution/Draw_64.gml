
draw_sprite_ext(spr_crt_filter,0,_viewx,_viewy,1,1,0,c_white,0.2);
draw_set_color(c_black);
draw_set_font(fnt_default_16);
draw_text(15,15,"_currentSecondTime : " + string(floor(global._gamesecondsTranscurred)));


if _usedfade==false && _usefade==true {

switch(_fadetype) {

case "_in" :
_alphatodraw-=.1;
break;


case "_out" :
_alphatodraw+=.1;
break;

}

_usedfade=true;
if _alphatodraw<0 or _alphatodraw>1 {
_usedfade=true;
}
}
///show_debug_message("alpha : " + string(_alphatodraw));



///true;



///_detaltimeSec

if instance_exists(ocinematicctrlsystem) {
if ocinematicctrlsystem._useblack==true {
draw_sprite_ext(spr_blackfade_filter,0,_viewx,_viewy,1,1,0,c_white,1);
} else if ocinematicctrlsystem._useblack==false {} }