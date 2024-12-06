if _used==false {

var _instEnemyBodyCol = instance_place(x,y,oEnemyTest_00);
if _instEnemyBodyCol!=noone {
	
	if abs(_instEnemyBodyCol.depth - depth) <= 2 {
		_owner.hspeed=0;
		if _instEnemyBodyCol._CurrentTangibleState==_PossibleEntityTangibleState._Tangible {
_instEnemyBodyCol._hurtred=true;









var _ownerhitdmg = _owner._PlayerStatsManager.PlayerStats._statPhisycAttack;
var _ownerhitdmgchoose=choose((_ownerhitdmg*.5),(_ownerhitdmg*.7),(_ownerhitdmg*1),(_ownerhitdmg*.5),(_ownerhitdmg*.7),(_ownerhitdmg*1),(_ownerhitdmg*1.5))
var _enemydefchoose=choose(_instEnemyBodyCol._defphy*.8, _instEnemyBodyCol._defphy*1,_instEnemyBodyCol._defphy*1.2); 
var _processedatkdmg = floor(_ownerhitdmgchoose-_enemydefchoose);

if _processedatkdmg<0 {_processedatkdmg=0;}
_instEnemyBodyCol._hp-=_processedatkdmg;
	
	
	show_debug_message("atk pre processed= " + string(_ownerhitdmgchoose));
	
	show_debug_message("atk post processed= " + string(_processedatkdmg));
	randomize();
	var hitsnd = choose(snd_Hit0,snd_Hit01,snd_Hit02);
	
	audio_play_sound(hitsnd,.5,false);
	////("enemy in depth range, tangible");
	_used=true;
	}
	}
	//;
	
	_instEnemyBodyCol=noone;
}	
	//if (_instEnemyBodyCol._owner._isHurtred!=true && _instEnemyBodyCol._owner._isCounter!=true) {
	///	with (_instEnemyBodyCol._owner) {_isHurtred=true;}}	









} else if _used==true {}



if sprite_index=!noone {
x=OWNER.x;
y=OWNER.y+OWNER.z;
}
















/*

var _instEnemyAttackCol = instance_place(x,y,oEnemyAttackParent);
if _instEnemyAttackCol!=noone {
	////("Object EnemeyAttack Finded");
	//_instEnemyAttackCol._owner._isCounter=true;
	//instance_destroy(_instEnemyAttackCol);
	if _instEnemyAttackCol._owner._isCounter!=true && _instEnemyAttackCol._owner._isHurtred!=true {
		with (_instEnemyAttackCol._owner) {
		_isCounter=true;
		}
	}
}
 
 
