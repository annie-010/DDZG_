var _target = oPlayer;
var _dist=floor( point_distance(x,y,_target.x,_target.y));

_possiblewaytoplayer = path_add();
 _grid = _mpgrid_navigation3d(700,0);




if _alreadyattack==true {
_currentwaitnumber+=_deltatimeSec();
///show_debug_message("wait : " + string(_currentwaitnumber));
if _currentwaitnumber>=5 {
///show_debug_message("enemy attack avaliable");
 _alreadyattack=false;
_alreadycreateddmg=false;
 _currentwaitnumber=0;
 
}

}


if _hp<=0 {
	with(_collmask) {instance_destroy();}
	instance_destroy();}













if instance_exists(_target) {
if _CurrentEnemieState!=_EnumEnemieState._attack00 {
if x<_target.x {image_xscale=1;} else if  x>_target.x {image_xscale=-1;} 
}







/*
if _islookingtoplayer==true {
	show_debug_message("current value to react : " + string(_currentreactvalue));
if _currentreactvalue<_valuetoreact {_currentreactvalue+=_deltatimeSec();}
else if _currentreactvalue>=_valuetoreact {_alreadyreacted=true;}

_currentreactvalue=0;
_valuetoreact=15;


}














*/

}


event_inherited();






switch (_CurrentEnemieState) {
	
	case _EnumEnemieState._inactive:
	sprite_index=spr_HanamariStand;
	image_speed=1;
	_CurrentStatePrint="Inactive";
	path_end();
	break;


	case _EnumEnemieState._hurt:
	path_end();
	//_alreadyattack=false;
	sprite_index=spr_HanamariHurt;
	image_speed=1;
	_CurrentStatePrint="Hurt";
	break;






	case _EnumEnemieState._stand:
	path_end();
	sprite_index=spr_HanamariStand;
	image_speed=1;
	//move_towards_point(x,y,0);
	_movetowardsvel=0;
	_CurrentStatePrint="Stand";
	
	switch (_alreadyreacted) {
	
	case false:
	
	if _dist>0 {
		
		
		/*
_mintolook=700;
_mintoreact=600;
_mintofollow=500;
_mintofigthfollow=200;
_mintoattack=70;
	*/


		
		
		if _dist>_mintolook {_islookingtoplayer=false;
			_currentreactvalue=0;
			}
		
		
		
		if _dist>_mintofollow && _dist<=_mintolook{ ///menor a 700 a mayor a 500 Lo detecta pero no lo sigue
		_islookingtoplayer=true;
		}
		
		
		
		if _dist>_mintoattack && _dist<_mintofollow {  ///menor a 500 a mayor a 70 Lo sigue en el evento Walk
		_CurrentEnemieState= _EnumEnemieState._walk;}
		
		
		if (_dist>=0 && _dist<_mintoattack) &&_alreadyattack!=true {
_CurrentEnemieState= _EnumEnemieState._attack00; image_index=-1; _attackprint=choose("_frontPunch","_crunchPunch","_crunchThrow"); image_index=-1; _alreadyattack=true;

		//_CurrentEnemieState= _EnumEnemieState._retreat;
		}
		
		///if _dist>_mintoattack && _dist<_mintofigthfollow {}
		
		
		
	}
	
	
	break;
	
	
	case true:
	break;


	}
	


	
	
	
	
	
	
	
	break;
	
	
	
	case _EnumEnemieState._walk:
	_CurrentStatePrint="Walk";
	
	
	///move_towards_point(_target.x,_target.y,_movetowardsvel);
	
	/*

	*/
	
	
	
	
	
	
	
	
	

var _targetx=_target.x;
var _targety=_target.y;



	if (mp_grid_path(_grid, _possiblewaytoplayer, x,y, _targetx, _targety, false)) {
	
		if _dist>0 {
	
	if _dist>_mintofigthfollow && _dist<=_mintofollow { 
		_movetowardsvel=2;
		sprite_index=spr_HanamariWalk;
		
		}
	
	
	if _dist>_mintoattack && _dist<=_mintofigthfollow {
		sprite_index=spr_HanamariFigthwalk;
		_movetowardsvel=1;}
	
	if (_dist>=0	&& _dist<_mintoattack) && _alreadyattack==true {_CurrentEnemieState= _EnumEnemieState._retreat; path_end();} 
	//if (_dist>=0	&& _dist<_mintoattack) {} 
	///if _dist>=_mintolook {_CurrentEnemieState= _EnumEnemieState._stand; path_end();} 
	
	

	
	
	}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	

	
	
	var path = path_add();
	if _dist>0 {
	
    if (mp_grid_path(_grid, _possiblewaytoplayer, x,y, _targetx, _targety, false)) 
    {path_start(path, _movetowardsvel, 3, 0);}	
	
	
	
	
	}
	
	
	
	

	

	if abs(_dist - _mintoattack) <= 10 && _alreadyattack==false  {
    ///show_debug_message("depuración");
	_CurrentEnemieState= _EnumEnemieState._attack00; image_index=-1; _attackprint=choose("_frontPunch","_crunchPunch","_crunchThrow"); image_index=-1; _alreadyattack=true;


}


	image_speed=1;
	break;
	
	
	

	
	
	
	case _EnumEnemieState._attack00:
	_CurrentStatePrint = "_Attack 00";
	path_end();
	 move_towards_point(x,y,0); 
	switch(_attackprint) 
	{
	case "_frontPunch":
	sprite_index=spr_HanamariFrontPunch;
	
	switch(floor(image_index)) {
	case 1: 	if _alreadycreateddmg==false {
		var _punch = instance_create_layer(x+(64*image_xscale),(y-64),"_Entities",oEnemyTestDmg_00);
		_punch._dmg=choose(3,2,3,1,8);
		_punch._effect=oPlayer._effArray[15];
_punch._owner = id; _alreadycreateddmg=true;

}
	break;
}
	
	break;	
	
	
	case "_crunchPunch":
	sprite_index=spr_HanamariCrunchFrontPunchthrow;
	
	switch(floor(image_index)) {
	case 3: 	if _alreadycreateddmg==false {
		var _punch = instance_create_layer(x+(64*image_xscale),(y-64),"_Entities",oEnemyTestDmg_00); 	
		
		_punch._dmg=choose(3,2,3,1,8);
		_punch._effect=oPlayer._effArray[15];
_punch._owner = id; _alreadycreateddmg=true;}
	break;
}

	break;
	
	
	
	case "_crunchThrow":
	sprite_index=spr_HanamariCrunchFrontPunchthrow;
	switch(floor(image_index)) {
		
		
		
		
	case 3: 

	if _alreadycreateddmg==false {
		var _punch = instance_create_layer(x+(64*image_xscale),(y-64),"_Entities",oEnemyTestDmg_00);		
		_punch._dmg=choose(3,2,3,1,8);
		_punch._effect=oPlayer._effArray[15];
_punch._owner = id; _alreadycreateddmg=true;}

}	break;
	
	break;
	
	//"_crunchPunch","_crunchThrow"
	
	}
	
	
	break;
	
	
	
	case _EnumEnemieState._retreat:
	
	   _CurrentStatePrint = "Retreat";
_movetowardsvel=.5;
    // Calcular la posición de retirada basada en la dirección opuesta al jugador
    var angle_to_target = point_direction(x, y, _target.x, _target.y);
    var retreat_angle = angle_to_target + 180;
    var retreat_x = x + lengthdir_x(200, retreat_angle); // 200 píxeles hacia atrás
    var retreat_y = y + lengthdir_y(200, retreat_angle);

    // Crear un camino seguro usando el mp_grid
    var path = path_add();
    if (mp_grid_path(global._currentgrid, path, x, y, retreat_x, retreat_y, 1)) {
		sprite_index=spr_HanamariFigthwalk;
        path_start(path, _movetowardsvel, 3, 0);
    } else {
        // Si no hay camino disponible, buscar alternativas en las 4 direcciones cardinales
        var fallback_positions = [
            [x + 200, y],    // Derecha
            [x - 200, y],    // Izquierda
            [x, y + 200],    // Abajo
            [x, y - 200]     // Arriba
        ];

        for (var i = 0; i < array_length(fallback_positions); i++) {
            var pos_x = fallback_positions[i][0];
            var pos_y = fallback_positions[i][1];
            if (mp_grid_path(global._currentgrid, path, x, y, pos_x, pos_y, 1)) {
                path_start(path, _movetowardsvel, 3, 0);
                break; // Encontró una alternativa válida, salir del bucle
            }
        }
    }

if (_alreadyattack==false) {_CurrentEnemieState = _EnumEnemieState._walk; path_end();} 

///(_dist>_mintofigthfollow) or 
    // Cambiar al estado "stand" si ya está lo suficientemente lejos
    ///if (_dist > _mintofollow + 50) {
     //   _CurrentEnemieState = _EnumEnemieState._stand;
      //  path_end();
    //}
	break;

}

























if _hurtred!=false { show_debug_message("_hurtred activo");
_hurtred=false;


if _CurrentEnemieState!=_EnumEnemieState._hurt && _CurrentEnemieState!=_EnumEnemieState._attack00 {
_CurrentEnemieState=_EnumEnemieState._hurt;
move_towards_point(x,y,0);
}
}

/*

enum _EnumEnemieState {_inactive,_stand,_walk,_run,_menu,_jump,_backdash,_attack00,_hurt,_counter,_dialog}
_CurrentEnemieState = _EnumEnemieState._inactive; 
















/*
_mintoreact=250;
_mintofollow=200;
_mintofigthfollow=150;
_mintoattack=50;




/*

enum _EnumEnemieState {_inactive,_stand,_walk,_run,_menu,_jump,_backdash,_attack00,_hurt,_counter,_dialog}
_CurrentEnemieState = _EnumEnemieState._inactive; 