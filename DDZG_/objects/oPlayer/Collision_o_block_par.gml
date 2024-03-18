
///EVENTO COLISION CON PLATAFORMA PARENT
///update zfloor
instbelow = instance_place(x,y,o_block_par);
zfloor = instbelow.z;
///_blendColor=c_red;
depth=instbelow.depth-1;
 if  ((ActualPlayerState==PlayerStates.Jump) && z==instbelow.z) && _onPlatform==false   {  ActualPlayerState= PlayerStates.Stand _onPlatform=true;};
 maskInplatform=true;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 /*
 
var blockParentCollide; 
blockParentCollide= instance_place(instbelow.bbox_left-1,instbelow.y,o_block_par) or instance_place(instbelow.bbox_right+1,instbelow.y,o_block_par) or instance_place(instbelow.x,instbelow.bbox_top-1,o_block_par) or instance_place(instbelow.x,instbelow.bbox_bottom,o_block_par);
if blockParentCollide!=noone {show_debug_message("Sobre una plataforma, colisionas con otra plataforma");}


//show_debug_message(" Z_player = " + string(z));
//show_debug_message(" Z_Bloque = " + string(instbelow.z));

////






















