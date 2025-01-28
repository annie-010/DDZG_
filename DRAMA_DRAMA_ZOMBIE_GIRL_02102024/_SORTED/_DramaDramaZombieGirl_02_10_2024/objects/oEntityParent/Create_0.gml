///MACROS
#macro MOVE_SPEED_WALK_BASE 2
#macro MOVE_SPEED_RUN_BASE 4
#macro MOVE_SPEED_JUMP_BASE 10
#macro GRAVITY .60 
#macro IMAGESPEED_DEFAULT 1
#macro FLOORZ_DEFAULT 0

#macro STAT_VEL_BASE 1
#macro STAT_PHYSICATTACK_BASE 1
#macro STAT_SPECIALATTACK_BASE 1
#macro STAT_LUCKY_BASE  1
#macro STAT_DEFENSE_BASE 1
#macro STAT_SPECIALDEFENSE_BASE 1










///////////////////////////
///						///
///	Basic Enemies Stats ///
///						///
///						///
///////////////////////////


_hp=0;
_defphy=0;
_defesp=0;
_vel=0;
_atkphy=0;
_atkesp=0;



///////////////////////////
///						///
///	Default Enemies Stats ///
///						///
///						///
///////////////////////////



_defaulthp=_hp;
_defaultdefphy=_defphy;
_defaultdefesp=_defesp;
_defaultvel=_vel;
_defaultatkphy=_atkphy;
_defaultatkesp=_atkesp;












//////////////////////////
///					//////
/// Effect enemies e///
/////////////////////////

_currenthp=0;
_currentdefphy=0;
_currentdefesp=0;
_currentvel=0;
_currentatkphy=0;
_currentatkesp=0;




















floorZ=0;

//tilemap=pointer_null;
tilemap =noone/// layer_tilemap_get_id("Tiles_00_coll");
_colheight = 130;
image_speed=1;
_onPlatform=false;
depth=floor(-y/16); 
_canblade=true;
_sensorcoll=64;



function separate_from_wall() {
    var move_push_distance = 4; // Distancia para alejarse de la pared en caso de colisión

    // Verificación de colisiones en el eje X
    if place_meeting(x + move_x, y, tilemap) {
        x -= move_push_distance * sign(move_x); // Empuja en el eje X
    }

    // Verificación de colisiones en el eje Y
    if place_meeting(x, y + move_y, tilemap) {
        y -= move_push_distance * sign(move_y); // Empuja en el eje Y
    }
	
	
	
	
	
	
	
    if place_meeting(x + move_x, y, olimitwallparent) {
        x -= move_push_distance * sign(move_x); // Empuja en el eje X
    }

    // Verificación de colisiones en el eje Y
    if place_meeting(x, y + move_y, olimitwallparent) {
        y -= move_push_distance * sign(move_y); // Empuja en el eje Y
    }	
	
	
	
	
	
	
	

	var x_doorcoll = instance_place(x + move_x, y, odoor);
	var y_doorcoll = instance_place(x, y + move_y, odoor);
	

	
	    if x_doorcoll!=noone {
			if x_doorcoll._state=="closed" {x -= move_push_distance * sign(move_x);
				

				
				
				}
			else if x_doorcoll._state=="open" {
}
    } 
	
	
	
	
	
	
	
	

    // Verificación de colisiones en el eje Y
    if  y_doorcoll!=noone {
		
		if y_doorcoll._state=="closed" {
		y -= move_push_distance * sign(move_y);
				
		}
		
		
		else if y_doorcoll._state=="open" {
		} 
         // Empuja en el eje Y _actionbutton=false;
    }	
	
	
	
	
}


///

