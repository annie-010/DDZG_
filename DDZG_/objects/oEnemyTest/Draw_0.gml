draw_sprite(sprPlayerShadowFront,image_index,x,y-z);

 switch (Hurtred) {
 case false: draw_sprite_ext(sprite_index,image_index,x,y-z,image_xscale,1,0,c_white,0.5); break;
 case true: draw_sprite_ext(sprite_index,image_index,x,y-z,image_xscale,1,0,c_red,0.5); break;}



///draw_sprite_ext(sprite_index,image_index,x,y-z,image_xscale,1,0,c_white,1);
draw_set_color(c_white);
draw_text(x,y,"Z = " + string(z));
draw_text(x,y+25,"ACTUAL DEPTH = " + string(depth));
draw_text(x,y-25,"ACTUAL HP = " + string(hp));
draw_sprite(mask_index,0,x,y-z);
draw_text(x,y-50,"ACTUAL HURTRED_DUR = " + string(HurtredDur));	
		
///HurtredDur
		




		
/*

if _grid!=noone {
draw_set_alpha(0.3);
mp_grid_draw(_grid);
draw_set_alpha(1);

}
















// Inherit the parent event
event_inherited();

