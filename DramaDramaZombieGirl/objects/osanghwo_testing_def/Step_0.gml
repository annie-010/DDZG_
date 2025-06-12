//////
//Attack Type Detail
//
//attack 0 = Dist Attack; 
//attack 1 = CaC Attack;
//
//
//
//
//
//
if _hp<=0 {
	with(_collmask) {instance_destroy();}
	instance_destroy();}

var _bullet = opoisonedbullet_test;
var _melee = oEnemyTestDmg_00;


if !(_CurrentEnemieState==_EnumEnemieState._walk) {path_end();}
if _CurrentEnemieState!=_EnumEnemieState._attack00 {
if x<_target.x {image_xscale=1;} else if  x>_target.x {image_xscale=-1;} 
}


if _alreadyattack==true {
if _currentwait<_waittoattackgain {_currentwait+=1*(_deltatimeSec()) ////show_debug_message(string(_currentwait))
	
	} 
else if _currentwait>=_waittoattackgain 
{_alreadyattack=false; _currentwait=0;}
}



if _hurtred!=false { ///show_debug_message("_hurtred activo");
_hurtred=false;


if _CurrentEnemieState!=_EnumEnemieState._hurt && _CurrentEnemieState!=_EnumEnemieState._attack00 {
_CurrentEnemieState=_EnumEnemieState._hurt;
move_towards_point(x,y,0);
}
}







// Inherit the parent event
event_inherited();

_currentdistancetoplayer = distance_to_object(oPlayer); 


