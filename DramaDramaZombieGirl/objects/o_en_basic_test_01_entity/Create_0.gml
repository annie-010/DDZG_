/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
event_inherited();

if instance_exists(oPlayer) {
var _dist=floor( point_distance(x,y,oPlayer.x,oPlayer.y));



}

_hp=choose(20,25,15,30,10);
_maxhp=_hp;
_defphy=0;
_defesp=0;
_vel=0;
_atkphy=0;
_atkesp=0;




_currentreactvalue=0;
_valuetoreact=15;
_alreadyreacted=false;
_islookingtoplayer=false;
_mintolook=700;
_mintoreact=700;
_mintofollow=600;
_mintofigthfollow=200;
_mintoattack=70;
_movetowardsvel=choose(2,3,4,2,1);

_currentwaitnumber=0;
_waittoattackon=2;
z=0;
zfloor=0;

_CurrentTangibleState=_PossibleEntityTangibleState._Tangible;


///enum _PossibleEntityActiveState {_Active,_Inactive}
///_CurrentActiveState=_PossibleEntityActiveState._Inactive;//_Active;











_CurrentEnemieState = _EnumEnemieState._inactive; 
_CurrentStatePrint="Noone";
_attackprint="noone";
_alreadyattack=false;
_alreadycreateddmg=false;

_collmask = instance_create_layer(x,y,"_Entities",oEnemyBodyCol);
_collmask._owner=id;

alarm_set(0,30);



_hurtred=false;













/*

enum _PossibleEntityLifeState {_Alive,_Dead}
_CurrentLifeState = _PossibleEntityLifeState._Alive;

enum _PossibleEntityTangibleState {_Tangible,_Intangible}
_CurrentTangibleState = _PossibleEntityTangibleState._Tangible;

enum _PossibleEntityActiveState {_Active,_Inactive}
_CurrentActiveState=_PossibleEntityActiveState._Active;


*/






// Inherit the parent event


