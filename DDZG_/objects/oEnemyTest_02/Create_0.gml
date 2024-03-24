/// @description Inserte aquí la descripción
spd = 2; /*xy speed*/
//z var

z = 0; /*z pos*/
zfloor = 0; /*z pos of floor beneath you*/
zspeed = 12; /*speed of jump*/
zgrav = 0; /*changes, applies downforce*/
zjump = false; /*if in air*/
_statePrint="ESTADO INICIAL";// Puede escribir su código en este editor

sectionId=noone;
x1=noone;
y1=noone;
x2=noone;
y2=noone;


////DISTANCES
distance_=0;
distanceMintoReact=400;
distanceMintoRun=240;
distanceMintoAttack=32;





_grid = mp_grid_create(0, 0, room_width / 32, room_height / 32, 32, 32);
_path=path_add();
mp_grid_add_instances(_path,oSolidBlock,1);

Xscale=-1;


vel_=2;
run_vel=choose(3,4,4.5);
hp=8;
sprite_index=sprEnemy_01_Stand;
enum enemie_state {stand_,walk_,run_,attack_,hurt_,death_}
actualEnemyState=enemie_state.stand_;
blendColor_=c_white;


attackDur=0;
DeathAnimDur=0;


HurtDur=0;
Inmunity=false;
InmunityTime=0;
InmunityTimeMax=30;
