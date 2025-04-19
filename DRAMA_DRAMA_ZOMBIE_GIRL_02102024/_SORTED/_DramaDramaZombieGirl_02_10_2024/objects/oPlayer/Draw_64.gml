/*
#macro VIEW_WIDTH 1152
#macro VIEW_HEIGHT 864 
#macro GUI_WIDTH 1152
#macro GUI_HEIGTH 864
*/








if _debugShowisOn==true {
	
draw_set_color(c_black);
draw_rectangle(0,0,254,200,false);
draw_set_color(c_white);
draw_set_font(fnt_default_12);
//draw_text(16,16,"current z : "+ string(z));
//draw_text(16,32,"current zfloor : "+ string(floorZ));
//draw_text(16,48,"current state" + string(	_CurrentStatePrint))
///draw_text(16,64,"current depth : " + string(depth));
//draw_text(16,80,"current combo :" + string(_currentCombo));
//var _rname =  room_get_name(room);
//draw_text(16,96,"current ROOM" + string(_rname));

draw_text(16,96,"move_y = " + string(move_y) + ";");
draw_text(16,112,"move_x = " + string(move_x) + ";");
draw_text(16,132,"MOVE_PAD = " + string(PAD_MOVE) + ";");

//draw_text(16,112,"comboChainTime" + string(_canContinueComboTime));
//draw_text(16,128,"canAttack : " + string(_canAttack));
//draw_text(16,144,"image_index : " + string(image_index));
}

