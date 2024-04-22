///var _testInventory = keyboard_check_pressed(ord("T"));

/*

if _testInventory {
///_inventoryStruct();
var _actualInventory_ds = oIngameMenu._headEquip;
var _actualInvetory_dsnum = ds_list_size(_actualInventory_ds);



///ds_list_add(_actualInventory_ds,);


///=0;

ds_list_add(_actualInventory_ds,0);


    //////oResolutionSystem._actualInventory
}


*/



x_scale = image_xscale;








var _keyMenu = keyboard_check_pressed(ord("U"));

 var darkCollisionPlace;
 darkCollisionPlace = instance_place(x,y,oDarktoRoomSections);
 if darkCollisionPlace!=noone {
if sectionId==noone { sectionId=darkCollisionPlace.sectionId;}


if sectionId!=darkCollisionPlace.sectionId {

sectionId=darkCollisionPlace.sectionId;

}


if !place_meeting(x,y,oDarktoRoomSections) {
///darkCollisionPlace = noone;

} 
 }


switch(_tangible) {
	
	case false :
	
	
	show_debug_message(_notangibleTime);
	
	switch(_notangibleTime) {
		

		case 6: _alpha=0.3;
		break;



		case 12: _alpha=0;
		break;
		
		

		case 18:  _alpha=0.3;
		break;
		
		case 24:  _alpha=0.5;
		break;



		case 30:  _alpha=0.3;
		break;



		case 36:  _alpha=0;
		break;
		
		

		case 42:  _alpha=0.3;
		break;
		
		
		case 48:  _alpha=0.5;
		break;
		
		case 54:  _alpha=0.3;
		break;
		
		
		case 60: _alpha=1;  _notangibleTime=0; _tangible=true;
		break; 
		
	} _notangibleTime++;
	
	
	break;
	
	
	case true:
	break;
	
	
} 



var _keyLeft = keyboard_check(ord("A"));
var _keyRight = keyboard_check(ord("D"));
var _keyUp = keyboard_check(ord("W"));
var _keyDown = keyboard_check(ord("S"));
var _keyJump = keyboard_check_pressed (ord("K"));
var _keyJumpHeld = keyboard_check(ord("K"));
var _keyRun = keyboard_check(ord("J"));

var _keyrestart = keyboard_check_pressed(ord("R"));
var _KeyAttack_0 = keyboard_check_pressed(ord("L"));
var _keyBackdash = keyboard_check_pressed(ord("O"));
if _keyrestart {game_restart();}

if hspeed!=0 {
if hspeed>0 {  repeat (16) { if place_meeting(x+1,y,oBlock) {hspeed=0; x-=3;} } } else if hspeed<0 {
repeat (16) { if place_meeting(x-1,y,oBlock) {hspeed=0; x+=3;} }

}

}



if ActualPlayerState!=PlayerStates.Hurt   { Hurt_time=0;}
if Hurt_time>=15  {  hspeed=0; visible=1;  ActualPlayerState=PlayerStates.Stand;  Hurt_time=0; }


if !place_meeting(x,y,o_block_par) {	maskInplatform=false; depth=-floor(bbox_bottom/32)-1;} 

var instance_id_Coin;
instance_id_Coin = instance_place(x, y, oCoin_0);

if (instance_id_Coin==noone) {_blendColor=c_white;}

// Comprobar si hubo colisión
if(instance_id_Coin != noone) {
	
	
	// Obtener el valor de Z del objeto player
    var z_player = z; // Asume que el objeto player tiene una variable Z

    // Obtener el valor de _totalZ del objeto oCoin_0
    var totalZ_coin = instance_id_Coin._totalZ; // Asume que _totalZ es una variable de oCoin_0

    // Definir el rango permitido
    var rango = 32;
	
	
	if(abs(z_player - totalZ_coin) <= rango) {
        // Hacer algo si la diferencia está dentro del rango
		
	
		
        ///show_debug_message("Colisión con oCoin_0 en Z dentro del rango permitido.");
			with (instance_id_Coin) {instance_destroy();}
    }
	
	
	
	
	
	///if z==instance_id_Coin._totalZ {show_debug_message("COLISIONANDO CON LA MONEDA EN SU EJE Z")}
	
	///if place_meeting(x,y,instance_id_Coin) {}
	
    // Se produjo la colisión, ahora puedes usar instance_id_Coin
    ///show_debug_message("Colisión con oCoin_0, ID: " + string(instance_id_Coin));
}





