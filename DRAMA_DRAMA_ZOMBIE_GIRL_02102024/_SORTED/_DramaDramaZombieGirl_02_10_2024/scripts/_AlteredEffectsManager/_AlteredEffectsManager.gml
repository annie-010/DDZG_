// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información





















/*

function _StateAlterer_Effects(_Target,_Type,_Amount,_Time,_Rest,_Struct) {



var _instancecreated=false;


   if (!_instancecreated) {
        // Crea una instancia del manejador de efectos
        var inst = instance_create_layer(_Target.x, _Target.y, "_Entities", oEffectParent);

        // Configura las variables necesarias
        inst._Target = _Target;
        inst._Type = _Type;
        inst._Amount = _Amount;
        inst._TotalTime = _Time;
        inst._ElapsedTime = 0;
        inst._Interval = 0.1;
        inst._Accumulator = 0;
        inst._Rest = _Rest;
		inst._EffectStruct=_Struct;

        _instancecreated = true; 
		///show_debug_message("instancia creada");
		// Marca que ya se creó una instancia
       /// return inst; // Devuelve la instancia para referencia
    } else {
        
    }
	
	
	
switch (_Target) {
	case _effUpcanLook :
	break;
	
	case _effUpUpcanLook :
	break;
	
	case _effUpHealt :
	break;
	
	case _effUpUpHealt :
	break;
	
	case _effDowncanLook:
	break;


	case _effDownDowncanLook:
	break;
	
	
		case _effDownHealt :
	break;
	
	
	
		case _effUpDownDownHealt :
	break;
	
	
	
	
		case _EffProhibitedHealt :
	break;
	
	
	
	
		case _effLeveloneBurned :
break;
	
	
	
	
case _effLeveltwoBurned :
break;
	
	
	
	
case _effLevelthreeBurned :
break;
	
	
case _effLeveloneDissipationofego :
break;
	
	
	
	
case _effLeveltwoDissipationofego :
break;
	
	
	
	
case _effLevelthreeDissipationofego:
break;
	
	
case _effLevelfourDissipationofego :
break;

case _effLevelfiveDissipationofego :
break;

case _effConfusion :
break;	
	
	

case _effFear :
break;


}
	
	}






/*

var _Timereaction = _Time;


///show_debug_message("state altered in use!");
///show_debug_message("target : "+ string(_Target) + "type : " + string(_Type) + "amount : "+ string(_Amount) + "rest : "+ string(_Rest));

for (var _i =0; _i<_Time; _i+=0.1) {
///show_debug_message("testing timing effect altered : " + string(_i));
}

*/
/*
switch (_Type) {


case "Healt" :

switch (_Target) {

case oPlayer:
if instance_exists(oPlayer._PlayerStatsManager) {
oPlayer._PlayerStatsManager.PlayerStats._hpCurrent+=_Amount;
///_StateAlterer_Effects(oPlayer,"Incurable",_Amount,_Time,_Rest);
///oPlayer._effUpHealt._state=true;


}


break;


case "Other":
break;


}


case "Incurable" :
switch (_Target) {
case oPlayer:

break;
}



case "Poison":
("poisoned");
switch (_Target) {

case oPlayer:
if instance_exists(oPlayer._PlayerStatsManager) {
///oPlayer._PlayerStatsManager.PlayerStats._hpCurrent-=_Amount;
///_StateAlterer_Effects(oPlayer,"Incurable",_Amount,_Time,_Rest);
///oPlayer._effLevelonePoisoned._state=true;

}
break;

}}

}

/*


//oPlayer._effLeveloneCutted._state=true;
//oPlayer._effLevelonePoisoned._state=true;
//oPlayer._effLeveltwoPoisoned._state=true;
//oPlayer._effLeveloneDissipationofego._state=true;
//oPlayer._effLeveltwoDissipationofego._state=true;
//oPlayer._effLeveloneBurned._state=true;










/*
_effArray[0] = _effUpcanLook;
_effArray[1] = _effUpUpcanLook;
_effArray[2] = _effUpHealt;
_effArray[3] = _effUpUpHealt;
_effArray[4] = _effDowncanLook;
_effArray[5] = _effDownDowncanLook;
_effArray[6] = _effDownHealt;
_effArray[7] = _effUpDownDownHealt;
_effArray[8] = _EffProhibitedHealt;

_effArray[9] = _effLeveloneCutted;
_effArray[10] = _effLeveltwoCutted;
_effArray[11] = _effLevelthreeCutted;

_effArray[12] = _effLevelonePoisoned;
_effArray[13] = _effLeveltwoPoisoned;
_effArray[14] = _effLevelthreePoisoned;

_effArray[15] = _effLeveloneDissipationofego;
_effArray[16] = _effLeveltwoDissipationofego;
_effArray[17] = _effLevelthreeDissipationofego;
_effArray[18] = _effLevelfourDissipationofego;
_effArray[19] = _effLevelfiveDissipationofego;

*/

