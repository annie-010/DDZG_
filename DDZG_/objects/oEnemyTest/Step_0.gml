if x>oPlayer.x {image_xscale=-1;} else if x<oPlayer.x {image_xscale=1;}


repeat (10) {
if place_meeting(x+2,y,oSolidBlock) {x-=6;}
if place_meeting(x,y+2,oSolidBlock) {y-=6;}
if place_meeting(x-2,y,oSolidBlock) {x+=6;}
if place_meeting(x,y-2,oSolidBlock) {y+=6;}
}






switch (active) {

case true:
if !place_meeting(x,y,o_block_par) { depth=-floor(bbox_bottom/32); z=0;} else {
var blockmeeting = instance_place(x,y,o_block_par);
z=blockmeeting.z; depth=blockmeeting.depth-2;} //_colz=instleft.z;




		






break; 


case false:	

if place_meeting(x,y,oSlash) {   
	if x >= oPlayer {z-=30;}
	
	if x < oPlayer {z-=30;}
	}


if !place_meeting(x,y,o_block_par) { depth=-floor(bbox_bottom/32); z=0;}	 break;}



switch (Hurtred) {
 
 case false: vel=velDefault;
 ///show_debug_message("Hurtred = false;");  
 
 //visible=true
 break;
 
 case true:  vel=0; hitRest=true;

 switch HurtredDur  
 {
 case 1:
 
 var sndVoice = choose (snd_Hit0,snd_Hit01,snd_Hit02);
	audio_play_sound(sndVoice,0,false); /// HurtsndSound=false;
 
 
 
 hp-=1; HurtsndSound=true;  IntertiaSystem=true; show_debug_message("IntertiaSystem = "+ string(IntertiaSystem)); 
 break;
 
 
 case 15: Hurtred=false;  HurtredDur=0;  IntertiaSystem=false; InertiaForce=0;
 break;
 
 }  HurtredDur++;
 ///visible=false; IntertiaSystem=true;
 break; }

if IntertiaSystem==true {hspeed=-InertiaForce*sign(image_xscale); } else if IntertiaSystem==false {hspeed=0;


}


switch (hitRest) {
	
	
	
	case true:
	
	switch (hitRestTime) {
		
		case 0: 
		break;
		
		
		case 60:  hitRest=false; hitRestTime=0;
		break;
	} hitRestTime++;  path_end();

	
	break;
	
	
	case false:
	
	
var _target = oPlayer; 
mp_grid_path(_grid,_path,x,y,_target.x,_target.y,0);
path_start(_path,vel,path_action_continue,1); 
 ///show_debug_message("Hurtred = false;");  
	
	
	
	break;

}







/*
if IntertiaSystem!=false && Hurtred!=false {hspeed=InertiaForce; show_debug_message("IntertiaSystem = "+ string(IntertiaSystem)); 
	show_debug_message("IntertiaSystem = "+ string(IntertiaSystem)); }