//if _keyJump {if (z <= zfloor) {zjump = true; ActualPlayerState=PlayerStates.Jump; image_index=0; }}



	repeat(20) {
if place_meeting(x-2,y,oSolidBlock) {x+=4; hspeed=0;}
if place_meeting(x+2,y,oSolidBlock) {x-=4; hspeed=0;}
if place_meeting(x,y+2,oSolidBlock) {y-=4; hspeed=0;}
if place_meeting(x,y-2,oSolidBlock) {y+=4; hspeed=0;}}
	



///PHYSICS
#region PHYSICS

if physics_==true {

	//z jump (when space pressed)
if (zjump == true)
{
	z += zspeed; _onPlatform=false;  /*z pos goes up*/
}
//if not ontop of block
//var _instblock = (instance_place(x,y,o_block_par));
//if  _instblock!=noone  {
//if z<_instblock.z {zfloor=0;} else if z>_instblock.z {
//z=_instblock.z; }}

else if (!instance_place(x,y,o_block_par)) or (z<instance_place(x,y,o_block_par).z)
{
zfloor = 0; /*zfloor is ground level*/
}



//if not on ground
if (!z <= zfloor) 
{
	z -= zgrav; /*apply downforce on z pos*/
	zgrav += 0.5; /*grav gets stronger each step*/
}
//stop falling when you hit zfloor
if (z <= zfloor+1/*+1 for sticking glitch on ground*/)
{
	z = zfloor;	/*snap z pos to on ground*/
	zgrav = 0; /*stop applying downforce*/
	zjump = false; /*no longer in the air*/	}}
	

#endregion




if  ActualPlayerState==PlayerStates.Jump
{///show_debug_message("Llego estado jump");
	}





var moveJoyPad = noone;
moveJoyPad = max(_keyLeft,_keyRight,_keyDown,_keyUp);









