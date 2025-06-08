var _dist = distance_to_point(oPlayer.x,(oPlayer.y));
var _key = keyboard_check_pressed(ord("I"));

if _dist<=64 {
if _key { ///show_debug_message("accionado texto");
	
var _texteffect=(instance_create_layer(x,y,"_Entities",otext_parent));
_texteffect.typeDialog="_instead";
_texteffect._text[0]=_txtsentence;
	
	
	
	_key=false;
	}

}

