var _keyi = KEY_I_PRESSED;
if instance_exists(oPlayer) {
var _dist = distance_to_point(oPlayer.x,oPlayer.y);

if _keyi {
_keyi=false;

if _dist<=32 && oPlayer._PlayerStatsManager.isMenuOpen==false {




var _text = instance_create_layer(x,y,"SYSTEM",otext_parent);
_text._text[0]=_msg;


}

}





}




