/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
		switch (sprite_index) 
		{case sprBlock: x1=noone; x2=noone; y1=noone; y2=noone;  HitForce=HitForceDefault;  visible=false;}



if _owner!=noone 
{
	
	////var _col = collision_rectangle()
	x=_owner.x; y=_owner.y-(_owner.z); 
	if sprite_index!=sprBlock {mask_index=sprite_index;
		
		
		switch (sprite_index) 
		{
			
			case sprBlock: x1=noone; x2=noone; y1=noone; y2=noone; 
			break;
			
			case sprPlayerAttackBlade_0:  
			
			
			switch (image_index) {
			
			case 0 :
			break;
			
			case 1 :  HitForce=1;
			x1=x+1*sign(image_xscale); y1=y-76; x2=x+102*sign(image_xscale); y2=y-24;
			break;
			
			
			case 2: 
			
			break;
			
			}


			break;

			case sprPlayerAttackBlade_1: 
			switch (image_index) {
			
			case 0 :
			break;
			
			case 1 : HitForce=2;
			x1=x+1*sign(image_xscale); y1=y-88; x2=x+72*sign(image_xscale); y2=y-8; 
			break;
			
			
			case 2: } 
			
			break;
	
			case sprPlayerAttackBlade_2:  
			switch (image_index) {
			
			case 0 :
			break;
			
			case 1 : HitForce=3;
			x1=x+1*sign(image_xscale); y1=y-76; x2=x+90*sign(image_xscale); y2=y-24; 
			break;

			case 2: } break;		

		}}}
///actualEnemyState=enemie_state.hurt_
/*
var SlashCol = collision_rectangle(x1,y1,x2,y2,oEnemyTest_Knife,true,true);  
if SlashCol!=noone {///show_debug_message("El Target Marcado Es" + string(SlashCol));
///show_debug_message("El Target Hurtred = " + string(SlashCol.Hurtred));
if SlashCol.actualEnemyState!=enemie_state.hurt_ {SlashCol.actualEnemyState=enemie_state.hurt_; SlashCol.InertiaForce=HitForce; SlashCol.z-=HitForce SlashCol.HurtsndSound=true;}
}
*/











