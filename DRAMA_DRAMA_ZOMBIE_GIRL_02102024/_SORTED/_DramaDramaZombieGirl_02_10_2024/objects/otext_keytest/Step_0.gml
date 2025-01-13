var _keyi = keyboard_check_pressed(ord("I"));
if instance_exists(oPlayer) {
var _dist = distance_to_point(oPlayer.x,oPlayer.y);

if _keyi {
_keyi=false;

if _dist<=32 {




var _text = instance_create_layer(x,y,"SYSTEM",otext_parent);
_text._text[0]=_msg;


}

}





}




