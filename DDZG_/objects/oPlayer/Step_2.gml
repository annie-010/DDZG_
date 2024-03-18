/*



/*


if (!collision_rectangle(x-8,y,x+8,y+1,oShadow,false,false)) {
gravity=0.3 _Grounded=0
}

if (vspeed > 0) 
{var ground = collision_rectangle(x-8,y,x+8,y+speed,oShadow,false,false);
	if (ground) {y = ground.y;
		         vspeed=0;
				 gravity=0; 
				 if ActualPlayerState==PlayerStates.Jump {ActualPlayerState=PlayerStates.Stand;}
				 _jumpTime=0;
				CanJump=1; 
				 _Grounded=1;} }