function _platformcollisionsystem() {
    var _platformcolling = instance_place(x + move_x, y + move_y, oplatformparent);
    var _platformsensor = collision_line(x, y, x + (_sensorcoll * image_xscale), y, oplatformparent, true, true);
    
    if (_platformcolling) { 
        ///("encontrada colisión");
        ///("platform id : " + string(_platformcolling.custom_id));
        
        var _platformsurface = _platformcolling._surface;

        if (z > _platformsurface) {
            if (abs(z - (_platformsurface + _platformcolling._colheight)) > _colheight) {
                //("transitas bajo la plataforma");
				depth = _platformcolling.depth+1;
            } else {			
                move_y = 0; 
                move_x = 0;  
           ///     ("estás bloqueado de la plataforma");
            }
        } else if (z <= _platformsurface) {
            //("estás por encima de la plataforma");
            if (_platformcolling.object_index == omoveplatform_parent) {
              ///  ("estás en una plataforma móvil");
                
if (_CurrentPlayerState != _EnumPlayerState._jump) {
    // Mover el personaje con la plataforma
    x += (_platformcolling.x - _platformcolling.xprevious); 
    y += (_platformcolling.y - _platformcolling.yprevious); 

    // Limitar el movimiento del personaje dentro de la plataforma
    var platform_x = _platformcolling.x;
    var platform_y = _platformcolling.y;

    // Límite horizontal
    if (x < platform_x - 32) {
       /// x = platform_x - 32;
    } else if (x > platform_x + 32) {
        ///x = platform_x + 32;
    }

    // Límite vertical sin bloque en el borde inferior
    if (y < platform_y - 32) {
       /// y = platform_y - 32;
    } 
    // Eliminar el límite inferior para permitir que caiga si se pasa del borde
}



            }
            _onPlatform = true; 
            floorZ = _platformsurface;  
            depth = _platformcolling.depth-1;
        }
    } else {
        _onPlatform = false; 
        floorZ = 0; 
        depth = floor(-y / 16);
    }
}






/*

_sensorcoll=16;
function _platformcollisionsystem() {
 var _platformcolling=instance_place(x+move_x,y+move_y,oplatformparent);
 var _platformsensor=collision_line(x,y,x+(_sensorcoll*image_xscale),y,oplatformparent,true,true);
if _platformcolling { ("encontrada colision");
	var _platformsurface = _platformcolling._surface;
	if z>_platformsurface { move_y=0; move_x=0;  ("estas debajo de la plataforma");} else if z < _platformsurface 
	{("estas por encima de la plataforma"); floorZ=_platformsurface;  depth=_platformcolling.depth-5; //z+=_platformsurface;
		}
} if _platformcolling==noone { floorZ=0; depth=floor(-y/16);}
} 



*/


/*

function _place_meeting_3d(player_x,player_y,player_z,_objplatformparent) {
	
var xyMeeteting = instance_place(player_x,player_y,_objplatformparent);
var zMeeting = false;

if xyMeeteting!=noone {
	("se encontro plataforma collision");
	if player_z<_objplatformparent._height {
		("deberias poder subir");
		_onPlatform = true;
		depth=xyMeeteting.depth-1;
	floorZ=_objplatformparent._height;
	} else if player_z>_objplatformparent._height {
		
		_onPlatform = false;
	move_x=0; move_y=0;
	}
}else if xyMeeteting==noone {
	
	floorZ=FLOORZ_DEFAULT;}}



*/

























///ENTITIES  ENUMS///

enum _PossibleEntityLifeState {_Alive,_Dead}
_CurrentLifeState = _PossibleEntityLifeState._Alive;

enum _PossibleEntityTangibleState {_Tangible,_Intangible}
_CurrentTangibleState = _PossibleEntityTangibleState._Tangible;

enum _PossibleEntityActiveState {_Active,_Inactive}
_CurrentActiveState=_PossibleEntityActiveState._Active;

z=0;
floorZ=0;
_shadowspr=spr_ch_saki_shadow;

#region EFFECTS 

/// UP UP UP
_effUpcanLook = {
    _state: false, 
    _duration: 20,
    _currentseg: 0,
    _spr: spr_AlteredEffect,
    _img: 1
};

_effUpUpcanLook = {
    _state: false, 
    _duration: 20,
    _currentseg: 0,
    _spr: spr_AlteredEffect,
    _img: 2
};

_effUpHealt = {
    _state: false, 
    _duration: 20,
    _currentseg: 0,
    _spr: spr_AlteredEffect,
    _img: 7
};

_effUpUpHealt = {
    _state: false, 
    _duration: 20,
    _currentseg: 0,
    _spr: spr_AlteredEffect,
    _img: 7
};

/// DOWN DOWN DOWN
_effDowncanLook = {
    _state: false, 
    _duration: 20,
    _currentseg: 0,
    _spr: spr_AlteredEffect,
    _img: 3
};

_effDownDowncanLook = {
    _state: false, 
    _duration: 20,
    _currentseg: 0,
    _spr: spr_AlteredEffect,
    _img: 4
};

_effDownHealt = {
    _state: false, 
    _duration: 20,
    _currentseg: 0,
    _spr: spr_AlteredEffect,
    _img: 6
};

_effUpDownDownHealt = {
    _state: false, 
    _duration: 20,
    _currentseg: 0,
    _spr: spr_AlteredEffect,
    _img: 7
};

