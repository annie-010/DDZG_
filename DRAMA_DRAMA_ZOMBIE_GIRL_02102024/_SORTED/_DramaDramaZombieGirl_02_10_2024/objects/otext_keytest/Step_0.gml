var _keyi = KEY_I_PRESSED;
if instance_exists(oPlayer) {
var _dist = distance_to_point(oPlayer.x,oPlayer.y);

if _keyi {
_keyi=false;

if _dist<=32 && oPlayer._PlayerStatsManager.isMenuOpen==false {




var _text = instance_create_layer(x,y,"SYSTEM",otext_parent);
_text._text[0]=_msg;
if _msg0!=noone {_text._text[1]=_msg0;}
if _msg1!=noone {_text._text[2]=_msg1;}
if _msg2!=noone {_text._text[3]=_msg2;}
if _msg3!=noone {_text._text[4]=_msg3;}
if _msg4!=noone {_text._text[5]=_msg4;}
if _msg6!=noone {_text._text[6]=_msg5;}
if _msg7!=noone {_text._text[7]=_msg6;}

switch (_type) {


case "_constant" : 
break;


case "_destoyaftertext" :
instance_destroy();
break;


case "_gifter":

switch(_gifttype) {


case "_head":

ds_list_add(oPlayerMenu._headEquipDsList,_gift);

break

case "_body":
ds_list_add(oPlayerMenu._chestEquipDsList,_gift);
break

case "_hand":
ds_list_add(oPlayerMenu._handEquipDsList,_gift);
break

case "_appareance":
break


case "_commoninventory":
break

case "_keyinventory":
break


case "_extrainventory":
break








}




/*


_gitftype = noone;
_giftamount = noone;
_gift = noone;



*/













instance_destroy();

break;


default : 

break;
}

}

}





}




