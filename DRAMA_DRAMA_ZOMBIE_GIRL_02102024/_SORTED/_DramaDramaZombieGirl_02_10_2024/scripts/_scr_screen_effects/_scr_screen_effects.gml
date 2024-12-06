// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function _fadescreen(_type,_time){
	
	static _duration = _time;
	static _alphatodraw = 0;
	
	
	
	switch(_type) 
	{
		case "_in" :
		break;
		
		
		case "_out":
		break;
	}


draw_sprite_ext(spr_blackfade_filter,0,0,0,1,1,0,c_black,_alphatodraw);
}