switch  ActualPlayerState  
{
	case PlayerStates.INACTIVE: 
	_statePrint="INACTIVE"; _movePad=false; 
	_menuOpened=false;
	break;
	
	
	
	case PlayerStates.MenuOpen: 
	_statePrint="MENU OPEN"; _movePad=false; 
	
	
	switch(_menuOpened) {
	
	case true: 
	
	oIngameMenu._menuOpened=true;
	
	///show_debug_message("ABRIENDO MENU OPLAYER _MENUOPENED TRUE")
	
	
	
	break;
	
	case false:
    oIngameMenu._menuOpen=false;
	ActualPlayerState=PlayerStates.Stand;
	
	break;
	
	
	
	}	
	
	
	//_menuOpened=true && instance_exists(oIngameMenu) {
	///	
		////instance_create_layer(x,y,"INSTANCES",oIngameMenu);
		
	//}	
	
///var _gameMenupage = oIngameMenu._actualoptionmenu;


/*
if _keyMenu {

switch(_gameMenupage) {

case _optionsmenu.Equip_: 
break;



case _optionsmenu.Select_:

///_menuOpened=false;


break;



case 4:
break;


}

}

	/*
	
	if _keyMenu {
	
	switch (_menuOpened) {
	
	case true:
	
	switch (oIngameMenu._actualoptionmenu) {
		case  _optionsmenu.Select_:	

	ActualPlayerState=PlayerStates.Stand;
	///if instance_exists(oIngameMenu) {with(oIngameMenu) {instance_destroy();}}
	_menuOpened=false;
	oIngameMenu._menuOpened=false;
	oIngameMenu._mpos=0;
	_keyMenu=false;
		
		break;
		
		
		case  _optionsmenu.Equip_:		
		break;
		
		
		
		case  _optionsmenu.Equip_head:	
		
		
		break;
	}
	
	
	

	break;
	
	
	case false:
	
	
	break;
	
	}
	
	
	}
	
	
	*/
	
	///if key
	
	
	break;
	
	
	
	case PlayerStates.Death:
	
	switch (DeathAnim) {
		
		case 0: show_debug_message("MURIENDOSE"); 
		
		if global.player_lives>=1 {visible=0; global.player_lives-=1;  global.hp_player=5;  global.x_appear=x; global.y_appear=y;  visible=0; }
		
		
		
		
		
		
		break;
		
		
		case 60:     if global.player_lives>=1 {instance_destroy();}
		  if global.player_lives<=0 {
	var	camera_x=camera_get_view_x(camera);
	var	camera_y=camera_get_view_x(camera);
			 instance_create_layer(camera_x,camera_y,"FRONT_EFFECTS",oTransBlackOut);
			alarm[2]=60;
			}
		
		
		break;
		
		
		
	}
	
	
	
	DeathAnim++;
	
	break;
	
	
	case PlayerStates.Stand: spd = 2; 
	visible=1;
	
	
if _keyMenu && _menuOpened==false {
show_debug_message("ABRIENDO MENU")
	ActualPlayerState=PlayerStates.MenuOpen;
_menuOpened=true;
_keyMenu=false;

}
	
	
	
	/*
	
	if _keyMenu {

switch(_menuOpened) {

///case true:
//_menuOpened=false;
//break;


case false:
_keyMenu=false;
_menuOpened=true;
ActualPlayerState=PlayerStates.MenuOpen;
show_debug_message("Orden U Abrir menú desde player.");
break;
}


}
*/
	
	
	
	
	
	
	
	
	
	
	
	if _keyLeft {image_xscale=-1;}
	if _keyRight {image_xscale=1;}
	
	
	 if _KeyAttack_0 {ActualPlayerState=PlayerStates.Attack_0;} 

		if _keyBackdash and !place_meeting(x-1*sign(image_xscale),y,oBlock) {ActualPlayerState=PlayerStates.BackDash; show_debug_message("No se puede BackDash"); x+=3*sign(image_xscale); }
	
	image_speed=1;
		if moveJoyPad!=0 {ActualPlayerState=PlayerStates.Walk; }///show_debug_message("MOVEJOYPAD = " + string(moveJoyPad));
	sprite_index=sprPlayerStand;
if _keyJump {if (z <= zfloor) {zjump = true; ActualPlayerState=PlayerStates.Jump; image_index=0; }}
	
	_statePrint="STAND";

	break;
	case PlayerStates.BackDash:  
	visible=1;
	
	_statePrint="BACK_DASH";
	

	
	
	
	
	moveJoyPad=0;
	
	switch (_BackDashtime)  { 	
	
		
		case 1 : hspeed=-7*sign(image_xscale); z=z+10; sprite_index=sprPlayerBackDash;
		break;
		
		
		case 15: hspeed=0;  ActualPlayerState=PlayerStates.Stand;  _BackDashtime=0;
		break;
		
		
	}  _BackDashtime++; break;
	
	

	
	
	

	case PlayerStates.Walk:
	visible=1;
	image_speed=1;
if _keyJump {if (z <= zfloor) {zjump = true; ActualPlayerState=PlayerStates.Jump; image_index=0; }}
	if _keyLeft {image_xscale=-1;}
	if _keyRight {image_xscale=1;}
	
	
	
	sprite_index=sprPlayerWalk; _movePad=true; spd = 2;  if _KeyAttack_0 {  moveJoyPad=0; ActualPlayerState=PlayerStates.Attack_0;} 

////if _keyJump {if (z <= zfloor) {zjump = true; ActualPlayerState=PlayerStates.Jump; image_index=0; }}

if moveJoyPad!=1 {ActualPlayerState=PlayerStates.Stand; show_debug_message("KEYBOARD_MOVE_EN_USO");}	
	if _keyRun {ActualPlayerState=PlayerStates.Run; }


	
	_statePrint="WALK";
	break;
	case PlayerStates.Run: 
	visible=1;
if _keyJump {if (z <= zfloor) {zjump = true; ActualPlayerState=PlayerStates.Jump; image_index=0; }}
	if _keyLeft {image_xscale=-1;}
	if _keyRight {image_xscale=1;}
	image_speed=1;
	sprite_index=sprPlayerRun; spd = 4;  if _KeyAttack_0 { moveJoyPad=0; ActualPlayerState=PlayerStates.Attack_0;} 
	if !_keyRun or  moveJoyPad!=1  { ActualPlayerState=PlayerStates.Stand; _movePad=true;
}	




///if _keyJump {if (z <= zfloor) {zjump = true; ActualPlayerState=PlayerStates.Jump; image_index=0; }}
	
	
	_statePrint="RUN";
	break;
	
	

	
	
	
	
	case PlayerStates.Jump: image_speed=0.5;  spd = 4;
	visible=1;
	
	
	_statePrint="JUMP";
	sprite_index=sprPlayerJump;
if !(place_meeting(x,y,o_block_par)) {

zfloor=0;

}
	
	
if !_keyJumpHeld {///show_debug_message("SE HA SOLTADO EL BOTÓN");  
	
		z -= zgrav/5; /*apply downforce on z pos*/
	zgrav += 0.1; /*grav gets stronger each step*/
}
	
	if z==0 {  ActualPlayerState=PlayerStates.Stand; } 
	if _keyLeft {image_xscale=-1;}
	if _keyRight {image_xscale=1;}
	
	break;
	case PlayerStates.Hurt:
	_menuOpened=false;
	_statePrint="HURT";
	
	

	
	switch (Hurt_time) {
	
		case 1 : hspeed=-5*sign(image_xscale); z=z+10; sprite_index=sprPlayerBackDash; visible=0;
		break;
		
		
		case 2: visible=1;
		break;
		
		
		case 4: visible=0;
		break;
		
		
		case 6: visible=1;
		break;
		
		
		case 8: visible=0;
		break;
		
		
		case 10: visible=1;
		break;
		
		
		case 12: visible=0;
		break;
		
		
		case 15: hspeed=0; visible=1;  ActualPlayerState=PlayerStates.Stand;  Hurt_time=0;
		break;
	
	}	Hurt_time++;
	
	

	
	
	
	
	
	
	break;
	case PlayerStates.Attack_0: _movePad=false;
	if AttackTimer==0 {sprite_index=sprPlayerAttack_0; image_index=0; 
	var Slash_Attack = instance_create_layer(x,(y-z),"Instances",oSlash); Slash_Attack._owner=id; Slash_Attack.image_xscale=image_xscale; Slash_Attack.sprite_index=ActualAmmo_; Slash_Attack.depth=depth-1;
	}
	if AttackTimer==5 {hspeed=5*(sign(image_xscale));} 
	
	AttackTimer++;
		if AttackTimer==10 {hspeed=0;}
		
		
		
	if AttackTimer>=20 {AttackInit=1; LastAttackEjecuted=0; attackDelay=0; hspeed=0; ActualPlayerState=PlayerStates.Stand; AttackTimer=0;}
	
	///   AttackAnimDur=0;  attackDelay=0;
	break;
	
	
	 
	case PlayerStates.Attack_1: _movePad=false;
	if AttackTimer==0 {sprite_index=sprPlayerAttack_01; image_index=0; 
	var Slash_Attack = instance_create_layer(x,(y-z),"Instances",oSlash); Slash_Attack._owner=id; Slash_Attack.image_xscale=image_xscale; Slash_Attack.sprite_index=sprPlayerAttackBlade_1; Slash_Attack.depth=depth-1;
	}
	if AttackTimer==5 {hspeed=5*(sign(image_xscale));}
	
	AttackTimer++;
		if AttackTimer==10 {hspeed=0;}
		
		
	if AttackTimer>=20 {AttackInit=1; LastAttackEjecuted=1; attackDelay=0; hspeed=0; ActualPlayerState=PlayerStates.Stand; AttackTimer=0;}
	
	
	break;
	
	
	
	
	case PlayerStates.Attack_2: _movePad=false;
	if AttackTimer==0 {sprite_index=sprPlayerAttack_02; image_index=0; 
	var Slash_Attack = instance_create_layer(x,(y-z),"Instances",oSlash); Slash_Attack._owner=id;   Slash_Attack.image_xscale=image_xscale; Slash_Attack.sprite_index=sprPlayerAttackBlade_2; Slash_Attack.depth=depth-1;
	}
	if AttackTimer==5 {hspeed=1*(sign(image_xscale));}
	
	AttackTimer++;
		if AttackTimer==10 {hspeed=0; }
		if AttackTimer==15 {Shoot_00=true;} 
		
		
	if AttackTimer>=20 { AttackInit=0; LastAttackEjecuted=noone; hspeed=0; ActualPlayerState=PlayerStates.Stand; AttackTimer=0;}
	
	
	break;	

}



