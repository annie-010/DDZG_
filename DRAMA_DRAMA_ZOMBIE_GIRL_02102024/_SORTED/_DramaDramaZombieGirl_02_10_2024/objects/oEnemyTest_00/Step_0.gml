






// Inherit the parent event
event_inherited();
/////

switch(_CurrentLifeState) {
	 
	case _PossibleEntityLifeState._Alive:
	
	
	if _hp<=0 {instance_destroy();}
	
	
	
	switch (_CurrentActiveState) {
	
	case _PossibleEntityActiveState._Active:
var _distance = distance_to_point(oPlayer.x,oPlayer.y);
var _result = _raycast(x, y, oPlayer.x, oPlayer.y,tilemap);	
var _playerattackcol = collision_rectangle(x-32,y-192,x+32,y,oPlayerWeapon,true,true);



	if _canattack==false {
////
//////show_debug_message("_current attack time : " + string(_currentcanattackwait));
if _currentcanattackwait<_timetocanattack {
_currentcanattackwait+=_deltatimeSec();
}if _currentcanattackwait>=_timetocanattack {
_canattack=true; 
_currentcanattackwait=0;

if _CurrentEnemieState==_EnumEnemieState._attack00 {
_CurrentEnemieState=_EnumEnemieState._stand;
image_speed=1;
 _generatedcol=false;
}
}} 

	
	
	
	
	
	
	
	
	
	
	switch(_CurrentEnemieState) {
	
	
	case _EnumEnemieState._inactive:
	break;
	
	
	case _EnumEnemieState._stand:
	sprite_index=_spr_en_knife_stand;
	
	if _distance<=768 {_CurrentEnemieState=_EnumEnemieState._walk;}	
	break;
	
	
	
	case _EnumEnemieState._walk:
	if instance_exists(oPlayer) {
   var path = path_add();
    if (mp_grid_path(global._currentgrid, path, x, y, oPlayer.x, oPlayer.y, 1))
    {	
		if x>oPlayer.x {image_xscale=-1;} else {image_xscale=1;}
		sprite_index=_spr_en_knife_walk;
		path_start(path, 3, 3, 0); }	
}
if (_distance<=384 && _result.hit_instance==noone) && (_canattack == true) {_CurrentEnemieState=_EnumEnemieState._attack00; image_index=0;  image_speed=1;  path_end(); }
if _distance>768 {_CurrentEnemieState=_EnumEnemieState._stand; path_end()}
break;
	
	
	
	
	case _EnumEnemieState._attack00:
sprite_index = _spr_en_knife_attack;
path_end();

if (_canattack == true) {
	if _generatedcol==false {
	    if (_instancedmg == noone) {
        ///show_debug_message("Creando instancia de daño");
        _instancedmg = instance_create_layer(x, y, "_Entities", oEnemyTestDmg_00);
        _instancedmg._owner = id;
		_instancedmg._dmg=(choose(1,2,1,1));
    }
	_generatedcol=true; 
	} else if _generatedcol==true {}
	


    if (_target_x == 0 && _target_y == 0) {
        _target_x = _result.ray_end_x;
        _target_y = _result.ray_end_y;
        //////show_debug_message("Objetivo establecido -> x: " + string(_target_x) + ", y: " + string(_target_y));
    }

    if (floor(image_index) == 5) {
        image_speed = 0.1;
        var move_direction = point_direction(x, y, _target_x, _target_y);
        var dx = lengthdir_x(move_speed, move_direction);
        var dy = lengthdir_y(move_speed, move_direction);
        x += dx;
        y += dy;
      /*  ///show_debug_message("Movimiento -> x: " + string(x) + ", y: " + string(y) +
                           " | Objetivo -> x: " + string(_target_x) + ", y: " + string(_target_y));
				*/		   
						   
			if (abs(x - _target_x) <= 32 && abs(y - _target_y) <= 32) {
    image_index = 6;
}			   
						   
			if _playerattackcol {//////show_debug_message("Golpeo en el counter");
				oCameraResolution._earthquake=true;
				
				        if (instance_exists(_instancedmg)) {
            with (_instancedmg) {
                instance_destroy();
            }
        }
				
				
				
				}			   
						   
    }

    if (floor(image_index) >= 6) {
		if _playerattackcol {//////show_debug_message("Golpeo en la debilidad");
			}	
        _target_x = 0;
        _target_y = 0;
        _canattack = false;
        move_speed = choose(15,40,60,20);
        if (instance_exists(_instancedmg)) {
            with (_instancedmg) {
                instance_destroy();
            }
        }
        _instancedmg = noone;
        image_speed = 0;
        image_index = 6;
		
    }
	
	
	
	
	if image_index==6 or image_index==5 {
	var _colwithplayer = place_meeting(x,y,oPlayerMask);
	
	if _colwithplayer {
	_effInvulnerability._state=true;
	}
	
	}
	
	
	
	
}
break;}
	
	break;
	
	
	case _PossibleEntityActiveState._Inactive:
	break;
	}
	
	
	
	break;
	
	
	case _PossibleEntityLifeState._Dead:
	break;
	
	

}


///_CurrentTangibleState = _PossibleEntityTangibleState._Tangible;

/*
enum _EnumEnemieState {_inactive,_stand,_walk,_run,_menu,_jump,_backdash,_attack00,_hurt,_counter,_dialog}
_CurrentEnemieState = _EnumPlayerState._inactive; 
_CurrentStatePrint="Noone";
///alarm_set(0,30);
