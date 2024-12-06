
////*


/*

_Target=noone;
_Type=noone;
_Amount=noone;
_TotalTime=noone;
_ElapsedTime =noone;
_Interval=noone;
_Accumulator=noone;
_Rest =noone;

_manageAlteredEffectsSystem(_Target,_Type,_Amount,_TotalTime,_Interval,_Accumulator,_Rest) 


*/


///(global._gamesecondsTranscurred)-(_initTime)
/////show_debug_message("_total time : :" + string(_TotalTime));
//_ElapsedTime+=(global._gamesecondsTranscurred)-(_initTime)//+=_deltatimeSec();

if (_TotalTime!=noone) && instance_exists(_Target) {

///show_debug_message("_init time : :" + string(_initTime)); 
///show_debug_message("_elapsed time : :" + string((global._gamesecondsTranscurred)-(_initTime)));
_ElapsedTime=((global._gamesecondsTranscurred)-(_initTime));



if _ElapsedTime>=_TotalTime {

	
	
	///_testeffectvalue=false;
		
///show_debug_message("Efecto Terminado");
_Target=noone; _ElapsedTime=0;
}


}




/*



*/


/*


	_EffectStruct._state=false;
	var _testeffectvalue = ds_list_find_index(_Target._effDsList,_EffectStruct);
	if _testeffectvalue!=-1 {
	ds_list_delete(_Target._effDsList,_testeffectvalue);
	}





/*




case DisociationofEgoOne :
break;	




case DisociationofEgoOne :
break;

case DisociationofEgoOne :
break;	
	








_effUpcanLook;
_effUpUpcanLook;
_effUpHealt;
_effUpUpHealt;
_effDowncanLook;
_effDownDowncanLook;
_effDownHealt;
_effUpDownDownHealt;
_EffProhibitedHealt;
_effLeveloneBurned;
_effLeveltwoBurned;
_effLevelthreeBurned;
_effLevelonePoisoned;
_effLeveltwoPoisoned;
_effLevelthreePoisoned;
_effLeveloneDissipationofego;
_effLeveltwoDissipationofego;
_effLevelthreeDissipationofego;
_effLevelfourDissipationofego;
_effLevelfiveDissipationofego;
_effConfusion;
_effFear;



	#region
// Verificar si la lista está vacía
if ds_list_empty(_effDsList) {
    for (var u_ = 0; u_ < array_length(_effArray); u_++) {
        if _effArray[u_]._state != false {
            ds_list_add(_effDsList, _effArray[u_]);
            ////("Valor añadido 235Pas");
        }
    }
} else {
    for (var u_ = 0; u_ < array_length(_effArray); u_++) {
        if _effArray[u_]._state != false {
            // Verificar si el valor ya está en la lista antes de agregarlo
            if ds_list_find_index(_effDsList, _effArray[u_]) == -1 {
                ds_list_add(_effDsList, _effArray[u_]);
                ////("Valor añadido 235Pas");
            }
        }
    }
}
	#endregion




