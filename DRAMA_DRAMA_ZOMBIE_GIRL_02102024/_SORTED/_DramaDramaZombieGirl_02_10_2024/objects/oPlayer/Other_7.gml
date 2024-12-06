
if sprite_index=sprPlayerBackDash && _CurrentPlayerState!=_EnumPlayerState._attack00 {
move_x=0;
_CurrentPlayerState = _EnumPlayerState._stand;
}



if sprite_index==spr_ch_saki_attack_00 {
_CurrentPlayerState = _EnumPlayerState._stand;
move_x=0;
alarm[5]=5///_ToleranceTimeAttack/60*_deltatimeSec();///(_ToleranceTimeAttack/60*20)*_deltatimeSec();

}

if sprite_index==spr_ch_saki_attack_01 {
_CurrentPlayerState = _EnumPlayerState._stand;
move_x=0;
alarm[5]=5

}

if sprite_index==spr_ch_saki_attack_02 {
_CurrentPlayerState = _EnumPlayerState._stand;
move_x=0;
alarm[5]=15;
}

if sprite_index==spr_ch_saki_jumpattack_0 {
	////("end animation jump attack");
	alarm[5]=15///_ToleranceTimeAttack/60*_deltatimeSec();///*_deltatimeSec();
	///hspeed=0;
	_CurrentPlayerState=_EnumPlayerState._jump;
}




if sprite_index==spr_ch_saki_hurt_00 {
_CurrentPlayerState = _EnumPlayerState._stand;
_CurrentTangibleState = _PossibleEntityTangibleState._Tangible;
move_x=0;

}

/*

	case _EnumPlayerState._hurt:
	_CurrentStatePrint="Hurt";
	_CurrentTangibleState = _PossibleEntityTangibleState._Intangible;
	sprite_index=sprPlayerHurt;
























/*
if _CurrentPlayerState==_EnumPlayerState._inactive && sprite_index==sprPlayerBackDash {
	hspeed=0;
} 	































































/*
if _CurrentPlayerState==_EnumPlayerState._attack00 {
hspeed=0;
_canAttack=true;
}
