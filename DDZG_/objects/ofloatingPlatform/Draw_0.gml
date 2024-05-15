/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

///draw_self();
draw_set_color(c_blue);





///draw_sprite(_sprmovefloorshadow,0,x,y);//+16);
//_thickness=16;
draw_sprite(sprite_index,0,x,y-(z-16));
////draw_set_alpha(0.3);
//var platformtop=(y-(z+16));
///draw_rectangle(x-32,_platformtop,x+32,_platformtop+64,false);
//draw_text(x-25,y+25,"DP : " + string(depth));
//draw_text(x-25,y+50,"ZP : " + string(z)); 
//draw_text(x-25,y+75,"TP : " + string(z-(_thickness))); //+ string(z));
//draw_set_alpha(1);
draw_set_color(c_white);

///draw_sprite(mask_index,0,x,y)


///DRAW DIRECTION AUTOMATIC FLOOR ("_toRight","_toUp","_toLeft","_toDown");

if _automaticfloor==true && _automaticfloordir!=noone {

switch _automaticfloordir {

case  "toRight" :  
draw_sprite(_sprautomaticmovedir,1,x,y-(z-16));
break;


case  "toUp" : 
draw_sprite(_sprautomaticmovedir,3,x,y-(z-16));
break;


case  "toLeft" : 
draw_sprite(_sprautomaticmovedir,4,x,y-(z-16));
break;


case  "toDown" : 
draw_sprite(_sprautomaticmovedir,2,x,y-(z-16));
break;

case  "tozUp" : 
draw_sprite(_sprautomaticmovedir,5,x,y-(z-16));
break;

}

}























