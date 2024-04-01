/// @description Inserte aquí la descripción
// Puede escribir su código en este editor





var darkSectionCollision;
darkSectionCollision =   collision_rectangle(x-16,y-16,x+16,y+16,oDarktoRoomSections,true,true);
 ///if  darkSectionCollision!=noone {show_debug_message("Enemigo darkSectionIs = " + string(darkSectionCollision.sectionId)) }
 
 
 var darkCollisionPlace;
 darkCollisionPlace = instance_place(x,y,oDarktoRoomSections);
 if darkCollisionPlace!=noone {
	 
if sectionId==noone{ sectionId=darkCollisionPlace.sectionId;} else if sectionId!=noone {
	if sectionId!=darkCollisionPlace.sectionId {
	
	sectionId=darkCollisionPlace.sectionId;
	exit;
	
	
	///show_debug_message("Aqui hay un problema, aqui.")
	}
}
 
 }
 
 if sectionId!=noone && instance_exists(oPlayer) {
	 
	 
	 
	 
	 
	 
	 if sectionId!=oPlayer.sectionId {
	 
	 visible=0;
	/// show_debug_message("Visible Desactivado");
	 
	 
	 
	 } else if sectionId==oPlayer.sectionId {
	 
	 visible=1;
	 ///show_debug_message("Visible Activado");
	 
	 }
 }

 
 






























if global.Pause_Game==false { image_speed=1;

if instance_exists(oPlayer) {

if actualEnemyState!=enemie_state.attack_ {
	

}


if hp<=0 { if actualEnemyState!=enemie_state.death_ { actualEnemyState=enemie_state.death_;}}



if !place_meeting(x,y,o_block_par) { depth=-floor(bbox_bottom/32)-1; z=0;
	

	
	} else {
var blockmeeting = instance_place(x,y,o_block_par);
z=blockmeeting.z; depth=blockmeeting.depth-2;}



distance_ = distance_to_point(oPlayer.x,oPlayer.y);


switch (actualEnemyState) {
	
	
	case enemie_state.stand_:
	///visible=1;
	
	if x>oPlayer.x {image_xscale=-1;} 
	if x<oPlayer.x {image_xscale=1;}	
	
	x1=noone;
y1=noone;
x2=noone;
y2=noone;
	
	
	sprite_index=sprEnemy_01_Stand;

	path_end();
	_statePrint="STAND";
	
	
	///if distance_<0 {}
	if distance_<distanceMintoReact {actualEnemyState=enemie_state.walk_;}
	if distance_<distanceMintoRun {actualEnemyState=enemie_state.walk_;}
	if distance_<=distanceMintoAttack {actualEnemyState=enemie_state.attack_;}
	
	
	break;
	
	
	case enemie_state.walk_:
	//visible=1;
	if x>oPlayer.x {image_xscale=-1;} 
	if x<oPlayer.x {image_xscale=1;}	
	
		x1=noone;
y1=noone;
x2=noone;
y2=noone;
	
vel_=choose(2,2.5,3,3.5,4);
	if distance_>=distanceMintoReact {actualEnemyState=enemie_state.stand_;}
	if distance_<=distanceMintoRun {actualEnemyState=enemie_state.run_;}
	//if distance_>distanceMintoAttack {actualEnemyState=enemie_state.stand_;}


	var _target = oPlayer; 
	mp_grid_path(_grid,_path,x,y,_target.x,_target.y+16,1);
	path_start(_path,vel_,path_action_continue,1); 

	sprite_index=sprEnemy_01_Walk;
	_statePrint="WALK";
	break;
	
	
	case enemie_state.run_:
		if x>oPlayer.x {image_xscale=-1;} 
	if x<oPlayer.x {image_xscale=1;}	
	vel_=run_vel; ///visible=1;
	
	
	
		x1=noone;
y1=noone;
x2=noone;
y2=noone;

	if distance_>=distanceMintoReact {actualEnemyState=enemie_state.stand_;}
	if distance_>=distanceMintoRun {actualEnemyState=enemie_state.walk_;}
	if distance_<=distanceMintoAttack {actualEnemyState=enemie_state.attack_;}


	var _target = oPlayer; 
	mp_grid_path(_grid,_path,x,y,_target.x,_target.y+16,1);
	path_start(_path,vel_,path_action_continue,1); 

	sprite_index=sprEnemy_01_Walk;
	_statePrint="RUN";
	
	break;
	
	
	case enemie_state.death_:
	switch (DeathAnimDur) {
		case 0:
		break;
		
		
		case 30: instance_destroy();
		break;
	} DeathAnimDur++;
	
	break;
	
	

	
	case enemie_state.attack_:
	path_end();
	sprite_index=sprEnemy_01_Attack;
	_statePrint="ATTACK";
	
	switch (attackDur) {
		case 1: sprite_index=sprEnemy_01_Attack; image_index=0;
		break;
		
		
		case 30:
		
		
					if !instance_exists(oEnemyHitParent) {
					var hit_ = instance_create_layer(x+64*sign(image_xscale),y,"INSTANCES",oEnemyHitParent);
					hit_.depth=depth;
					show_debug_message("Se creo el instances hit enemy parent")
		///hit_.x1=x1; hit_.y1=y1; hit_.x2=x2; hit_.y2=y2; 
			}
		
		
		break;
		
		
		
		case 50: sprite_index=sprEnemy_01_Stand; image_index=0; attackDur=0; actualEnemyState=enemie_state.stand_;
		break;
		
	} attackDur++;
	
	break;
	
	
	case enemie_state.hurt_: 
	
	if HurtDur>=15 {///visible=1;  
		hspeed=0; actualEnemyState=enemie_state.stand_; HurtDur=0;  }
	
	sprite_index=sprEnemy_01_Hurt;
	_statePrint="HURT";
	switch (HurtDur) {
		case 1: Inmunity=true; hp-=1;   
		
		
		if instance_exists(oPlayer) {
		
		if oPlayer.x>x {hspeed=-2;}
		else if oPlayer.x<=x {hspeed=2;}
		
		}
		
		
		break;
		
		
		
		case 15: hspeed=0; actualEnemyState=enemie_state.stand_; HurtDur=0; 
		break;
	}
	
	HurtDur++;  path_end();
	
	
	break;
	
}

switch (Inmunity) {
	case false:   blendColor_=c_white;   InmunityTime=0; 
	break;
	
	
	case true:
	switch (InmunityTime) {
		case 2: blendColor_=c_red; show_debug_message("INMUNIDAD CORRIENDO");
		break;
		
		
		
		case InmunityTimeMax: Inmunity=false;  blendColor_=c_white;    InmunityTime=0;    show_debug_message("INMUNIDAD LIMITE, APAGANDO");
		break;
		
	} InmunityTime++;

	break;
	
}







if (x1 != noone and y1 != noone and x2 != noone and y2 != noone) {
    var atk_mask = collision_rectangle(x1, y1, x2, y2, oPlayer, 1, true);

    if (atk_mask != noone) {
        show_debug_message("ATAQUE HIZO COLISION");
    }
}}
}if  global.Pause_Game==true {image_speed=0; path_end();}



/*


distance_=0;
distanceMintoReact=300;
distanceMintoRun=120;
distanceMintoAttack=60;