var _keyK = KEY_K_PRESSED;
var _keyKHold = KEY_K_HOLD;

if _keyK {move_z=-MOVE_SPEED_JUMP_BASE;}

//Gravity 
if move_z<10 {
move_z+=GRAVITY;
}




if (z+move_z>floorZ) {
	move_z=0;
	z=floorZ;
}


z+=move_z;





if _CurrentPlayerState==_EnumPlayerState._walk or _CurrentPlayerState==_EnumPlayerState._run	{
if KEY_J_HOLD {MOVE_CURRENT_SPEED = MOVE_SPEED_RUN_BASE} else if KEY_J_HOLD==false {MOVE_CURRENT_SPEED = MOVE_SPEED_WALK_BASE}

if KEY_DOWN_HOLD!=noone or KEY_UP_HOLD!=noone {
	
if KEY_RIGHT_HOLD!=noone && KEY_LEFT_HOLD!=noone {
move_y=(KEY_DOWN_HOLD-KEY_UP_HOLD) * MOVE_CURRENT_SPEED
}
}

if KEY_RIGHT_HOLD!=noone or KEY_LEFT_HOLD!=noone {
if KEY_DOWN_HOLD!=noone && KEY_UP_HOLD!=noone {
move_x=(KEY_RIGHT_HOLD-KEY_LEFT_HOLD) * MOVE_CURRENT_SPEED
}
}
if move_x!=0 {
if move_x<0 {image_xscale=-1;} else if move_x>0 {image_xscale=1;}}




///Collisions
if (_place_meeting_3d(x+move_x,y,z,oplatformparent,_colheight)) {
move_x=0;
}else if (_place_meeting_3d(x,y+move_y,z,oplatformparent,_colheight)) {
move_y=0;
}









move_and_collide(move_x,move_y,[tilemap,olimitwallparent],4,16*sign(move_x),16*sign(move_y));
}





switch(_CurrentPlayerState) {
	
	case _EnumPlayerState._inactive:
	_CurrentStatePrint="Inactive";
	break; 
	
	case _EnumPlayerState._stand:
	
	
	if KEY_U_PRESSED && _PlayerMenu.isMenuOpen==false {_CurrentPlayerState=_EnumPlayerState._menu; _PlayerMenu.isMenuOpen=true; }
	
	
	
	sprite_index=spr_ch_saki_stand_00;
	_CurrentStatePrint="Stand";
///	if PAD_MOVE { if (KEY_J_HOLD) {_EnumPlayerState._run;} else if !(KEY_J_HOLD) {_EnumPlayerState._WAL}}
if PAD_MOVE {if (KEY_J_HOLD) {_CurrentPlayerState=_EnumPlayerState._run} if (KEY_J_HOLD==false) {_CurrentPlayerState=_EnumPlayerState._walk}}
	
	break; 
	
	case _EnumPlayerState._walk:
	_CurrentStatePrint="Walk";
	sprite_index=spr_ch_saki_walk_00;
	if PAD_MOVE==false {_CurrentPlayerState=_EnumPlayerState._stand;} else if PAD_MOVE!=false && (KEY_J_HOLD) {_CurrentPlayerState=_EnumPlayerState._run}
	
	break; 
	
	case _EnumPlayerState._run:
	sprite_index=spr_ch_saki_run_00;
	_CurrentStatePrint="Run";
	if PAD_MOVE==false {_CurrentPlayerState=_EnumPlayerState._stand;} else if PAD_MOVE!=false && !(KEY_J_HOLD) {_CurrentPlayerState=_EnumPlayerState._walk} 
	break; 	
	
	case _EnumPlayerState._menu:
	if _PlayerMenu.isMenuOpen==false {_CurrentPlayerState=_EnumPlayerState._stand; _PlayerMenu._mPos=0;	_PlayerMenu._currentingameMenuPage=_ingameMenuPage._indexPage;}
	if _PlayerMenu.isMenuOpen==true {if KEY_U_PRESSED {_CurrentPlayerState=_EnumPlayerState._stand;  _PlayerMenu._mPos=0;  _PlayerMenu.isMenuOpen=false; _PlayerMenu._currentingameMenuPage=_ingameMenuPage._indexPage;}}
	
	_CurrentStatePrint="Menu";
	break; 		
	
	
	
	

}
	
	
	
	
	
	
	var key_M,key_N;
	key_M=keyboard_check_pressed(ord("M"));
	key_N=keyboard_check_pressed(ord("N"));
	
	if key_M { _PlayerMenu.PlayerStats._hpCurrent+=1;}
	if key_N { _PlayerMenu.PlayerStats._hpCurrent-=1;}