/// PROHIBITED
_EffProhibitedHealt = {
    _state: false, 
    _duration: 20,
    _currentseg: 0,
    _spr: spr_AlteredEffect,
    _img: 5
};

/// BURNED
_effLeveloneBurned = {
    _state: false, 
    _duration: 20,
    _currentseg: 0,
    _spr: spr_AlteredEffect,
    _img: 29
};

_effLeveltwoBurned = {
    _state: false, 
    _duration: 20,
    _currentseg: 0,
    _spr: spr_AlteredEffect,
    _img: 30
};

_effLevelthreeBurned = {
    _state: false, 
    _duration: 20,
    _currentseg: 0,
    _spr: spr_AlteredEffect,
    _img: 31
};




/// CUTTED
_effLeveloneCutted = {
    _state: false, 
    _duration: 20,
    _currentseg: 0,
    _spr: spr_AlteredEffect,
    _img: 20
};

_effLeveltwoCutted = {
    _state: false, 
    _duration: 20,
    _currentseg: 0,
    _spr: spr_AlteredEffect,
    _img: 21
};

_effLevelthreeCutted = {
    _state: false, 
    _duration: 20,
    _currentseg: 0,
    _spr: spr_AlteredEffect,
    _img: 22
};
















/// POISONED
_effLevelonePoisoned = {
    _state: false, 
    _duration: 20,
    _currentseg: 0,
    _spr: spr_AlteredEffect,
    _img: 23
};

_effLeveltwoPoisoned = {
    _state: false, 
    _duration: 20,
    _currentseg: 0,
    _spr: spr_AlteredEffect,
    _img: 24
};

_effLevelthreePoisoned = {
    _state: false, 
    _duration: 20,
    _currentseg: 0,
    _spr: spr_AlteredEffect,
    _img: 25
};

/// DISSIPATION OF EGO
_effLeveloneDissipationofego = {
    _state: false, 
    _duration: 20,
    _currentseg: 0,
    _spr: spr_AlteredEffect,
    _img: 32
};

_effLeveltwoDissipationofego = {
    _state: false, 
    _duration: 20,
    _currentseg: 0,
    _spr: spr_AlteredEffect,
    _img: 33
};

_effLevelthreeDissipationofego = {
    _state: false, 
    _duration: 20,
    _currentseg: 0,
    _spr: spr_AlteredEffect,
    _img: 34
};

_effLevelfourDissipationofego = {
    _state: false, 
    _duration: 20,
    _currentseg: 0,
    _spr: spr_AlteredEffect,
    _img: 35
};

_effLevelfiveDissipationofego = {
    _state: false, 
    _duration: 20,
    _currentseg: 0,
    _spr: spr_AlteredEffect,
    _img: 36
};

/// CONFUSION AND FEAR
_effConfusion = {
    _state: false, 
    _duration: 20,
    _currentseg: 0,
    _spr: spr_AlteredEffect,
    _img: 38
};

_effFear = {
    _state: false, 
    _duration: 3,
    _currentseg: 0,
    _spr: spr_AlteredEffect,
    _img: 39
};


_effInvulnerability = {
    _state: false, 
    _duration: 3,
    _currentseg: 0,
    _spr: spr_AlteredEffect,
    _img: 40
};

_effLink = {
    _state: false, 
    _duration: 3,
    _currentseg: 0,
    _spr: spr_AlteredEffect,
    _img: 41
};






































































































_effArray[0] = _effUpcanLook;
_effArray[1] = _effUpUpcanLook;
_effArray[2] = _effUpHealt;
_effArray[3] = _effUpUpHealt;
_effArray[4] = _effDowncanLook;
_effArray[5] = _effDownDowncanLook;
_effArray[6] = _effDownHealt;
_effArray[7] = _effUpDownDownHealt;
_effArray[8] = _EffProhibitedHealt;
_effArray[9] = _effLeveloneBurned;
_effArray[10] = _effLeveltwoBurned;
_effArray[11] = _effLevelthreeBurned;
_effArray[12] = _effLevelonePoisoned;
_effArray[13] = _effLeveltwoPoisoned;
_effArray[14] = _effLevelthreePoisoned;
_effArray[15] = _effLeveloneCutted;
_effArray[16] = _effLeveltwoCutted;
_effArray[17] = _effLevelthreeCutted; 
_effArray[18] = _effLeveloneDissipationofego;
_effArray[19] = _effLeveltwoDissipationofego;
_effArray[20] = _effLevelthreeDissipationofego;
_effArray[21] = _effLevelfourDissipationofego;
_effArray[22] = _effLevelfiveDissipationofego;
_effArray[23] = _effConfusion;
_effArray[24] = _effFear;
_effArray[25] = _effInvulnerability;
_effArray[26] = _effLink;







