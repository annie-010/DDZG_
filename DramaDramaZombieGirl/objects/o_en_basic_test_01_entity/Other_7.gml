switch (sprite_index) {

case spr_HanamariFrontPunch:  _CurrentEnemieState= _EnumEnemieState._stand; 
break;

case spr_HanamariCrunchFrontPunchthrow:  _CurrentEnemieState= _EnumEnemieState._stand;
break;


case spr_HanamariHurt: _CurrentEnemieState= _EnumEnemieState._stand; 
_CurrentTangibleState=_PossibleEntityTangibleState._Tangible;
break;

}