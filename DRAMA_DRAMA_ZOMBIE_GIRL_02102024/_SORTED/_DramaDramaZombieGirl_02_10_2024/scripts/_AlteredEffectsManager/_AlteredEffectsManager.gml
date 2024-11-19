// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function _StateAlterer_Effects(_Target,_Type,_Amount,_Time,_Rest){



switch (_Type) {
case "Healt" :
switch (_Target) {

case oPlayer:
if instance_exists(oPlayer._PlayerStatsManager) {
oPlayer._PlayerStatsManager.PlayerStats._hpCurrent+=_Amount;
_StateAlterer_Effects(oPlayer,"Incurable",_Amount,_Time,_Rest);



oPlayer._effUpHealt._state=true;
oPlayer._EffProhibitedHealt._state=true;
oPlayer._effUpcanLook._state=true;
oPlayer._effUpUpcanLook._state=true;
oPlayer._effDownHealt._state=true;

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

*/


}


break;


case "Other":
break;


}


case "Incurable" :
switch (_Target) {
case oPlayer:

break;


case "Other":
break;

}
break;



}





}