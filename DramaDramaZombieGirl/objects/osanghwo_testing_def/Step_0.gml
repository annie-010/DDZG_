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


if !(_CurrentEnemieState==_EnumEnemieState._walk) {path_end();}
if _CurrentEnemieState!=_EnumEnemieState._attack00 {
if x<_target.x {image_xscale=1;} else if  x>_target.x {image_xscale=-1;} 
}


if _alreadyattack==true {
if _currentwait<_waittoattackgain {_currentwait+=1*(_deltatimeSec()) show_debug_message(string(_currentwait))} 
else if _currentwait>=_waittoattackgain 
{_alreadyattack=false; _currentwait=0;}
}



if _hurtred!=false { show_debug_message("_hurtred activo");
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

if _currentdistancetoplayer<_distsee {_CurrentEnemieState=_EnumEnemieState._walk;}
if _currentdistancetoplayer<_distreact {_CurrentEnemieState=_EnumEnemieState._walk;}


break;

case _EnumEnemieState._retreat:
    _CurrentStatePrint = "Retreat";
    sprite_index = spr_sanghwoo_walking;
	

  path_start(path,1,path_action_stop , false);
  
  
  
  
  
  if (path != noone) {
    var num_points = path_get_number(path);
    if (num_points > 0) {
        var final_x = path_get_point_x(path, num_points - 1);
        var final_y = path_get_point_y(path, num_points - 1);

        if (abs(x - final_x) < 32 && abs(y - final_y) < 32) {
           /// path_end();
           // path_delete(path);
           // path = noone;
        }
    }
}
  
  
  
  
  

break; 



case _EnumEnemieState._walk:

_CurrentStatePrint="Walk";
sprite_index=spr_sanghwoo_walking;
path = path_add();
    if (mp_grid_path(global._currentgrid, path, x, y, oPlayer.x, oPlayer.y, 1))
    {path_start(path, _walkvel, 3, 0);}	








if _currentdistancetoplayer<=_distcacattack && _alreadyattack==false {  _CurrentEnemieState=_EnumEnemieState._attack00; image_index=0; }
if _currentdistancetoplayer>_distsee {_CurrentEnemieState=_EnumEnemieState._stand;}
break;



case _EnumEnemieState._hurt:
sprite_index=spr_sanghwoo_hurt;
_CurrentStatePrint="Hurt";
break;



case _EnumEnemieState._attack00:
_CurrentStatePrint="_attack00";
sprite_index=spr_sanghwoo_attack_00;
    if image_index == 3 {
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
        _createdbullet._dmg = 0;
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
break;

}
