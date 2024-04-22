/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
///show_debug_message("Count : " + string(_countTimer));

var _playerOnplatform = collision_rectangle(x-32,_platformtop,x+32,_platformtop+64,oPlayer,true,true);
_platformtop=(y-(z+16));
if _playerOnplatform!=noone {

//show_debug_message("Colisionando");

}










switch _countTimer {

case 0:

switch _returnway  {

case true:  _returnway=false; _countTimer=_timetoReturn;
break;
 
case false: _returnway=true;  _countTimer=_timetoReturn;
break;



}

break;

}



switch _moving {

case true:



switch _returnway {

case true:


_countTimer--;



switch _dir {

case "_down":  y-=vel_; 
break;

case "_up": y+=vel_; 
break;
 
case "_left": x+=vel_;
break;

case "_right": x-=vel_; 
break;

}

break;

case false:



_countTimer--;




switch _dir {

case "_down":    y+=vel_;
break;

case "_up": y-=vel_; 
break;


case "_left": x-=vel_; 
break;


case "_right": x+=vel_; 
break;

}


break;


}



break;


case false: exit;
break;

}
