switch (_CurrentEnemieState) {
case _EnumEnemieState._inactive:
_CurrentStatePrint="Inactive";
sprite_index=spr_sanghwoo_stand;
break;



case _EnumEnemieState._stand:
_CurrentStatePrint="Stand";
sprite_index=spr_sanghwoo_stand;

if _currentdistancetoplayer>=500 {_CurrentEnemieState=_EnumEnemieState._stand;} //OUT OF CAMERA /
if (_currentdistancetoplayer<500 && _currentdistancetoplayer>32) && _choosedifsee==false {_CurrentEnemieState=choose(_EnumEnemieState._stand,_EnumEnemieState._walk); _choosedifsee=true; alarm[1]=120 }
if (_currentdistancetoplayer<32) && _choosedifsee==false {_CurrentEnemieState=choose(_EnumEnemieState._stand,_EnumEnemieState._attack01); _choosedifsee=true; alarm[1]=120} 
////if (_currentdistancetoplayer<100) && (_currentdistancetoplayer>=64 ) {_CurrentEnemieState=_EnumEnemieState._walk;}





/*

if _currentdistancetoplayer<_distsee {
	
	
	if _choosedifsee==false {
	_CurrentEnemieState=choose(_EnumEnemieState._walk,_EnumEnemieState._stand);
	_choosedifsee=true;}
	
	
	
	_CurrentEnemieState=_EnumEnemieState._walk;}



if _currentdistancetoplayer<_distreact {_CurrentEnemieState=_EnumEnemieState._walk;}
if _currentdistancetoplayer<=_distcacattack {_CurrentEnemieState=_EnumEnemieState._attack01;}
if  _currentdistancetoplayer>400 && _currentdistancetoplayer<=_distbulletattack {_CurrentEnemieState=_EnumEnemieState._attack00;}
*/
break;

case _EnumEnemieState._retreat:
    _CurrentStatePrint = "Retreat";
	
	if _currentdistancetoplayer<16 && !_alreadyattack {_CurrentEnemieState=_EnumEnemieState._attack01; image_index=0; _alreadyattack=true;}
	
	if _currentdistancetoplayer<250 && _choosedifsee==false {_CurrentEnemieState=choose(_EnumEnemieState._attack00,_EnumEnemieState._retreat); image_index=0; _choosedifsee=true; alarm[1]=120;}
	
	
sprite_index=spr_sanghwoo_walking;


var _dx, _dy , _dist, _angle, _retreat_x, _retreat_y, _retreat_dist, off, _pathto


	_pathto=path_add();
	_dx = x - oPlayer.x;
	_dy = y - oPlayer.y;
	_retreat_dist=32*20;
	_dist= point_distance(x,y,oPlayer.x,oPlayer.y);
	if (_dist==0) {_dist=1;}
	
	_angle= point_direction(x,y,oPlayer.x,oPlayer.y);
	
	
	if (found_path==false) {
	
for (var i = 0; i < 8; i++) {
	offset_angle = angle + i *45;
	_retreat_x = x + lengthdir_x(_retreat_dist, offset_angle);
	_retreat_y = y + lengthdir_y(_retreat_dist, offset_angle);
	
	
	if (mp_grid_path(global._currentgrid, _pathto, x,y, _retreat_x, _retreat_y, false)) {
		show_debug_message("se ha seleccionado un camino efectivo");
		found_path=true;  path=_pathto;	retreat_x=_retreat_x; retreat_y=_retreat_y;	
	}
}
}   else if (found_path==true) {
	            if (mp_grid_path(global._currentgrid, path, x, y, retreat_x, retreat_y, true)) {
                path_start(path, _retreatvel, path_action_stop, false);		
        // Revisión de si llegó al final del path
        if (abs(x - retreat_x) < 32 && abs(y - retreat_y) < 32) {
            path_end();
            path_delete(path);
            path = -1;
            found_path = false;
            _CurrentEnemieState = _EnumEnemieState._stand; 
			
			}
			
}
}

	if _currentdistancetoplayer>=700 {path_end(); _CurrentEnemieState = _EnumEnemieState._stand;}
	
	
	break;




case _EnumEnemieState._walk:

_CurrentStatePrint="Walk";
sprite_index=spr_sanghwoo_walking;



if _currentdistancetoplayer>500 {_CurrentEnemieState=choose(_CurrentEnemieState=_EnumEnemieState._stand,_EnumEnemieState._walk);} 
if _currentdistancetoplayer<500 {
	if _currentdistancetoplayer<500 && _currentdistancetoplayer>301 {}
if _currentdistancetoplayer<300 && _currentdistancetoplayer>250 && !_alreadyattack {_CurrentEnemieState=_EnumEnemieState._attack00; image_index=0; _alreadyattack=true;} 
	
	
	if _currentdistancetoplayer>150 && _currentdistancetoplayer<250 {
	
		_pathto=path_add();
	_dx = x - oPlayer.x;
	_dy = y - oPlayer.y;
	_retreat_dist=32*5;
	_dist= point_distance(x,y,oPlayer.x,oPlayer.y);
	if (_dist==0) {_dist=1;}
	
	_angle= point_direction(x,y,oPlayer.x,oPlayer.y);
	
	
	if (found_path==false) {
	
for (var i = 0; i < 8; i++) {
	offset_angle = angle + i *45;
	_retreat_x = x + lengthdir_x(_retreat_dist, offset_angle);
	_retreat_y = y + lengthdir_y(_retreat_dist, offset_angle);
	
	
	if (mp_grid_path(global._currentgrid, _pathto, x,y, _retreat_x, _retreat_y, false)) {
		show_debug_message("se ha seleccionado un camino efectivo");
		found_path=true;  path=_pathto;	retreat_x=_retreat_x; retreat_y=_retreat_y;	
	}
}
}   else if (found_path==true) {
	            if (mp_grid_path(global._currentgrid, path, x, y, retreat_x, retreat_y, true)) {
                path_start(path, _retreatvel, path_action_stop, false);		
        // Revisión de si llegó al final del path
        if (abs(x - retreat_x) < 32 && abs(y - retreat_y) < 32) {
            path_end();
            path_delete(path);
            path = -1;
            found_path = false;
            _CurrentEnemieState = _EnumEnemieState._stand; 
			
			}
			
}
}

	if _currentdistancetoplayer>=700 {path_end(); _CurrentEnemieState = _EnumEnemieState._stand;}
	
	}
	
	
	if _currentdistancetoplayer<150 && _currentdistancetoplayer>32 {
		
	path = path_add();
    if (mp_grid_path(global._currentgrid, path, x, y, oPlayer.x, oPlayer.y, 1))
    {path_start(path, _walkvel, 3, 0);}	
	} if _currentdistancetoplayer<32 && !_alreadyattack {_CurrentEnemieState=_EnumEnemieState._attack01; image_index=0; _alreadyattack=true;}  
	
	
}
//if _currentdistancetoplayer<=400 && _currentdistancetoplayer>=300 && !_alreadyattack {_CurrentEnemieState=_EnumEnemieState._attack00; image_index=0; }	
//if _currentdistancetoplayer<=16 && !_alreadyattack {_CurrentEnemieState=_EnumEnemieState._attack01; image_index=0; }
	
	
	
	
	
	
///if _currentdistancetoplayer<=_distcacattack && _alreadyattack==false {_CurrentEnemieState=_EnumEnemieState._attack01; image_index=-1;}
///if _currentdistancetoplayer>400 && _currentdistancetoplayer<=_distbulletattack && _alreadyattack==false {_CurrentEnemieState=_EnumEnemieState._attack00; image_index=-1;}
///if _currentdistancetoplayer>_distsee {_CurrentEnemieState=_EnumEnemieState._stand;}
break;



case _EnumEnemieState._hurt:
sprite_index=spr_sanghwoo_hurt;
_CurrentStatePrint="Hurt";
break;



case _EnumEnemieState._attack00:
_CurrentStatePrint="_attack00";
sprite_index=spr_sanghwoo_attack_00;
    if floor(image_index) == 3 {
        var dx = oPlayer.x - x;
        var dy = oPlayer.y - y;

        var dir = 0;

        if abs(dx) > abs(dy) {
            // Horizontal dominante
            if dx > 0 {
                dir = 0; // Derecha
            } else {
                dir = 2; // Izquierda
            }
        } else {
            // Vertical dominante
            if dy > 0 {
                dir = 1; // Abajo
            } else {
                dir = 3; // Arriba
            }
        }



        var _createdbullet = instance_create_layer(x, y, "_Entities", _bullet);
        _createdbullet._dirtomove = dir;
        _createdbullet._dmg = 5;
		_createdbullet.z=-90;
		_createdbullet._effect=oPlayer._effArray[12];
		_createdbullet=noone ;

		
	
		#region INCISO
		


		
		#endregion

		image_index=4;
    }
	
break;

case _EnumEnemieState._attack01:
_CurrentStatePrint="_attack01";


sprite_index=spr_sanghwoo_attack_01;
    if image_index == 2 {
        var dx = oPlayer.x - x;
        var dy = oPlayer.y - y;

        var dir = 0;

        if abs(dx) > abs(dy) {
            // Horizontal dominante
            if dx > 0 {
                dir = 0; // Derecha
            } else {
                dir = 2; // Izquierda
            }
        } else {
            // Vertical dominante
            if dy > 0 {
                dir = 1; // Abajo
            } else {
                dir = 3; // Arriba
            }
        }


	
        var _created_melee = instance_create_layer(x+ (20*sign(image_xscale)), y, "_Entities", _melee);
        _created_melee._dirtomove = dir;
        _created_melee._dmg = 5;
		_created_melee.z=-90;
		_created_melee._effect=oPlayer._effArray[12];
		_created_melee=noone ; 
		_alreadyattack=true;
		image_index=3;
	}




break;

}
