var _keyK = KEY_K_PRESSED;
var _keyL = KEY_L_PRESSED;
var _keyKHold = KEY_K_HOLD;
var _keybackpress = KEY_U_PRESSED;
var _keydebug = keyboard_check_pressed(ord("P"));
var _keyo = KEY_O_PRESSED;
var _keyJ = KEY_J_HOLD;
///var _keyT = keyboard_check_pressed(ord("T"));







/*

if instance_exists(_maskBody) {
_maskBody.x=x;
_maskBody.y=y+z;
_maskBody.z=z;
}

*/


// Uso de la función en el evento de colisión
var _enemyDMGcoll = instance_place(x, y, oEnemyDmg);
if (_enemyDMGcoll) {
    if (_check_z_collision(self, _enemyDMGcoll)) {
        
        if (_CurrentPlayerState != _EnumPlayerState._hurt) {
            _PlayerStatsManager.PlayerStats._hpCurrent -= 1;
            oCameraResolution._earthquake = true;
            hspeed = 0;
            audio_play_sound(_hurtsnd, 1, false);
            _CurrentPlayerState = _EnumPlayerState._hurt;
        }
    }
}



















/*
if !instance_exists(oPlayerMask) {
_maskBody = instance_create_layer(x,y+z,"_Entities",oPlayerMask);
_maskBody._owner=oPlayer;
_maskBody.sprite_index=spr_pl_saki_bodymask;
}


*/










_hurtsnd=choose(_snd_pl_saki_hurt,_snd_pl_saki_hurt_1);

