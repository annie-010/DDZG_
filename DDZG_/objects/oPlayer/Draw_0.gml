////@@ -1,104 +1,6 @@
/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


var drawInventory = keyboard_check_pressed(ord("B"));
if drawInventory {



}










///draw_set_color(c_red);
///draw_text(x-32,y+25,"DetphPlayer = " + string(depth));

///draw_set_color(c_blue);


///draw_rectangle((x-sprite_width/2),(z-sprite_height),(x+sprite_width/2),(z-sprite_height),true);


draw_set_alpha(1);
draw_sprite(sprPlayerShadowFront,image_index,x,y-zfloor);

//draw_set_alpha(0.3);
///draw_set_color(c_blue);
//draw_text(x,y+25,"Z_ =" + string(z));
//draw_rectangle(x-27,y-z-134,x+27,y-z+3,false);
//draw_set_color(c_white);
///draw_set_alpha(0.3);
///draw_sprite_ext(mask_index,0,x,y,1,1,0,c_white,0.5);
draw_set_alpha(1);
////draw_set_alpha(1);
//draw_text(x-25,y-128,"ACTUAL STATE = " + string(_statePrint));
//draw_text(x-25,y+128,"DASH TIME = " + string(_BackDashtime));
//draw_text(x,y,"ACTUAL DEPTH = " + string(depth));
///draw_text(x-64,y-150, "COL_Z = " + string(_colz));
///draw_text(x-64,y-150, "_HurtDur = " + string(Hurt_time));
///draw_sprite(mask_index,0,x,y);
if sectionId!=noone {

draw_set_color(c_red);
///draw_text(x,y,"SECTION ID = " + string(sectionId));
}
///if instbelow!=noone {show_debug_message("Listo para dibujar cuadrado perro.")}


/*

if (maskInplatform == true) && instbelow!=noone {
    var instbelow_plat;
    instbelow_plat = instance_place(x, y, o_block_par);
    
    if (instbelow_plat != noone) {
        draw_set_color(c_red);
        draw_rectangle(instbelow_plat.mask_index.bbox_left, instbelow_plat.mask_index.bbox_top, instbelow_plat.mask_index.bbox_right, instbelow_plat.mask_index.bbox_bottom, false);
        draw_set_color(c_white); // Restablecer el color de dibujo a blanco (o el color predeterminado)
    } else if instbelow_plat==noone {exit;}
}



/*










draw_self();
draw_set_font(fnt_debug)
draw_set_color(c_blue);
draw_text(x-25,y-158,"Depth Player" + string(depth));
draw_line(x-16,bbox_bottom-1,x+16,bbox_bottom);
draw_text(x-32,y-64,"Player_y = " + string(y));
////draw_sprite(mask_index,0,x,y);

//draw_text(x-25,y-128,"ACTUAL STATE = " + string(_statePrint));
draw_text(x-25,y-138,"_GROUNDED = " + string(_Grounded));
///draw_text(x-25,y-148,"JumpTime" + string(_jumpTime));
/*


draw_text(x-40,y-60,"AttackAnim; "+ string(AttackTimer))
draw_text(x-40,y+10,"Attack_Init"+ string(AttackInit))
draw_text(x-40,y+30,"LastAttackEjecuted"+ string(LastAttackEjecuted));
draw_text(x-40,y+50,"TimeDelayToCombo" + string(attackDelay));

/*

if (stair_init_y!=noone) && (stair_end_y!=noone) 
{
	draw_set_color(c_red);
	draw_text(x-50,y-170,"STAIR_INIT_Y =  " + string(stair_init_y));
	draw_text(x-50,y-185,"STAIR_END_Y = " + string(stair_end_y));
}



*/









draw_sprite_ext(sprite_index,image_index,x,y-z+3,image_xscale,1,0,_blendColor,_alpha);


if _actualInventory._head!=noone {

draw_text(x,y,"InventoryHead = " + string(_actualInventory._head));

draw_sprite_ext(_actualInventory._head._Spr,0,x,y-z,x_scale,1,0,c_white,1);

draw_sprite_ext(sprite_index,image_index,x,y-z+3,image_xscale,1,0,_blendColor,_alpha);

draw_sprite_ext(_actualInventory._head._Spr,1,x,y-z,x_scale,1,0,c_white,1);
} if _actualInventory==noone {
	draw_sprite_ext(sprite_index,image_index,x,y-z+3,image_xscale,1,0,_blendColor,_alpha);
}






