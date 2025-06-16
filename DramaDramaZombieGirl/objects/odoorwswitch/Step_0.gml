
event_inherited();

	switch(_state) {
		case "closed" :	
		if (global._currentgrid!=noone) {
mp_grid_add_rectangle(global._currentgrid, x-(5*32), y-8, x+(5*32), y+8);
}
break;
		
		case "_forceclosed":
		if (global._currentgrid!=noone) {
mp_grid_add_rectangle(global._currentgrid, x-(5*32), y-8, x+(5*32), y+8);
}
		
		
		break;
		
		
		case "open":
		mp_grid_clear_rectangle(global._currentgrid, x-(5*32), y-8, x+(5*32), y+8);
		break;
		
	}