
///EVENTO COLISION CON PLATAFORMA PARENT
///update zfloor



var _instbelow = instance_place(x,y,o_block_par);
if z>=_instbelow.z {
zfloor=_instbelow.z;
depth=_instbelow.depth-1;
}

if (ActualPlayerState=PlayerStates.Jump) && z==_instbelow.z && _onPlatform==false {ActualPlayerState=PlayerStates.Stand _onPlatform=true;}
else if z<_instbelow.z && zbodycol<_instbelow.z-(_instbelow._thickness) {depth=_instbelow.depth+1;
_blendColor=make_color_rgb(156,178,199);}




/*

var _instbelow = instance_place(x,y,o_block_par);
if z>_instbelow.z or z == _instbelow.z {

zfloor = _instbelow.z;
///_blendColor=c_red;
depth=_instbelow.depth-1;
 if  ((ActualPlayerState==PlayerStates.Jump) && z==_instbelow.z) && _onPlatform==false   {  ActualPlayerState= PlayerStates.Stand _onPlatform=true;};
 maskInplatform=true;
} else if z<_instbelow.z {
///show_debug_message("PRUEBA DE COLISION, POR DEBAJO DE LA PLATAFORMA");
///image_blend=c_red;
depth=_instbelow.depth+1;
_blendColor=make_color_rgb(156,178,199);
}





 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 /*
 
var blockParentCollide; 
blockParentCollide= instance_place(instbelow.bbox_left-1,instbelow.y,o_block_par) or instance_place(instbelow.bbox_right+1,instbelow.y,o_block_par) or instance_place(instbelow.x,instbelow.bbox_top-1,o_block_par) or instance_place(instbelow.x,instbelow.bbox_bottom,o_block_par);
if blockParentCollide!=noone {show_debug_message("Sobre una plataforma, colisionas con otra plataforma");}


//show_debug_message(" Z_player = " + string(z));
//show_debug_message(" Z_Bloque = " + string(instbelow.z));

////






