if _movePad==true { 
	


	repeat(5) {
	if _keyLeft {   _keyUp=false; _keyRight=false; _keyDown=false;
instleft = noone;
//instance in path
instleft = (instance_place(bbox_left-spd-2,y,o_block_par))
if (!instleft) or (instleft.z <= z)
{ 
	x -= spd/5;  
} if instleft!=noone {_colz=instleft.z; } else {_colz=noone;}
}

if _keyRight {  _keyUp=false; _keyLeft=false; _keyDown=false;
instright = noone;
//instance in path
instright = (instance_place(bbox_right+spd+2,y,o_block_par))
if (!instright) or (instright.z <= z)
{
	x += spd/5; 
}if instright!=noone {_colz=instright.z; } else {_colz=noone;}
}

if _keyDown { _keyUp=false; _keyLeft=false; _keyRight=false;
instdown = noone;
//instance in path
instdown = (instance_place(x,y+spd+1,o_block_par))
if (!instdown) or (instdown.z <= z)
{
	y += spd/5;  
}if instdown!=noone {_colz=instdown.z; } else {_colz=noone;}
}


if _keyUp {
instup = noone; _keyDown=false; _keyLeft=false; _keyRight=false;
//instance in path
instup = (instance_place(x,y-spd-1,o_block_par))
if (!instup) or (instup.z <= z)
{y -= spd/5;  }  if instup!=noone {_colz=instup.z; } else {_colz=noone;}
}
}


}