if _CurrentLifeState ==_PossibleEntityLifeState._Alive {


///_bodyColl = collision_rectangle(x-32,(y-134)+z,x+32,(y+z),oEnemyTest_Knife,true,true);

#region ///STATS	
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
//////////////////////////////  ////////////////////////////////////////////



if _keydebug {
switch _debugShowisOn {
case false:
_debugShowisOn=true;
_keydebug=false;
break;

case true:
_debugShowisOn=false;
_keydebug=false;
break;}}




//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////


    var chest_stat_vel = OWNER._currentequipPlayer._Chest != pointer_null ? OWNER._currentequipPlayer._Chest._equipvel : 0;
    var weapon_stat_vel = OWNER._currentequipPlayer._Weapon != pointer_null ? OWNER._currentequipPlayer._Weapon._equipvel: 0;
	var head_stat_vel = OWNER._currentequipPlayer._Head != pointer_null ? OWNER._currentequipPlayer._Head._equipvel : 0;

    var chest_stat_phy = OWNER._currentequipPlayer._Chest != pointer_null ? OWNER._currentequipPlayer._Chest._equipphyssicattack: 0;
    var weapon_stat_phy = OWNER._currentequipPlayer._Weapon != pointer_null ? OWNER._currentequipPlayer._Weapon._equipphyssicattack: 0;
	var head_stat_phy = OWNER._currentequipPlayer._Head != pointer_null ? OWNER._currentequipPlayer._Head._equipphyssicattack: 0;
	
    var chest_stat_espatk = OWNER._currentequipPlayer._Chest != pointer_null ? OWNER._currentequipPlayer._Chest._equipspecialattack: 0;
    var weapon_stat_espatk = OWNER._currentequipPlayer._Weapon != pointer_null ? OWNER._currentequipPlayer._Weapon._equipspecialattack: 0;
	var head_stat_espatk = OWNER._currentequipPlayer._Head != pointer_null ? OWNER._currentequipPlayer._Head._equipspecialattack: 0;
	
    var chest_stat_def = OWNER._currentequipPlayer._Chest != pointer_null ? OWNER._currentequipPlayer._Chest._equipdefense : 0;
    var weapon_stat_def = OWNER._currentequipPlayer._Weapon != pointer_null ? OWNER._currentequipPlayer._Weapon._equipdefense: 0;
	var head_stat_def = OWNER._currentequipPlayer._Head != pointer_null ? OWNER._currentequipPlayer._Head._equipdefense : 0;

    var chest_stat_espdef = OWNER._currentequipPlayer._Chest != pointer_null ? OWNER._currentequipPlayer._Chest._equipspecialdefense: 0;
    var weapon_stat_espdef = OWNER._currentequipPlayer._Weapon != pointer_null ? OWNER._currentequipPlayer._Weapon._equipspecialdefense: 0;
	var head_stat_espdef = OWNER._currentequipPlayer._Head != pointer_null ? OWNER._currentequipPlayer._Head._equipspecialdefense: 0;
	
    var chest_stat_luck = OWNER._currentequipPlayer._Chest != pointer_null ? OWNER._currentequipPlayer._Chest._equiplucky: 0;
    var weapon_stat_luck = OWNER._currentequipPlayer._Weapon != pointer_null ? OWNER._currentequipPlayer._Weapon._equiplucky: 0;
	var head_stat_luck = OWNER._currentequipPlayer._Head != pointer_null ? OWNER._currentequipPlayer._Head._equiplucky: 0;


    var total_vel = STAT_VEL_BASE + chest_stat_vel + weapon_stat_vel + head_stat_vel;
    var total_physical_attack = STAT_PHYSICATTACK_BASE + chest_stat_phy + weapon_stat_phy + head_stat_phy ; 
    var total_special_attack = STAT_SPECIALATTACK_BASE + chest_stat_espatk + weapon_stat_espatk + head_stat_espatk ;
    var total_defense = STAT_DEFENSE_BASE + chest_stat_def + weapon_stat_def + head_stat_def ;
    var total_special_defense = STAT_SPECIALDEFENSE_BASE + chest_stat_espdef + weapon_stat_espdef;
    var total_lucky = STAT_LUCKY_BASE + chest_stat_luck + weapon_stat_luck + head_stat_luck ;
	
	
	if keyboard_check_pressed(ord("E")) {
	
	////show_debug_message("total vel : " + string(total_vel));
	////show_debug_message("total pat : " + string(total_physical_attack));
	////show_debug_message("total sat : " + string(total_special_attack));
	////show_debug_message("total def : " + string(total_defense));
	////show_debug_message("total sdf : " + string(total_special_defense));
	////show_debug_message("total luc : " + string(total_lucky));
	}
	
	
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////	
#endregion

if _PlayerStatsManager.PlayerStats._hpCurrent<=0 && _CurrentLifeState==_PossibleEntityLifeState._Alive {
	show_debug_message("MUERTA")
_CurrentLifeState=_PossibleEntityLifeState._Dead;
alarm_set(10,120);
}




if 	_currentequipPlayer._Head!=pointer_null {

_PlayerStatsManager.PlayerStats._statVel=STAT_VEL_BASE+(_currentequipPlayer._Head._equipvel);
}else if _currentequipPlayer._Head==pointer_null {
	
} 

if 	_currentequipPlayer._Chest!=pointer_null {
_PlayerStatsManager.PlayerStats._statVel=STAT_VEL_BASE
}


if 	_currentequipPlayer._Weapon!=pointer_null {

}
if _currentequipPlayer._Head!=pointer_null && _currentequipPlayer._Chest!=pointer_null && _currentequipPlayer._Weapon!=pointer_null {
if (_currentequipPlayer._Head._equipset==_currentequipPlayer._Weapon._equipset) &&  (_currentequipPlayer._Head._equipset==_currentequipPlayer._Chest._equipset) 
{ ////show_debug_message("Todos tus Equips tienen el mismo SET") 
	if !instance_exists(oBobBee) {
		var _patnert = instance_create_layer(0,0,"_Entities",oBobBee);
	} }
}

///  _PlayerStatsManager.PlayerStats._statVel  _currentequipPlayer._Weapon








if move_z<10 {
move_z+=GRAVITY;
}




if (z+move_z>floorZ) {
	move_z=0;
	z=floorZ;
}


z+=move_z;


/*



*/

if _CurrentPlayerState==_EnumPlayerState._walk or _CurrentPlayerState==_EnumPlayerState._run or _CurrentPlayerState==_EnumPlayerState._jump	{
if _keyJ {MOVE_CURRENT_SPEED = MOVE_SPEED_RUN_BASE} else if _keyJ==false {MOVE_CURRENT_SPEED = MOVE_SPEED_WALK_BASE}



var _keyDown,_keyUp,_keyRight,_keyLeft;

_keyDown=KEY_DOWN_HOLD;
_keyUp=KEY_UP_HOLD;
_keyRight=KEY_RIGHT_HOLD;
_keyLeft=KEY_LEFT_HOLD;








// Movimiento vertical
if (_keyDown != noone || _keyUp != noone) {
    if (_keyRight != noone && _keyLeft != noone) {
        move_y = (_keyDown - _keyUp) * MOVE_CURRENT_SPEED;
    }
}

// Movimiento horizontal
if (_keyRight != noone || _keyLeft != noone) {
    if (_keyDown != noone && _keyUp != noone) {
        move_x = (_keyRight - _keyLeft) * MOVE_CURRENT_SPEED;
    }
}


if move_x!=0 {
if move_x<0 {image_xscale=-1;} else if move_x>0 {image_xscale=1;}}

////PLATFORMING COLLISIONS


}





switch(_CurrentPlayerState) {
	
	case _EnumPlayerState._inactive:
	_CurrentStatePrint="Inactive";
	break; 
	
	case _EnumPlayerState._backdash :
	_CurrentStatePrint="BackDash";
		if !place_meeting(x,y,oplatformparent) {
		floorZ=0;
	}
	sprite_index=sprPlayerBackDash;
	move_x=(total_vel*2)*(-image_xscale);
	//////show_debug_message("total vel");
	break;
	
	case _EnumPlayerState._counter:
	_CurrentStatePrint="Counter";
	sprite_index=sprPlayerBackDash;
	break;
	
	
	case _EnumPlayerState._hurt:
	_CurrentStatePrint="Hurt";
	_CurrentTangibleState = _PossibleEntityTangibleState._Intangible;
	sprite_index=spr_ch_saki_hurt_00;
	move_x=0;
	break;
	
	
	case _EnumPlayerState._attack00:
	_CurrentStatePrint="Atack00";
	_canAttack=false;
	image_speed=1;
	if image_index>=2 {hspeed=0;}
	switch(_currentCombo) {
	
	
	case "Noone" :
	///sprite_index=spr_ch_saki_attack_00;
	break;
	
	case "_Basic_01_" :
	sprite_index=spr_ch_saki_attack_00;
		_weaponConfigtoUse(oPlayerWeapon,"Normal",total_physical_attack,total_vel,image_xscale,sprPlayerAttackBlade_0); 

	break;
	
	case "_Basic_02_" :
	sprite_index=spr_ch_saki_attack_01;
		_weaponConfigtoUse(oPlayerWeapon,"Normal",total_physical_attack,total_vel,image_xscale,sprPlayerAttackBlade_1); 

	break;	
	
	case "_Basic_03_" :
	sprite_index=spr_ch_saki_attack_02;
		_weaponConfigtoUse(oPlayerWeapon,"Normal",total_physical_attack,total_vel,image_xscale,sprPlayerAttackBlade_2); 

	break;
	
	
	
	case "_Basic_Jump_0_" :
	sprite_index=spr_ch_saki_jumpattack_0;
	_weaponConfigtoUse(oPlayerWeapon,"Normal",total_physical_attack,total_vel,image_xscale,sprPlayerAttackBlade_2); 
///////show_debug_message("image_index :" +string(image_index));
	break;	
	
	}
	
	break;

	
	
	case _EnumPlayerState._stand:
	hspeed=0;
	move_x=0;
	move_y=0;
	if (_keyL && _canAttack==true)  { _keyL=false;
		///hspeed=total_vel*(sign(image_xscale));
		
		
		
		switch(_currentCombo) {
			
			case "Noone":
_canContinueComboTime=60*_deltatimeSec();//60
_currentCombo="_Basic_01_";
_canAttack=false;
image_index=-1;
_CurrentPlayerState=_EnumPlayerState._attack00;

break;
			
			
			case "_Basic_01_":
_canContinueComboTime=60*_deltatimeSec();
_currentCombo="_Basic_02_";
_canAttack=false;
image_index=-1;
_CurrentPlayerState=_EnumPlayerState._attack00;	

			break;
			
			case "_Basic_02_":
_canContinueComboTime=(1/60*20)*_deltatimeSec();
_currentCombo="_Basic_03_";
_canAttack=false;
image_index=-1;
_CurrentPlayerState=_EnumPlayerState._attack00;		

			break;			
			}} 
	
	
	
	
	if (_CurrentPlayerState==_EnumPlayerState._stand or _CurrentPlayerState==_EnumPlayerState._walk or
	_CurrentPlayerState==_EnumPlayerState._run or _CurrentPlayerState==_EnumPlayerState._jump)  {
		if !place_meeting(x,y,oplatformparent) {floorZ=0;}
	}
	
	
	
	
	
	
	
	
	image_alpha=1;
	
	_CurrentStatePrint="Stand";
	
	if _keyo {z-=5;	_CurrentPlayerState=_EnumPlayerState._backdash;}
	

		

		
		
	
	if _keyK {move_z=-MOVE_SPEED_JUMP_BASE;	_CurrentPlayerState=_EnumPlayerState._jump;}
	if _keybackpress  && _PlayerStatsManager.isMenuOpen==false { _PlayerStatsManager._mPos=0;
		 _keybackpress=false; 
		_CurrentPlayerState=_EnumPlayerState._menu; _PlayerStatsManager.isMenuOpen=true;
		////show_debug_message("ABRIENDO MENU LINEA 148 CURRENT STATE _STAND");	
	}

	
	sprite_index=spr_ch_saki_stand_00;
	
///	if PAD_MOVE { if (_keyJ) {_EnumPlayerState._run;} else if !(_keyJ) {_EnumPlayerState._WAL}}
if PAD_MOVE {if (_keyJ) {_CurrentPlayerState=_EnumPlayerState._run} if (_keyJ==false) {_CurrentPlayerState=_EnumPlayerState._walk}}
	
	break; 
	
	
	case _EnumPlayerState._dialog:
	
	
 _keyK = false;
 _keyL = false;
 _keyKHold =false;
 _keybackpress = false;
 _keyDown=false;
 _keyUp=false;
 _keyRight=false;
 _keyLeft=false;
	
	
move_z = 0;
move_y = 0;
move_x = 0;
	
	
	
	
	break;
	
	
	
	
	case _EnumPlayerState._walk:
	
		////if !place_meeting(x,y,oplatformparent) {floorZ=0;}
	if _keyK {move_z=-MOVE_SPEED_JUMP_BASE;	_CurrentPlayerState=_EnumPlayerState._jump;}
	_CurrentStatePrint="Walk";
	sprite_index=spr_ch_saki_walk_00;
	if PAD_MOVE==false {_CurrentPlayerState=_EnumPlayerState._stand;} else if PAD_MOVE!=false && (_keyJ) {_CurrentPlayerState=_EnumPlayerState._run}
	
	break; 
	
	case _EnumPlayerState._run:
		///if !place_meeting(x,y,oplatformparent) {floorZ=0;}
	
	
	if _keyK {move_z=-MOVE_SPEED_JUMP_BASE;	_CurrentPlayerState=_EnumPlayerState._jump;}
	sprite_index=spr_ch_saki_run_00;
	_CurrentStatePrint="Run";
	if PAD_MOVE==false {_CurrentPlayerState=_EnumPlayerState._stand;} else if PAD_MOVE!=false && (_keyJ)=noone {_CurrentPlayerState=_EnumPlayerState._walk} 
	break; 	
	
	case _EnumPlayerState._menu:
		
	if oPlayerMenu.isMenuOpen==false {_CurrentPlayerState=_EnumPlayerState._stand; oPlayerMenu._mPos=0;	oPlayerMenu._currentingameMenuPage=_ingameMenuPage._indexPage;}

	_CurrentStatePrint="Menu";


	break;

	case _EnumPlayerState._jump:
	image_speed=1;
		///if !place_meeting(x,y,oplatformparent) {floorZ=0;}
			_CurrentStatePrint=" Jump";
	
	
	if z<(floorZ-_limitzJump) {
		
			if (_keyL && _canAttack==true)  {
			_keyL=false;
			switch(_currentCombo) {
			
			case "Noone" : 
_canContinueComboTime=(1/60*20)*_deltatimeSec();

_currentCombo="_Basic_Jump_0_";
_canAttack=false;
_CurrentPlayerState=_EnumPlayerState._attack00;
image_index=-1;
///////show_debug_message("image_index : " + string(image_index));
break;}
}
		
	///////show_debug_message("Alcanzado punto maximo de salto _current z : " + string(z));
	}
	
	if (_pastZ != 0) { 
    if (_pastZ > z) {
        ///////show_debug_message("ESTÁ SUBIENDO");
		sprite_index=spr_ch_saki_jump_01;
		 image_index=0;
    } else if (_pastZ < z) {
        ///////show_debug_message("ESTÁ BAJANDO");
		sprite_index=spr_ch_saki_jump_00;
			image_index=1;
		}}
		_pastZ = z;
	
	if z==floorZ {_CurrentPlayerState=_EnumPlayerState._stand; image_speed=IMAGESPEED_DEFAULT;}
	
	break;
	
	
	

}
	
	
	
	
	
	
	#region
// Verificar si la lista está vacía
if ds_list_empty(_effDsList) {
    for (var u_ = 0; u_ < array_length(_effArray); u_++) {
        if _effArray[u_]._state != false {
            ds_list_add(_effDsList, _effArray[u_]);
            ////show_debug_message("Valor añadido 235Pas");
        }
    }
} else {
    for (var u_ = 0; u_ < array_length(_effArray); u_++) {
        if _effArray[u_]._state != false {
            // Verificar si el valor ya está en la lista antes de agregarlo
            if ds_list_find_index(_effDsList, _effArray[u_]) == -1 {
                ds_list_add(_effDsList, _effArray[u_]);
                ////show_debug_message("Valor añadido 235Pas");
            }
        }
    }
}

	
	
	#endregion
	
	
	
	///if _ProhibitedAttackTime>0 {_ProhibitedAttackTime--; _canAttack=false;} 

if _canContinueComboTime>0 {
_canContinueComboTime-=_deltatimeSec();
}else if _canContinueComboTime<0 {_canContinueComboTime=0; 
} else if _canContinueComboTime==0 { _currentCombo ="Noone";}


}



if _bodyMask==noone {
_bodyMask=instance_create_layer(x,y,"_Entities",oPlayerMask);
_bodyMask.sprite_index=sprite_index;
_bodyMask._owner=id;
////show_debug_message("Created Mask BodyCol Player step10");
} else if _bodyMask!=noone {
_bodyMask.x=x;
_bodyMask.y=y+z;
}

if instance_exists(oPlayerWeapon) {
oPlayerWeapon.x=x;
oPlayerWeapon.y=y+z;


}





_platformcollisionsystem();

///_place_meeting_3d(x+move_x,y+move_y,z,oplatformparent);





move_and_collide(move_x,move_y,[tilemap,olimitwallparent],4,16*sign(move_x),16*sign(move_y));
separate_from_wall(); 





//if _platformcolling==noone {}

if instance_exists(oPlayerMenu) {
if oPlayerMenu.isMenuOpen==true {_CurrentPlayerState=_EnumPlayerState._menu;}
}