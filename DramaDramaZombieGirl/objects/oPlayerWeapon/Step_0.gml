switch (_used) {

case true:
    break;

case false:
    var _instEnemyBodyCol = instance_place(x, y, oEnemyBodyCol);

    if (_instEnemyBodyCol != noone) {
        if (abs(_instEnemyBodyCol._owner.depth - _owner.depth) <= 2) {
            _owner.move_x = 0;
            
            if (_instEnemyBodyCol._owner._CurrentTangibleState == _PossibleEntityTangibleState._Tangible) {
                _instEnemyBodyCol._owner._hurtred = true;

                var _ownerHitDmg = _owner._PlayerStatsManager.PlayerStats._statPhisycAttack;
                show_debug_message("_ownerHitDmg : " + string(_ownerHitDmg));

                var _ownerHitDmgChoose = choose((_ownerHitDmg * 0.5), (_ownerHitDmg * 0.7), (_ownerHitDmg * 1),
                                               (_ownerHitDmg * 0.5), (_ownerHitDmg * 0.7), (_ownerHitDmg * 1),
                                               (_ownerHitDmg * 1.5));

                var _enemyDefChoose = choose((_instEnemyBodyCol._owner._defphy * 0.8),
                                            (_instEnemyBodyCol._owner._defphy * 1),
                                            (_instEnemyBodyCol._owner._defphy * 1.2));

                var _processedAtkDmg = floor(_ownerHitDmgChoose - _enemyDefChoose);

                if (_processedAtkDmg < 0) {
                    _processedAtkDmg = 0;
                }

                _instEnemyBodyCol._owner._hp -= _processedAtkDmg;
                _instEnemyBodyCol._owner._atkrecieved = _processedAtkDmg;

                show_debug_message("atk pre processed = " + string(_ownerHitDmgChoose));
                show_debug_message("atk post processed = " + string(_processedAtkDmg));

                var _sfxPoints = instance_create_depth(_instEnemyBodyCol.x, _instEnemyBodyCol.y, depth - 90, obouncingobjecttotest_0);
                _sfxPoints._owner = _instEnemyBodyCol;
                _sfxPoints._valuetoshow = _processedAtkDmg;
				
				
				if image_xscale==1 {_sfxPoints._dirtomove = 0;} else if image_xscale==-1 {_sfxPoints._dirtomove = 2;}
				
				
				
                
                _sfxPoints.z = -126;
                _sfxPoints._spdtomove = choose(1, 2, 3, 4, 1, 2, 4, 1, 2, 3, 2, 1, 4);

                randomize();
                var hitSnd = choose(snd_Hit0, snd_Hit01, snd_Hit02);
                audio_play_sound(hitSnd, 0.5, false);

                _used = true;
            }
        }
    }
    break;
}

if (sprite_index != noone) {
    x = OWNER.x;
    y = OWNER.y + OWNER.z;
}
z=_owner.z;

/*


if _used==false {

var _instEnemyBodyCol = instance_place(x,y,_en_basic_test_01_entity);
if _instEnemyBodyCol!=noone {
	
	if abs(_instEnemyBodyCol.depth - depth) <= 2 {
		_owner.move_x=0;
		if _instEnemyBodyCol._CurrentTangibleState==_PossibleEntityTangibleState._Tangible {
_instEnemyBodyCol._hurtred=true;









var _ownerhitdmg = _owner._PlayerStatsManager.PlayerStats._statPhisycAttack;

show_debug_message("_ownerhitdmg : " + string(_ownerhitdmg));

var _ownerhitdmgchoose=choose((_ownerhitdmg*.5),(_ownerhitdmg*.7),(_ownerhitdmg*1),(_ownerhitdmg*.5),(_ownerhitdmg*.7),(_ownerhitdmg*1),(_ownerhitdmg*1.5))
var _enemydefchoose=choose(_instEnemyBodyCol._defphy*.8, _instEnemyBodyCol._defphy*1,_instEnemyBodyCol._defphy*1.2); 
var _processedatkdmg = floor(_ownerhitdmgchoose-_enemydefchoose);

if _processedatkdmg<0 {_processedatkdmg=0;}
_instEnemyBodyCol._hp-=_processedatkdmg;
_instEnemyBodyCol._atkrecieved=_processedatkdmg;
	
	
	show_debug_message("atk pre processed= " + string(_ownerhitdmgchoose));
	
	show_debug_message("atk post processed= " + string(_processedatkdmg));
	
	
	var _sfxpoints =  instance_create_depth(_instEnemyBodyCol.x,(_instEnemyBodyCol.y),depth-90,obouncingobjecttotest_0);
	_sfxpoints._owner=_instEnemyBodyCol;
	_sfxpoints._valuetoshow=_processedatkdmg;
	_sfxpoints._dirtomove=0;
	_sfxpoints.z=-126;
	_sfxpoints._spdtomove=choose(1,2,3,4,1,2,4,1,2,3,2,1,4)
	
	
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









} else if _used==true {_owner.move_x=0;}



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
 
 
