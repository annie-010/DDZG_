 
// Inherit the parent event
event_inherited();

_hp=20;
_maxhp=_hp;
_defphy=0;
_defesp=0;
_vel=0;
_atkphy=0;
_atkesp=0;



















//enum _EnumEnemieState {_inactive,_stand,_walk,_run,_menu,_jump,_backdash,_attack00,_attack01,_attack02,_attack03,_attack04,_attack05,_hurt,_counter,_dialog,_retreat}
_CurrentEnemieState = _EnumEnemieState._inactive; 
_CurrentStatePrint="Inactive";
_currentdistancetoplayer=0;
_target=oPlayer;





_collmask = instance_create_layer(x,y,"_Entities",oEnemyBodyCol);
_collmask._owner=id;
_hurtred=false;





_alreadyattack=false;
_waittoattackgain = 5;//*_deltatimeSec();
_currentwait = 0;
////Distances///
_distsee = 1500;
_distreact = 1000; 
_distcacattack = 500;
_walkvel = 2;//choose(2,3,2,2,2,3,2,2);





alarm[0]=30;