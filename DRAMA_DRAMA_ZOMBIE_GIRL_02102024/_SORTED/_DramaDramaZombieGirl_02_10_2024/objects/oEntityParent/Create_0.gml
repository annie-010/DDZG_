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

floorZ=0;

tilemap=pointer_null;

_colheight = 130;
image_speed=1;
_onPlatform=false;
depth=floor(-y/16); 

_sensorcoll=64;

/// @function separate_from_wall
/// @description Desplaza al personaje fuera de las paredes del tilemap en caso de quedarse atascado

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
}


///

function _platformcollisionsystem() {
    var _platformcolling = instance_place(x + move_x, y + move_y, oplatformparent);
    var _platformsensor = collision_line(x, y, x + (_sensorcoll * image_xscale), y, oplatformparent, true, true);
    
    if (_platformcolling) { 
        ///show_debug_message("encontrada colisión");
        ///show_debug_message("platform id : " + string(_platformcolling.custom_id));
        
        var _platformsurface = _platformcolling._surface;

        if (z > _platformsurface) {
            if (abs(z - (_platformsurface + _platformcolling._colheight)) > _colheight) {
                //show_debug_message("transitas bajo la plataforma");
				depth = _platformcolling.depth+1;
            } else {			
                move_y = 0; 
                move_x = 0;  
           ///     show_debug_message("estás bloqueado de la plataforma");
            }
        } else if (z <= _platformsurface) {
            //show_debug_message("estás por encima de la plataforma");
            if (_platformcolling.object_index == omoveplatform_parent) {
              ///  show_debug_message("estás en una plataforma móvil");
                
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
if _platformcolling { show_debug_message("encontrada colision");
	var _platformsurface = _platformcolling._surface;
	if z>_platformsurface { move_y=0; move_x=0;  show_debug_message("estas debajo de la plataforma");} else if z < _platformsurface 
	{show_debug_message("estas por encima de la plataforma"); floorZ=_platformsurface;  depth=_platformcolling.depth-5; //z+=_platformsurface;
		}
} if _platformcolling==noone { floorZ=0; depth=floor(-y/16);}
} 



*/


/*

function _place_meeting_3d(player_x,player_y,player_z,_objplatformparent) {
	
var xyMeeteting = instance_place(player_x,player_y,_objplatformparent);
var zMeeting = false;

if xyMeeteting!=noone {
	show_debug_message("se encontro plataforma collision");
	if player_z<_objplatformparent._height {
		show_debug_message("deberias poder subir");
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

///UP UP UP 
_effUpcanLook = {
_state : false, 
_duration : 5,
_spr : spr_AlteredEffect,
_img : 1
}

_effUpUpcanLook = {
_state : false, 
_duration : 5,
_spr : spr_AlteredEffect,
_img : 2
}

_effUpHealt = {
_state : false, 
_duration : 5,
_spr : spr_AlteredEffect,
_img : 6
}

_effUpUpHealt = {
_state : false, 
_duration : 5,
_spr : spr_AlteredEffect,
_img : 7
}


//DOWN DOWN DOWN
_effDowncanLook = {
_state : false, 
_duration : 5,
_spr : spr_AlteredEffect,
_img : 3
}

_effDownDowncanLook = {
_state : false, 
_duration : 5,
_spr : spr_AlteredEffect,
_img : 4
}

_effDownHealt = {
_state : false, 
_duration : 5,
_spr : spr_AlteredEffect,
_img : 6
}

_effUpDownDownHealt = {
_state : false, 
_duration : 5,
_spr : spr_AlteredEffect,
_img : 7
}

///PROHIBITED
_EffProhibitedHealt  = {
_state : false, 
_duration : 5,
_spr : spr_AlteredEffect,
_img : 5
}

_effArray[0] = _effUpcanLook;
_effArray[1] = _effUpUpcanLook;
_effArray[2] = _effUpHealt;
_effArray[3] = _effUpUpHealt;
_effArray[4] = _effDowncanLook;
_effArray[5] = _effDownDowncanLook;
_effArray[6] = _effDownHealt;
_effArray[7] = _effUpDownDownHealt;
_effArray[8] = _EffProhibitedHealt;

_effDsList = ds_list_create();



#endregion











function _weaponConfigtoUse(_weaponInstance,_weaponType,_weaponTotalDamage,_weaponTotalVel,_weaponImageXscale,_weaponSprite) {

var _collver = collision_line(x,(y+z-64),x+(64*sign(image_xscale)),(y+z-64),olimitwallparent,true,true);
///var _collver = collision_line(x,(y+z-64),x+(64*sign(image_xscale)),(y+z-64),olimitwallparent,true,true);
if !(instance_exists(oPlayerWeapon)) {///floor(image_index)==0
	with (instance_create_layer(x,y+z,"_Entities",oPlayerWeapon)) {
		image_index=0;
		sprite_index=_weaponSprite;
		_Type=_weaponType;
		_Dmg=_weaponTotalDamage;
		image_xscale=_weaponImageXscale;
	}
}
move_x=(_weaponTotalVel)*sign(_weaponImageXscale);  //	=(total_vel*2)*(-image_xscale);
}












/*

















