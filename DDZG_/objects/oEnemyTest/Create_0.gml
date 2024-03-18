spd = 2; /*xy speed*/
//z var
z = 0; /*z pos*/
zfloor = 0; /*z pos of floor beneath you*/
zspeed = 12; /*speed of jump*/
zgrav = 0; /*changes, applies downforce*/
zjump = false; /*if in air*/
_statePrint="";
maskColor=c_white;
_movePad=true;
_onPlatform=false;
_distancesensor=2;
vel=1.5;
velDefault=1.5;
physics_=true;
Hurtred=false;
HurtredDur=0;
HurtsndSound=true;
InertiaForce=0;
IntertiaSystem=false;
hitRest=false;
hitRestTime=0;
hp=15;
hpMin=0;
dmg=0;
damageShow=0;
_grid = mp_grid_create(0, 0, room_width / 32, room_height / 32, 32, 32);
_path=path_add();
mp_grid_add_instances(_path,oSolidBlock,1);



// Inherit the parent event
event_inherited();

active=true;

