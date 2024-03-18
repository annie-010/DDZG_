// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_depth_3d_z() {

argument[0] = global.z; 

//z_axis = -y;

//FOR STATIC SPRITES ONLY LIKE THE PLAYER AND ENEMIES
//N
if (global.z >= 355 and global.z <= 360)
{
  z_axis = - y;
}
if (global.z >= 0 and global.z < 5)
{
    z_axis = - y;
}
//NE
if (global.z >= 5 and global.z < 85)
{
    z_axis = - y + x;
}

//E
if (global.z >= 85 and global.z < 95)
{
    z_axis = x;
}
//SE
if (global.z >= 95 and global.z < 175)
{
    z_axis = x + y;
}
//S
if (global.z >= 175 and global.z < 185)
{
    z_axis = y;
}
//SW
if (global.z >= 185 and global.z < 265)
{
    z_axis = y - x;
}
//W
if (global.z >= 265 and global.z < 275)
{
    z_axis = -x;
}
//NW
if (global.z >= 275 and global.z < 355)
{
    z_axis = -x - y;
}

//update depth WITH LOWERED Z WHEN ON TOP OF OBJECTS IF YOU DONT DO HALF CLIPPING WILL SOMETIMES OCCUR
depth = z_axis - z - 1;

//numbers locked in at 0-360
if (global.z < 0)
{
global.z = 360;
}
if (global.z > 360)
{
global.z = 0;
}

//global cam angle
view_angle[0] = global.z 



}