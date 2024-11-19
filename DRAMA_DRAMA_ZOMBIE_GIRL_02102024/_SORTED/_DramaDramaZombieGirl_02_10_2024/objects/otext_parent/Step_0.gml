
///var _keyT = keyboard_check_pressed(ord("T"));

switch (_isdialogactive) {

case true:
instance_deactivate_all(true);
///show_debug_message("instance count : " + string(instance_count));
break;

case false:
instance_activate_all();
break;

}

/*


