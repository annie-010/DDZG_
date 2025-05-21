switch(_currentCinematicState) {

case _CinematicState._inactive:
break;


case _CinematicState._active:
///show_debug_message("_current objsecond : " + string(floor(_currentsecond)));
if _cinematicPlayed==false {

///script_execute(_cinematic _00(_currentsecond));
switch (_movietoplay) {   
case "Office00":
_cinematic_00();
break;


case "Office01":
_cinematic_01();
break;



case "PublicCorridor01":
_cinematic_02();
break;


case "PublicCorridor02":
_cinematic_03();
break;




}






}

break;
}

/////////enum _CinematicState {_active,_inactive}




























