switch Shoot_00  {
case true:   
var _shoot = instance_create_layer(x,(y-78)-(z),"Instances",oShoot); _shoot.depth=oPlayer.depth-1;  _shoot.hspeed=20*sign(image_xscale);  Shoot_00=false;

break;

case false: break;

}



#region  CONTROLADOR DE ATAQUE, DELAY

if AttackInit==true { attackDelay++; if attackDelay>=TimeDelayToCombo {AttackInit=0 LastAttackEjecuted=noone;}} 

if _KeyAttack_0 && ( (attackDelay>0 && attackDelay<30 )) 
{
	
	 switch LastAttackEjecuted 
	 {
		 case 0 : 
		 
		 switch _Grounded 
		 {
			 
			 case 0: exit;
			 break;
			 
			 
			 case 1 :  ActualPlayerState=PlayerStates.Attack_1;
			 break;
			 
		 }
		 
		 break;
		 
		 
		 
		 case 1 :

		 switch _Grounded 
		 {
			 
			 case 0: exit;
			 break;
			 
			 
			 case 1 :  ActualPlayerState=PlayerStates.Attack_2;
			 break;
			 
		 }
		 
		 break;
		 
		 
	 }
}


#endregion 




	 if ActualPlayerState!=PlayerStates.Hurt  and  ActualPlayerState!=PlayerStates.Death   {

var hit_Coll = collision_rectangle(x-27,y-z-134,x+27,y-z+3,oEnemyHitParent,true,true);

if hit_Coll!=noone {
	
	var hitEnemyColl = instance_place(x,y,oEnemyHitParent);

	if (hit_Coll.depth==depth) or (hit_Coll.depth==(depth)-1) {
		///show_debug_message("El obj Golpe enemigo " + string(hitEnemyColl) + "Comparte Depth con el jugador");
	
	}
	

	ActualPlayerState=PlayerStates.Hurt;
	global.hp_player-=1;
	global.earthquake=true;
	//show_debug_message("Se ha golpeado al player!");
	//show_debug_message("El objeto que golpea es! = " + string(hitEnemyColl));
	}
	
	
	}






#region ///COLISIONAR CON PLATAFORMA EN MOVIMIENTO




var _colPlatform = instance_place(x,y,ofloatingPlatform);
if _colPlatform!=noone && _colPlatform._moving==true  {
	var _colz = _colPlatform.z;
	if (zfloor)==_colz {	///show_debug_message("IZI PIZI PARISI");
		
		
		
		_colPlatform._onPlatform=true;
		if (!_keyLeft && !_keyRight && !_keyUp && !_keyDown) { x = _colPlatform.x; 
			y = _colPlatform.y+16//-_colz;
			}}
			
			
			if (z)<_colz { ///_blendColor=make_color_rgb(233,233,243);  ///_blendColor=c_red;
				
				}
			
			
			}
#endregion