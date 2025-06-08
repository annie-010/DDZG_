if _owner!=noone {
	
	var _coll = collision_rectangle(_owner.x-16,_owner.y-90+_owner.z,_owner.x+16,_owner.y+_owner.z,oEnemyTestDmg_00,true,true);
	
	if _coll!=noone {
		
		
		if _check_z_collision(_owner, _coll) && abs(_owner.depth - _coll.depth) <= 2  {
		
	if _owner._CurrentPlayerState!=_EnumPlayerState._hurt {
		var _hurt_snd = choose(_snd_ch_pl_saki_HURT_00,_snd_ch_pl_saki_HURT_01,_snd_ch_pl_saki_HURT_02);
		audio_play_sound(_hurt_snd,1,false);
		_owner._PlayerStatsManager.PlayerStats._hpCurrent-=_coll._dmg;
		
		_coll._effect._state=choose(true,false,true,false);
		
		
		
		oCameraResolution._earthquake=true;
		_owner._CurrentPlayerState=_EnumPlayerState._hurt;
		_coll.used=true;
		
	}}
	
	}
	
	
}



/*

	
	
	


