
///var _keyT = keyboard_check_pressed(ord("T"));

switch (_isdialogactive) {

case true:
if _switched==false {
instance_deactivate_all(true);
instance_activate_object(oCameraResolution);

oCameraResolution._AudioLayersVolume._bg1=0.5;

_switched=true;

}

///("instance count : " + string(instance_count));
break;

case false:

instance_activate_all();
break;

}

/*