_effDsList = ds_list_create();
///ds_list_add(_effDsList,_effArray[0]);



#endregion











function _weaponConfigtoUse(_weaponInstance,_weaponType,_weaponTotalDamage,_weaponTotalVel,_weaponImageXscale,_weaponSprite) {






if !(instance_exists(oPlayerWeapon)) {///floor(image_index)==0
	with (instance_create_layer(x,y+z,"_Entities",oPlayerWeapon)) {
		image_index=0;
		sprite_index=_weaponSprite;
		_Type=_weaponType;
		_Dmg=_weaponTotalDamage;
		image_xscale=_weaponImageXscale;
	}
} else if (instance_exists(oPlayerWeapon)) {
	if oPlayerWeapon._used!=true {
	move_x=(_weaponTotalVel)*sign(_weaponImageXscale);} else {move_x=0;}
	
///show_debug_message("weapon existe.");
}

var _collver = collision_line(x,(y+z-64),x+(64*sign(image_xscale)),(y+z-64),olimitwallparent,true,true);
///var _collver = collision_line(x,(y+z-64),x+(64*sign(image_xscale)),(y+z-64),olimitwallparent,true,true);

  //	=(total_vel*2)*(-image_xscale);
}





function process_effects() {
    // Si la lista está vacía, no hay nada que hacer
    if (ds_list_empty(_effDsList)) return;

    // Iterar sobre la lista de efectos activos
    for (var i = ds_list_size(_effDsList) - 1; i >= 0; i--) {
        var effect = _effDsList[| i]; // Obtener la referencia del efecto

        // Incrementar el tiempo actual del efecto
        effect._currentseg += (_deltatimeSec()/2);//delta_time / 1000000; // Delta time en segundos


        // Verificar si el efecto debe ejecutar acciones por cada segundo
        if (floor(effect._currentseg) > floor(effect._currentseg - (_deltatimeSec()/2))) 
		{
            // Switch basado en la estructura del efecto
            switch (effect) {
                case _effInvulnerability:
				
				if object_index==oEnemyTest_00 {
					_currentdefphy=9999;
					_currentdefesp=9999;
				}

                    break;
					
					
					
					
					
                case _effLeveloneCutted:
                    // Acciones específicas para _effInvulnerability
                    ///show_debug_message("Corte pasa turno.");
					if object_index==oPlayer {///show_debug_message("Saki afectada.");
						_PlayerStatsManager.PlayerStats._hpCurrent-=0.3;
						}
                    break;					
					
					
					
					
					

                case _effLink:
                    // Acciones específicas para _effLink
                    ///show_debug_message("Link pasa turno.");
                    break;

                default:
                    // Otros casos no definidos explícitamente
                    ///show_debug_message("Efecto desconocido: " + string(effect));
                    break;
            }
        } 




        // Verificar si el efecto ha expirado
        if (effect._currentseg >= effect._duration) {
            // Restaurar las propiedades del efecto
            effect._state = false;
            effect._currentseg = 0;
			
			
            switch (effect) {
                case _effInvulnerability:
				
				if object_index==oEnemyTest_00 {
					_currentdefphy=0;
					_currentdefesp=0;
					_defphy=_defaultdefphy;
					_defesp=_defaultdefesp;
				}

                    break;
					
					
					
					
					
                case _effLeveloneCutted:
                    // Acciones específicas para _effInvulnerability
                    ///show_debug_message("Corte pasa turno.");
			///		if object_index==oPlayer {///show_debug_message("Saki afectada.");
				//		_PlayerStatsManager.PlayerStats._hpCurrent-=0.3;
					//	}
                    break;					
					
					
					
					
					

                case _effLink:
                    // Acciones específicas para _effLink
                    ///show_debug_message("Link pasa turno.");
                    break;

                default:
                    // Otros casos no definidos explícitamente
                    ///show_debug_message("Efecto desconocido: " + string(effect));
                    break;
            }
			
			

            // Eliminar el efecto de la lista
            ds_list_delete(_effDsList, i);

            // Debug opcional
            ///show_debug_message("Efecto terminado y eliminado: " + string(effect));
        }
    }
}





////enum _EnumEnemieState {_inactive,_stand,_walk,_run,_menu,_jump,_backdash,_attack00,_hurt,_counter,_dialog}
_CurrentEnemieState = _EnumEnemieState._inactive; 
_CurrentStatePrint="Noone";
///alarm_set(0,30);







