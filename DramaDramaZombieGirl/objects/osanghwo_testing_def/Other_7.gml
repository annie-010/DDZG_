switch(sprite_index) {
	
	case spr_sanghwoo_attack_00:
	dx = x - oPlayer.x;
	dy = y - oPlayer.y;
	
	
	dist = point_distance(x, y, oPlayer.x, oPlayer.y); if (dist == 0) dist = 1; 
	retreat_dist = 32 * 20;  angle = point_direction(oPlayer.x, oPlayer.y, x, y); 
	path= path_add();
	
	
    for (var i = 0; i < 8; i++) {
        var offset_angle = angle + i * 45; // probar 0°, 45°, 90°... hasta 315°
        var retreat_x = x + lengthdir_x(retreat_dist, offset_angle);
        var retreat_y = y + lengthdir_y(retreat_dist, offset_angle);
	
	
	
	        if (mp_grid_path(global._currentgrid, path, x, y, retreat_x, retreat_y, true)) {
_alreadyattack=true;
	_CurrentEnemieState=_EnumEnemieState._retreat;
	found_path = true;
       ///     found_path = true;
            break;
        } else if found_path = false { show_debug_message("me imagino que aca algo habia que mostrar."); } 
	}
	
	
	
	

	break;
	
	
case spr_sanghwoo_hurt: _CurrentEnemieState= _EnumEnemieState._stand; 
_CurrentTangibleState=_PossibleEntityTangibleState._Tangible;
break;	
	//case :
	///break;
	
	
}