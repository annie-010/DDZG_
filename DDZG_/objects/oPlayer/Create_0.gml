spd = 1; /*xy speed*/
_onplatformminusZ=false;
//z var
z = 0; /*z pos*/
zbodylimit=120;
zbodycol=0;
zfloor = 0; /*z pos of floor beneath you*/
zspeed = 8.5; /*speed of jump*/
zgrav = 0; /*changes, applies downforce*/
zjump = false; /*if in air*/
_statePrint="";
_movePad=true;
_onPlatform=false;
_distancesensor=2;
_BackDashtime=0;
_colz=0;
///_canJump=
_blendColor=c_white;

maskInplatform=false;
_alpha=1;
///_blendimagecolor=c_white;
_tangible=true;
_notangibleTime=0;
_cantadvanceplatform=false;
x_scale = image_xscale;







//////TO SHADOW
_Platformshadow_x=0;
_Platformshadow_y=0;




////////////////////////////////////







sectionId=noone;

physics_=true;
_vel=2;
enum PlayerStates 
{
	INACTIVE,Stand, Walk,Run, Jump,Hurt,Stairs,Attack_0,Attack_1,Attack_2,BackDash,Death, MenuOpen,
}

ActualPlayerState= PlayerStates.INACTIVE;
_statePrint="";
alarm[0]=30;

image_speed=1;


///////////CTRL_DELAYS
_leftRunDelay=5;
_leftRunOn=false;
_RightRunDelay=5;
_RightRunOn=false;



_Grounded=1;


AttackTimer=0;
DeathAnim=0;
AttackInit=false;
attackDelay=0;
LastAttackEjecuted=noone;
TimeDelayToCombo=30;
Shoot_00=0;



ActualAmmo_=sprPlayerAttackBlade_0;
ActualAmmo_1=sprPlayerAttackBlade_1;

instbelow=noone;


Hurt_time=0;





/*

_PlatformDepth=noone;
onPlatform=false;
CanJump=1 
_Grounded=0;


alarm[0]=30;
image_speed=1;





z=0;
_jumpSpeed=-8;
vsp=0;
_jumpTime=0;


////Shadow = instance_create_layer(x,y+1,"Instances",oShadow); Shadow._owner=id; 









////STAIRS FUNCTION
stair_init_y=noone;
stair_end_y=noone;


/////////////////
/////////////////
spd = 3; /*xy speed*/
//z var







///////////////////INVENTORY////////
_menuOpened=false;
////////INVENTORY
_actualInventory = {

_head : oPosRoomplayer.equiHeadPlayer,////noone,
_hand : oPosRoomplayer.equiChestPlayer,
_chest : oPosRoomplayer.equiHandPlayer,

}






