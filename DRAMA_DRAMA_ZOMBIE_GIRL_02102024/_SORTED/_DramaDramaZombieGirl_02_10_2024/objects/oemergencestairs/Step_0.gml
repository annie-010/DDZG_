if _type!=noone {

switch (_type) {

case "_up" :
image_index=0;
break;


case "_down" :
image_index=1;
break;


}
}


var _instanceplayerColl = place_meeting(x,y,oPlayer);

if _instanceplayerColl {

depth=9999;///=_instanceplayerColl.depth+4;

}