switch(sprite_index) {
	
    case spr_sanghwoo_attack_00:
	_CurrentEnemieState= _EnumEnemieState._retreat; 
	////path=noone;
image_index=-1;
    break;
	
case spr_sanghwoo_walking: ////path=noone;
break;	
	
	
case spr_sanghwoo_hurt: _CurrentEnemieState= _EnumEnemieState._stand; //// path=noone;
_CurrentTangibleState=_PossibleEntityTangibleState._Tangible;
break;	
	//case :
	///break;
	
	
	default : //path=noone;
	break;
	
	
}