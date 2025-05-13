if _owner!=noone {
	
	var _coll = collision_rectangle(_owner.x-25,_owner.y-134+_owner.z,_owner.x+25,_owner.y+_owner.z,oEnemyDmg,true,true);
	
	if _coll!=noone {
		if _check_z_collision(_owner, _coll)  {
		
	if _owner._CurrentPlayerState!=_EnumPlayerState._hurt {
		var _hurt_snd = choose(_snd_ch_pl_saki_HURT_00,_snd_ch_pl_saki_HURT_01,_snd_ch_pl_saki_HURT_02);
		audio_play_sound(_hurt_snd,1,false);
		_owner._PlayerStatsManager.PlayerStats._hpCurrent-=_coll._dmg;
		oCameraResolution._earthquake=true;
		_owner._CurrentPlayerState=_EnumPlayerState._hurt;
		_coll.used=true;
		_owner._effLeveloneCutted._state=true;
	}}
	
	}
	
	
}



/*

	
	
	








if _coll or _isplayerhurtred==true {///show_debug_message("player fue golpeado efectivamente!");
	
///show_debug_message("daño : "+ string(_coll._dmg));





with(_coll) {instance_destroy();}
	
	
	_isplayerhurtred=false;
	
	} 
else {}	
	


} else if _owner._CurrentPlayerState=_EnumPlayerState._hurt {}








}



/*var _bodyColl = instance_place(x,y,oEnemyParentDmg);

if _bodyColl!=noone && instance_exists(_bodyColl) {
	
	
	if z==_bodyColl.z {
	
	
	
	
	
	{
	if (_owner._CurrentPlayerState!=_EnumPlayerState._hurt) {
		
		_owner._PlayerStatsManager.PlayerStats._hpCurrent-=1;
		oCameraResolution._earthquake=true;
		_owner.hspeed=0;
	////("Contacto hecho");
	audio_play_sound(_owner._hurtsnd,1,false);
	_owner._CurrentPlayerState=_EnumPlayerState._hurt
	}
	


}
	
	
	
	
	
	
	
	
	
	}
	
	
	
	
	

}



	/*
	
	
	
	
	PlayerStats = {

///_HP_STATS
_hpMin : 0, 
_hpMax : 12,
_hpCurrent : 12,

///DATA
_name : "Saki",

///_PLAYER_STATS
_statMin : 0, 
_statVel : 1,
_statPhisycAttack : 1,
_statSpecialAttack : 1,
_statLucky : 1,
_statDefense : 1,
_statSpecialDefense : 1,
}

	
	
	
	
	
	
	
	
	
	
	   if (_owner._CurrentPlayerState =!_EnumPlayerState._hurt)  &&  (_owner._CurrentPlayerState =!_EnumPlayerState._inactive) 
if (_owner._CurrentTangibleState==_PossibleEntityTangibleState._Tangible) && () {
	_owner._CurrentPlayerState =_EnumPlayerState._hurt;
	image_index=-1;
} 
}



/*






/*


var _typeattackrecieved = instance_place(x,y,oEnemyAttackParent);
if _typeattackrecieved!=noone && _owner._CurrentPlayerState!=_EnumPlayerState._hurt && _owner._isTangible==true && abs(_typeattackrecieved.depth-depth)<2  {

switch (_typeattackrecieved._attackType){ 

case "Noone":
with (_owner) {
	_PlayerStatsManager.PlayerStats._hpCurrent-=1;
	_CurrentPlayerState=_EnumPlayerState._hurt;
_isTangible=false;
timeToHurtred=60;
_notTangibleTime=60;
////("type hit : Noone ");
}
break;

case "Normal":
with (_owner) {
	_PlayerStatsManager.PlayerStats._hpCurrent-=1;
	_CurrentPlayerState=_EnumPlayerState._hurt;
	timeToHurtred=60;
	_isTangible=false;
_notTangibleTime=60;
////("type hit : Normal ");
}
break;

case "Heavy":
with (_owner) {
	_PlayerStatsManager.PlayerStats._hpCurrent-=1;
	_CurrentPlayerState=_EnumPlayerState._hurt;
	timeToHurtred=60;
	_isTangible=false;
_notTangibleTime=60;
	_canAttack=false;
	_ProhibitedAttackTime=60;
	////("type hit : Heavy ");
}
break;

case "Cutter":
break;

case "Electrifier":
break;

case "Freezing":
break;

case "Poisonous":
break;

case "Paralyzing":
break;

case "Nauseating":
break;

case "Burning":
break;

case "Caustic Chemical":
break;

case "Chemical Poisoning":
break;

case "Eye Irritant":
break;

case "Radiation poisoning":
break;

case "Radiation burn":
break;

case "Linker":
break;




}




}


