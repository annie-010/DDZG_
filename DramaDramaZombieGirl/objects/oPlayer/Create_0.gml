/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Inherit the parent event
event_inherited();



_CurrentLifeState = _PossibleEntityLifeState._Alive;
_CurrentTangibleState = _PossibleEntityTangibleState._Tangible;
_CurrentActiveState=_PossibleEntityActiveState._Active;

distoenemy = 0;


_debugShowisOn=false;

MOVE_CURRENT_SPEED = 0;

_limitzJump=-100;
z=0;
floorZ = 0;
_onPlatform = false;
_pastZ=0;
_bodyColl = noone; 
_bodyMask=noone;

_canAttack=true;
_ProhibitedAttackTime=0;
_currentStateAttack="Noone";
_currentCombo="Noone";
_canContinueComboTime=0;
_ToleranceTimeAttack=5;


/*
if !instance_exists(oPlayerMask) {
 _bodyCol = (instance_create_layer(x,y+z,"_Entities",oPlayerMask));
 _bodyCol._owner=id;
_bodyCol.sprite_index=spr_pl_saki_bodymask;
_bodyCol.mask_index=sprite_index;
}


_isTangible=true;
_notTangibleTime=0;
*/









_colheight = 130;
z=0;
floorZ = 0;

move_z = 0;
move_y = 0;
move_x = 0;
_maxmovelimit=0;

_maskFloor = spr_ch_saki_mask_floor;
_shadowspr = spr_ch_saki_shadow;
///_maskBody = oPlayerMask;

 enum _EnumPlayerState {_inactive,_stand,_walk,_run,_menu,_jump,_backdash,_attack00,_hurt,_counter,_dialog,_cinematic}
_CurrentPlayerState = _EnumPlayerState._inactive; 
_CurrentStatePrint="Noone";
alarm_set(0,240);

if !instance_exists(oPlayerMenu) {
_PlayerStatsManager = instance_create_layer(0,0,"_Entities",oPlayerMenu);
}
/*
if !instance_exists(oPlayerMask) {
_maskBody = instance_create_layer(x,y+z,"_Entities",oPlayerMask);
_maskBody._owner=oPlayer;
_maskBody.sprite_index=spr_pl_saki_bodymask;
}

*/

_currentequipPlayer = {
_Head : pointer_null,
_Chest : pointer_null,
_Weapon : pointer_null,
}







_sensorcoll=32;





////////////////////////////////
///////////////////////////////
////SND/////////////////////
//////////////////////////

_hurtsnd=choose(_snd_pl_saki_hurt,_snd_pl_saki_hurt_1);
_walksnd=_snd_ch_pl_step_ceramic;
_walksnddelay=30;
_runsnddelay=20;
_currentwalkdelay=0;


/*
function _check_z_collision(_obj1, _obj2) {
    // Obtener los valores de z y colheight del primer objeto (personaje)
    var obj1_z = _obj1.z;
    var obj1_z_top = obj1_z - _obj1._colheight; // Límite superior del personaje

    // Obtener los valores de z y colheight del segundo objeto (bala de cañón)
    var obj2_z = _obj2.z;
    var obj2_z_top = obj2_z - _obj2._colheight; // Límite superior de la bala

    // Comprobar colisión en el eje z (con eje invertido)
    return ((obj2_z <= obj1_z && obj2_z >= obj1_z_top) || (obj2_z_top <= obj1_z && obj2_z_top >= obj1_z_top));
}