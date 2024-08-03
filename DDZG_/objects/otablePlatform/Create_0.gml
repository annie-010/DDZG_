/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

_platformType = "Platform";
vel_=1.5;
z = 32;
_thickness=16;
draw_set_color(c_blue);
_platformtop=(y-(z+16));
_moving = false;
_automaticfloor=false;
_automaticfloordir=noone;

_dir=noone;
_returnway=false;
_timetoReturn=320;
_countTimer=_timetoReturn;
_onPlatform=false;
///_shadow=_sprmovefloorshadow;
_shadow=false;
_oshadow=instance_create_layer(x,y,"INSTANCES",ofloatingPlatformShadow);

////TANGIBLE/SOLID///
_tangible=false;
_timetoTangible=noone;


switch _moving {

case true: 
break;



case false:
 exit; break;}













