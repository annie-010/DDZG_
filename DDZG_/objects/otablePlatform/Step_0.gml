/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
///show_debug_message("Count : " + string(_countTimer));
var _playerCol = instance_place(x,y,oPlayer);
if 	_automaticfloor==true && _playerCol!=noone {
var _playerColz= _playerCol.z;
var _playerColfloorz = _playerCol.zfloor;
if z==_playerColfloorz && _automaticfloordir!=noone {
	///show_debug_message("LISTO PARA MOVER");
switch (_automaticfloordir) {

case "toRight":
oPlayer.x+=3;
break;

case "toUp":
oPlayer.y-=3;
break;

case "toLeft":
oPlayer.x-=3;
break;


case "toDown":
oPlayer.y+=3;
break;



 
 
case noone:
break;

}
} else if z>_playerColz {show_debug_message("PLAYER, BAJO LA PLATAFORMA")
	
	
	switch (_automaticfloordir) {
	
	case "toRight": oPlayer.x=bbox_right+5;
	break;
	
	case "toUp": oPlayer.y=bbox_top-5;
	break;
	
	
	case "toLeft": oPlayer.x=bbox_left-5;
	break;
	
	case "toDown": oPlayer.y=bbox_bottom+5;
	break;
	
	}
	
	
	
	}
	
	
	
	}

if instance_exists(oPlayer) { var _player_depth = oPlayer.depth;}

 
 
switch (instance_exists(_oshadow)) {

case true: _oshadow.sprite_index=_sprmovefloorshadow; _oshadow.x=x; _oshadow.y=y; _oshadow.depth=depth+10;
///show_debug_message("");
break;


case false:
break;


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



switch (_tangible) {

case true:
break;



case false:
break;


}



if keyboard_check(vk_shift) {
show_debug_message("Automatic Floor : " + string(_automaticfloor) + "Au Fl Dir :" + string(_automaticflordir));}









