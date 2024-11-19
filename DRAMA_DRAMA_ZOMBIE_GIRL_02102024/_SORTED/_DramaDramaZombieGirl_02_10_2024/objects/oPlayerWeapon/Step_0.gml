if sprite_index=!noone {
x=OWNER.x;
y=OWNER.y+OWNER.z;
}


var _instEnemyBodyCol = instance_place(x,y,oEnemyDmg);
if _instEnemyBodyCol!=noone {
	
	if abs(_instEnemyBodyCol.depth - depth) <= 2 {
		_owner.hspeed=0;
		if _instEnemyBodyCol._owner._CurrentTangibleState==_PossibleEntityTangibleState._Tangible {
_instEnemyBodyCol._owner._hurtred=true;
	_instEnemyBodyCol._owner._hp-=1;
	
	randomize();
	var hitsnd = choose(snd_Hit0,snd_Hit01,snd_Hit02);
	
	audio_play_sound(hitsnd,.5,false);
	////show_debug_message("enemy in depth range, tangible");
	
	}
	}
	//;
	
	_instEnemyBodyCol=noone;
}	
	//if (_instEnemyBodyCol._owner._isHurtred!=true && _instEnemyBodyCol._owner._isCounter!=true) {
	///	with (_instEnemyBodyCol._owner) {_isHurtred=true;}}	




/*

var _instEnemyAttackCol = instance_place(x,y,oEnemyAttackParent);
if _instEnemyAttackCol!=noone {
	////show_debug_message("Object EnemeyAttack Finded");
	//_instEnemyAttackCol._owner._isCounter=true;
	//instance_destroy(_instEnemyAttackCol);
	if _instEnemyAttackCol._owner._isCounter!=true && _instEnemyAttackCol._owner._isHurtred!=true {
		with (_instEnemyAttackCol._owner) {
		_isCounter=true;
		}
	}
}
 
 

