switch(sprite_index) {
	
	case spr_sanghwoo_attack_00:
	_alreadyattack=true;
	_CurrentEnemieState=_EnumEnemieState._retreat;
	break;
	
	
case spr_sanghwoo_hurt: _CurrentEnemieState= _EnumEnemieState._stand; 
_CurrentTangibleState=_PossibleEntityTangibleState._Tangible;
break;	
	//case :
	///break;
	
	
}